import 'dart:async';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

import '../../models/file_upload_result_model.dart';

abstract class FileRemoteDataSource {
  Stream<FileUploadResultModel> uploadFile(
    Uint8List file,
    final List<String> path,
  );
}

class FileRemoteDataSourceImpl implements FileRemoteDataSource {
  final FirebaseStorage storage;

  FileRemoteDataSourceImpl(this.storage);
  @override
  Stream<FileUploadResultModel> uploadFile(Uint8List file, List<String> path) {
    var storageRef = storage.ref();
    for (final p in path) {
      storageRef = storageRef.child(p);
    }
    final controller = StreamController<FileUploadResultModel>();
    final uploadTask = storageRef.putData(file);
    uploadTask.snapshotEvents.listen(
      (event) {
        double progress = event.bytesTransferred / event.totalBytes;
        controller.add(FileUploadResultModel.progress(progress));
      },
      onError: (event) {
        controller.add(FileUploadResultModel.error(event.toString()));
        controller.close();
      },
      onDone: () async {
        await uploadTask.whenComplete(() => null);
        try {
          final url = await uploadTask.snapshot.ref.getDownloadURL();
          controller.add(FileUploadResultModel.success(url));
        } catch (e) {
          controller.add(
            FileUploadResultModel.error(
              'Failed to get file url: ${e.toString()}',
            ),
          );
        }
        controller.close();
      },
    );
    return controller.stream;
  }
}

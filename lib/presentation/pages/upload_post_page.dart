import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/route/routes.dart';
import '../../core/utils/app_utils.dart';
import '../../core/utils/utils.dart';
import '../bloc/upload/upload_bloc.dart';
import '../bloc/upload_post/upload_post_bloc.dart';
import '../widgets/app_page.dart';

class UploadPostPage extends StatefulWidget {
  const UploadPostPage({super.key});

  @override
  State<UploadPostPage> createState() => _UploadPostPageState();
}

class _UploadPostPageState extends State<UploadPostPage> {
  final TextEditingController _captionController = TextEditingController();
  @override
  void dispose() {
    _captionController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    context.read<UploadPostBloc>().add(
      UploadPostEvent.postSubmitted(_captionController.text),
    );
  }

  void _pickImage(BuildContext context) async {
    Uint8List? image = await pickImage(ImageSource.gallery, context);
    final bloc = context.read<UploadPostBloc>();
    if (image == null) {
      bloc.add(UploadPostEvent.postFileSelectionCancelled());
    } else {
      bloc.add(UploadPostEvent.postFileSelected(image));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UploadPostBloc, UploadPostState>(
        listener: (context, state) {
          if (state.pickImage) {
            _pickImage(context);
          }
          if (state.post != null) {
            final uploadBloc = context.read<UploadBloc>();
            if (!uploadBloc.state.canUpload) {
              AppUtils.showInfoMessage(
                context,
                'Another post is already uploading. Please try after sometime',
              );
            } else {
              uploadBloc.add(UploadEvent.upload(state.post!));
              context.go(Routes.home);
            }
            return;
          }
          if (state.notification == null) return;
          AppUtils.showNotification(context, state.notification!);
          if (!state.notification!.isError) context.go(Routes.home);
        },
        builder: (context, state) => AppPage(
          isLoading: state.isLoading,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (state.file == null)
                  IconButton(
                    icon: Icon(Icons.add_a_photo, size: 50),
                    onPressed: () => _pickImage(context),
                  )
                else
                  Column(
                    children: [
                      Image.memory(state.file!, height: 200),
                      TextButton(
                        onPressed: () => context.read<UploadPostBloc>().add(
                          UploadPostEvent.changePostFile(),
                        ),
                        child: Text('Change Photo'),
                      ),
                    ],
                  ),
                if (state.file != null) ...[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _captionController,
                      decoration: InputDecoration(
                        hintText: 'Write a caption...',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _submit(context),
                    child: Text('Post Now'),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

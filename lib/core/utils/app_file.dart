import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class AppFile extends Equatable {
  final Uint8List bytes;
  final String path;
  final int size; // in bytes

  const AppFile({required this.bytes, required this.path, required this.size});

  @override
  List<Object?> get props => [bytes, path, size];
}

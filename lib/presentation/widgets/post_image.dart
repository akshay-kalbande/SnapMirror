import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostImage extends StatelessWidget {
  final String imageUrl;
  const PostImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 60 / 40,
      // child: Image.network(widget.snap['imageUrl'], fit: BoxFit.cover),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fadeInDuration: const Duration(milliseconds: 100),
        memCacheWidth: 900,
        memCacheHeight: 600,
        fit: BoxFit.cover,
        // placeholder: (context, url) => Shimmer.fromColors(
        //   baseColor: const Color(0xFF1A1A1A),
        //   highlightColor: const Color(0xFF2C2C2C),
        //   period: const Duration(milliseconds: 1500),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       color: Colors.black,
        //       borderRadius: BorderRadius.circular(12),
        //     ),
        //   ),
        // ),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white38,
          child: Container(color: Colors.white),
        ),
        // placeholder: (context, url) =>
        //     Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) {
          print('Error: ${error.toString()}');
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              const Icon(Icons.error, color: Colors.white38),
              Text(error.toString(), textAlign: TextAlign.center),
            ],
          );
        },
      ),
    );
  }
}

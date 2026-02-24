import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileImage extends StatelessWidget {
  final String profileImageUrl;
  final bool isSmall;
  const ProfileImage({
    super.key,
    required this.profileImageUrl,
    this.isSmall = true,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: isSmall ? 16 : 32,
      backgroundColor: Colors.grey[200],
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: profileImageUrl,
          width: 64,
          height: 64,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 50),
          memCacheWidth: 100,
          memCacheHeight: 100,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.white24,
            highlightColor: Colors.white38,
            child: Container(color: Colors.white),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}

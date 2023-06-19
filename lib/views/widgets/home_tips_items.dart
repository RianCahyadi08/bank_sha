import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeTipsItems extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;

  const HomeTipsItems(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 176,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imageUrl,
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}

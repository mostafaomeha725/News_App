import 'package:flutter/material.dart';

class TitleImage extends StatelessWidget {
  const TitleImage(
      {super.key, required this.image, required this.text, this.onTap});
  final String image;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(image: AssetImage(image)),
                Positioned(
                  child: Container(
                    child: Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

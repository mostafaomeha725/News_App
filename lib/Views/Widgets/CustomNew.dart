import 'package:flutter/material.dart';
import 'package:newsapp/Views/Models/NewModel.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomNew extends StatelessWidget {
  const CustomNew({super.key, required this.mylist});
  final NewModel mylist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            if (mylist.url != null) {
              launch(mylist.url!);
            } else {
              showSnackbar(context, 'The Url Image not Found');
            }
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: mylist.image == null
                  ? Image.asset('assets/entertaiment.avif')
                  : Image.network(
                      mylist.image!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
        ),
        Text(
          mylist.title ?? '',
          // textDirection: TextDirection.rtl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        Text(
          mylist.description ?? '',
          // textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}

void showSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 2),
    ),
  );
}

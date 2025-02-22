import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/utils/functions/Launch_custom_url.dart';
import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatefulWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookActions> createState() => _BookActionsState();
}

class _BookActionsState extends State<BookActions> {
    bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            topLeft: 20,
            topRight: 0,
            bottomLeft: 20,
            buttomRight: 0,
            backgroundColor: Colors.white,
            colorTextButton: Colors.black,
            textButton: 'Free',
          ),
        ),
        Expanded(
          child: CustomButton(
            onpressed: () async {
              if (widget.bookModel.volumeInfo.previewLink != null) {
                setState(() {
                  isLoading = true;
                });
                _showLoadingDialog(
                    context); // ⬅️ يعرض المؤشر على الشاشة بالكامل

                await LaunchCustomUrl(
                    context, widget.bookModel.volumeInfo.previewLink);
                    setState(() {
                  isLoading = false;
                });

                Navigator.pop(context); // ⬅️ يغلق المؤشر بعد فتح الرابط
              }
            },
            topLeft: 0,
            topRight: 20,
            bottomLeft: 0,
            buttomRight: 20,
            backgroundColor: Color.fromARGB(255, 98, 73, 45),
            colorTextButton: Colors.white,
            textButton: isLoading
                ? "Loading..."  // يظهر أثناء التحميل
                : getText(widget.bookModel),
          ),
        )
      ],
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // يمنع إغلاق النافذة بالضغط خارجها
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 70, 50, 43),
          ),
        );
      },
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Available";
    } else {
      return "Preview Free";
    }
  }
}

import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key, required this.onSaved});
  final Function(int count) onSaved;

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  var count = 1;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Add to cart"),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.cancel),
          )
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     GestureDetector(
          //       onTap: () {
          //         setState(() {
          //           count++;
          //         });
          //       },
          //       child: Container(
          //         height: 40,
          //         width: 40,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8),
          //             color: Colors.grey.withOpacity(0.5)),
          //         child: Icon(Icons.add),
          //       ),
          //     ),
          //     SizedBox(width: 20),
          //     Text(count.toString(),
          //         style: TextStyle(
          //             fontSize: 20,
          //             color: Colors.black,
          //             fontWeight: FontWeight.w600)),
          //     SizedBox(width: 20),
          //     GestureDetector(
          //       onTap: () {
          //         setState(() {
          //           if (count != 0) {
          //             count--;
          //           }
          //         });
          //       },
          //       child: Container(
          //         height: 40,
          //         width: 40,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8),
          //             color: Colors.grey.withOpacity(0.5)),
          //         child: Icon(Icons.remove),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              if (count != 0) {
                widget.onSaved(count);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Count should be more than 0!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

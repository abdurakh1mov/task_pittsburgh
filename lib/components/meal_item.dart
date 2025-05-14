import 'package:flutter/material.dart';

class MealItem extends StatefulWidget {
  final String? strMeal;
  final String? strMealThumb;
  final String? idMeal;
  final bool isHome;
  final VoidCallback rootTapped;
  final VoidCallback onTap;
  const MealItem({
    super.key,
    required this.rootTapped,
    required this.isHome,
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
    required this.onTap,
  });

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  var count = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.rootTapped();
      },
      child: Container(
          padding: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black.withOpacity(0.24),
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(widget.strMealThumb ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    widget.strMeal ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              widget.isHome
                  ? GestureDetector(
                      onTap: widget.onTap,
                      child: Container(
                        margin: EdgeInsets.only(left: 12, right: 12),
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "+ 20 000 монет",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.withOpacity(0.5)),
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(count.toString(),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (count != 0) {
                                count--;
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.withOpacity(0.5)),
                            child: Icon(Icons.remove),
                          ),
                        ),
                      ],
                    ),
            ],
          )),
    );
  }
}

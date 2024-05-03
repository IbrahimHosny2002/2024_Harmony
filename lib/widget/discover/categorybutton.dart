import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final List<Color> gradientColors;

  const CategoryButton({
    Key? key,
    required this.label,
    required this.imagePath,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius:
        BorderRadius.all(Radius.circular(10.0)), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:4.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'workSans',
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(

              imagePath,
              width: 47,
              height: 45,
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}
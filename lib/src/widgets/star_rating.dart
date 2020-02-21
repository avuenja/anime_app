import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final void Function(int index) onChanged;
  final int rating;

  StarRating({this.rating = 0, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 8,
        right: 5,
      ),
      child: IconTheme(
        data: IconThemeData(
          color: Colors.amber,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return InkWell(
              child: Icon(
                index < rating ? Icons.star : Icons.star_border,
              ),
              onTap: onChanged != null
                  ? () {
                      onChanged(rating == index + 1 ? index : index + 1);
                    }
                  : null,
            );
          }),
        ),
      ),
    );
  }
}

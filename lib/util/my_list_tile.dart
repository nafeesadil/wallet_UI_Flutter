import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;

  const MyListTile({Key? key, required this.iconImagePath, required this.tileTitle, required this.tileSubTitle,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //icon image
        Row(
          children: [
            Container(
              height: 70,
              child: Image.asset(iconImagePath),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),

              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(tileTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    //color: Colors.grey.shade800,
                  ),
                ),

                SizedBox(height:8),
                Text(tileSubTitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),],
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}

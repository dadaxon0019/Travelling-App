import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  bool isFavorite = true;

  final String nameTrips;

   ListItem({Key? key, required this.nameTrips}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              isFavorite = !isFavorite;
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 34,
              decoration: BoxDecoration(
                  color: isFavorite ? Color(0xff263238) : Color(0xFF5EDFFF),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Text(nameTrips,
                  style: TextStyle(
                      color: isFavorite ? Colors.white : Color(0xff263238),
                      fontSize: 14,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          ),
        ],
      );
  }
}

class ChangeButtons extends StatefulWidget {
  const ChangeButtons({Key? key}) : super(key: key);

  @override
  State<ChangeButtons> createState() => _ChangeButtonsState();
}

class _ChangeButtonsState extends State<ChangeButtons> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

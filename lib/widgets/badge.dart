import 'package:flutter/material.dart';

class BadgeFile extends StatelessWidget {
  const BadgeFile({super.key, 
    //required Key key,
    //required this.child,
    required this.value,
    required this.color,
  });

 // final Widget child;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //child,
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding:const EdgeInsets.all(2.0),
              // color: Theme.of(context).accentColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:  Theme.of(context).colorScheme.secondary 
              ),
              constraints:const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

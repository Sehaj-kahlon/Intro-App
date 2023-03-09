import "package:flutter/material.dart";

class options extends StatelessWidget {
  const options({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Flexible(child: Container(), flex: 0),
        
      ]),
    ));
  }
}

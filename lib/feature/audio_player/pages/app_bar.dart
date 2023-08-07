import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState(sersch: "");
}

class _CustomAppBarState extends State<CustomAppBar> {
 final String sersch;

  _CustomAppBarState({ required this.sersch});
  @override
  Widget build(BuildContext context) {
    if(sersch.isEmpty)
    {
    return   Scaffold(
      appBar: AppBar(  actions:[OutlinedButton(onPressed: (){}, child: const Icon(Icons.one_x_mobiledata))] )//:actions: [OutlinedButton(onPressed: (){}, child: Icon(Icons.one_x_mobiledata))]  )
    );
    
  }
  else
  {
     return   Scaffold(
      appBar: AppBar(  actions:[OutlinedButton(onPressed: (){}, child: const Icon(Icons.search))] )//:actions: [OutlinedButton(onPressed: (){}, child: Icon(Icons.one_x_mobiledata))]  )
    );
    
  }}
}
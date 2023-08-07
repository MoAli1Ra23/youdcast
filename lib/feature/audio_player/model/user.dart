import 'package:flutter/material.dart';

class User extends ChangeNotifier
{

 String name="----------";
 String age="0000";
 int  x=0;
void updatename()
{
  name="ali";
  notifyListeners();
}

  
void updateagr()
{
x++;
age=x.toString();
notifyListeners();
}

  
}
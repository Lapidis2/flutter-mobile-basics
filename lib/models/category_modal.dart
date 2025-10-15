import 'package:flutter/material.dart';

class CategoryModal {
  final String name;
  final String iconPath;
  final Color boxColor;

  CategoryModal({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
 static  List<CategoryModal> getCategories() {
    List<CategoryModal> categories = [];
    categories.add(
      CategoryModal(name: "Salad", 
      iconPath: 'assets/icons/plate.svg', 
      boxColor: Color(0xff92A3FD)),
    );
       categories.add(
      CategoryModal(name: "cake", 
      iconPath: 'assets/icons/pancakes.svg', 
      boxColor: Color(0xffC58BF2)),
    );
       categories.add(
      CategoryModal(name: "Pie", 
      iconPath: 'assets/icons/pie.svg', 
      boxColor: Color(0xff92A3FD)),
    );
       categories.add(
      CategoryModal(name: "Smothie", 
      iconPath: 'assets/icons/orange-snacks.svg', 
      boxColor: Color(0xffC58BF2)),
    );

    return categories;
  }
}

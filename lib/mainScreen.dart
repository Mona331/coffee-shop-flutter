import 'package:coffee_shop/colors/colors.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Home(),
    Center(child: Text('Favorite')),
    Center(child: Text('Cart')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.ofwhite,
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

         items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined, color: AppColors.brownblack),
            activeIcon: Icon(Icons.home, color: AppColors.primary),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: AppColors.brownblack),
            activeIcon: Icon(Icons.favorite, color: AppColors.primary),
            label: 'Favorite',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: AppColors.brownblack,
            ),
            activeIcon: Icon(Icons.shopping_bag, color: AppColors.primary),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: AppColors.brownblack),
            activeIcon: Icon(Icons.person, color: AppColors.primary),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

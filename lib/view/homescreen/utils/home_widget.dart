import 'package:flutter/material.dart';

import '../../../model/utils/const/colors.dart';
import '../../../model/utils/const/image_name.dart';

class HomeWidget {
  PreferredSizeWidget appbar({required String title}) {
    return AppBar(
      backgroundColor:
          CustomColor.darksecondarycolor, // Set app bar background color
      title: Text(
        title,
        style: const TextStyle(color: Colors.white), // Set app bar title color
      ),
      centerTitle: true, // Center align the title
      elevation: 0, // Remove elevation
      iconTheme: const IconThemeData(color: Colors.white), // Set icon color
    );
  }

  Widget drawer(
      {required double screenHeight,
      required BuildContext context,
      required int key}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10), // Set the border radius
      child: Drawer(
        elevation: 4,
        child: Container(
          color: CustomColor.darksecondarycolor, // Set drawer background color
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color:
                      CustomColor.darksecondarycolor, // Header background color
                ),
                child: Image.asset(
                  ImagePath.logo,
                  height: screenHeight * 2,
                ),
              ),
              buildListTile(
                  icon: Icons.dashboard,
                  title: 'Dashboard',
                  context: context,
                  isSelected: key == 0),
              buildListTile(
                  icon: Icons.person,
                  title: 'Owners',
                  context: context,
                  isSelected: key == 1),
              buildListTile(
                  icon: Icons.request_page,
                  title: 'Requests',
                  context: context,
                  isSelected: key == 2),
              buildListTile(
                  icon: Icons.person,
                  title: 'Users',
                  context: context,
                  isSelected: key == 3),
              buildListTile(
                  icon: Icons.logout,
                  title: 'Logout',
                  context: context,
                  isSelected: key == 4),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(
      {required IconData icon,
      required String title,
      void Function()? onTap,
      required BuildContext context,
      required bool isSelected}) {
    return ListTile(
      leading: Icon(icon,
          color: isSelected ? Colors.blue : Colors.white), // Set icon color
      title: Text(
        title,
        style: TextStyle(
            color: isSelected
                ? Colors.blue
                : Colors.white), // Set title text color
      ),
      onTap: () {
        Navigator.of(context).pop(); // Close the drawer
        // Perform other actions
      },
    );
  }
}

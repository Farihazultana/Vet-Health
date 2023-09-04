     import 'package:flutter/material.dart';

class MyNavDrawer extends StatelessWidget {
  const MyNavDrawer({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    child: CircleAvatar(
                        radius: 52,
                        child: Image.asset(
                            'assets/images/avatar-default-circle.png'))),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Center(child: Text('First Name')),
                )
              ],
            ),
          ),
          SizedBox(
            height: 130,
            child: ListTile(
              leading: const Icon(
                Icons.home,
                color: Color.fromARGB(255, 10, 69, 117),
              ),
              title: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Color.fromARGB(255, 10, 69, 117),
            ),
            title: const Text(
              'Share',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.feedback,
              color: Color.fromARGB(255, 10, 69, 117),
            ),
            title: const Text(
              'Feedback',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.star,
              color: Color.fromARGB(255, 10, 69, 117),
            ),
            title: const Text(
              'Rate Us',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.list,
              color: Color.fromARGB(255, 10, 69, 117),
            ),
            title: const Text(
              'Version: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Color.fromARGB(255, 10, 69, 117),
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

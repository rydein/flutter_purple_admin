import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 260,
      child: Column(
        children: [
          SideBarProfile(
            name: 'Daisuke UETA',
            label: 'Developer',
            image: AssetImage('asset/images/profile.png'),
          ),
          const SideBarItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
          ),
          const SideBarItem(
            title: 'Icons',
            icon: Icons.image,
          ),
          const SideBarItem(
            title: 'Forms',
            icon: Icons.list,
          ),
          const SideBarItem(
            title: 'Charts',
            icon: Icons.analytics,
          ),
          const SideBarItem(
            title: 'Tables',
            icon: Icons.table_chart,
          ),
          const SideBarItem(
            title: 'Sample Pages',
            icon: Icons.explore,
          ),
        ],
      ),
    );
  }
}

class SideBarProfile extends StatelessWidget {
  final String name;
  final String label;
  final ImageProvider image;

  const SideBarProfile({
    Key? key,
    required this.name,
    required this.label,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 20,
      ),
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: image,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      trailing: Icon(
        Icons.check_box_sharp,
        color: Color.fromRGBO(97, 204, 181, 1),
        size: 16,
      ),
    );
  }
}

class SideBarItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const SideBarItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListTile(
        title: Text(title),
        trailing: Icon(icon, size: 18),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sample/list/models/user.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  List<UserModel> userList = [
    UserModel("Cristiano", "Ronaldo", 30),
    UserModel("Zinedine", "Zidane", 40),
    UserModel("Sergio", "Agüero", 35),
    UserModel("Roberto", "Carlos", 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(userList[index].name),
          subtitle: Text(userList[index].lastName),
          trailing: Icon(Icons.chevron_right),
          tileColor: Colors.grey.shade50,
          onTap: () => print("Clicked ${userList[index].name}"),
        ),
        separatorBuilder: (context, index) => const Divider(height: 10),
        itemCount: userList.length,
      ),
    );
  }
}

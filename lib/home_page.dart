import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'My Contact',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 9, 15, 0),
            child: CircleAvatar(
              backgroundImage: AssetImage('Assets/Untitled-2.jpg'),
              radius: 25,
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search by name or number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            )),
      ),
      body: SafeArea(
        child: ListView(
          children:const [ 
            Padding(
              padding:  EdgeInsets.only(left: 16),
              child: Text('Recents',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.w600
              ),),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('Assets/828.jpg'),
                ),
                title: Text('MaaAdjoa'),
                subtitle: Text('+233 247 187 804'),
                trailing: Icon(Icons.more_horiz),
            )
          ],
        ),
      ),
    );
  }

  
}

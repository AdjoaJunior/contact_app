import 'dart:js';

import 'package:contact_application/contact_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String,String>> data =[
     {
      "name":"Regan Kwame",
       "phone":"+233 333 444 567",
       "email":"someone@example.com",
       "country":"Ghana",
       "region":"Ashanti",
     },
     {
       "name":"Dede Ayew",
       "phone":"+235 333 444 567",
       "email":"someone@example.com",
       "country":"Nigeria",
       "region":"Abuja"
     },
      {
       "name":"Austin Baby",
       "phone":"+567 333 444 567",
       "email":"someone@example.com",
       "country":"Mali",
       "region":"Bamako"
     },
     {
      "name":"Austin Baby",
       "phone":"+277 333 444 567",
       "email":"someone@example.com",
      "country":"Ethiopia",
      "region":"Addis Ababa"
     },
     {
       "name":"Austin Baby",
       "phone":"+333 333 444 567",
       "email":"someone@example.com",
       "country":"Ethiopia",
       "region":"Addis Ababa"
     },
     {
       "name":"Austin Baby",
       "phone":"+234 333 444 567",
       "email":"someone@example.com",
      "country":"Ghana",
       "region":"Volta"
     },
    ];

  

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
              color: Colors.black, fontSize: 20,
               fontWeight: FontWeight.w600),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
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
          shrinkWrap: true,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Recents',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(BuildContext context){
                        return const ContactView();
                      })
                      );

                  },
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('Assets/828.jpg'),
                  ),
                  title:const Text( 
                    'Maa Adjoa',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  subtitle:const Text('+233 247 187 804'),
                  trailing:const Icon(
                    Icons.more_horiz,
                    size: 28,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "contacts",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "A",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                        return const ContactView();
                      }));
                    },
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('Assets/828.jpg'),
                    ),
                    title:const Text(
                      'Maa Adjoa',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    subtitle:const Text('+233 247 187 804'),
                    trailing:const Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: 2
                ),
                 const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "B",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return  ListTile(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                        return const ContactView();
                      }));
                    }, 
                    leading:const CircleAvatar(
                      backgroundImage: AssetImage('Assets/828.jpg'),
                    ),
                    title:const Text(
                      'Maa Adjoa',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    subtitle:const Text('+233 247 187 804'),
                    trailing:const Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: 2)
          ],
        ),
        ),
         floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,size: 30,),
        onPressed: () {},
        backgroundColor: Colors.black,
      )
      );
      
        
    
  }
}

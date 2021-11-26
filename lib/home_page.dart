

import 'dart:html';
import 'dart:js';

import 'package:contact_application/contact_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grouped_list/grouped_list.dart';
import 'contact_model.dart';

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
      "name":"Osborn Gee",
       "phone":"+277 333 444 567",
       "email":"someone@example.com",
      "country":"Ethiopia",
      "region":"Addis Ababa"
     },
     {
       "name":" Baby Mama",
       "phone":"+333 333 444 567",
       "email":"someone@example.com",
       "country":"Ethiopia",
       "region":"Addis Ababa"
     },
     {
       "name":"Austina Dee",
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
                        return  ContactView(contact: Contact(
                          name: "Adjoa Agyemang",
                          phone: '+233 247 18 7804',
                          email: 'estagyemang@gmail.com',
                          country: 'london',
                          region: 'Cape Town'
                        ),);
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
            GroupedListView<Map<String,String>,String> (
              shrinkWrap: true,
              elements: data,
             groupBy: (element) =>
              element["name"].toString().substring(0,1),
              groupSeparatorBuilder: (String groupByValue)=> SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Text(groupByValue,
                  textAlign: TextAlign.right,
                  style:const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String,String> element){
                Contact contact = Contact.fromJson(element);
                return Column(children: [
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return ContactView(contact:contact);
                      }
                      ),
                      );
                    },
                    leading:const CircleAvatar(
                      backgroundImage:  AssetImage('assets/828.jpg'),
                    ),
                    title: Text('${element["name"]}',
                    style:const TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                    subtitle: Text('${element["phone"]}'),
                  ),
                  const Divider(),
                ],
                );
              },
               itemComparator:   (item1,item2)=>
               item1['name']!.compareTo(item2['name']!),
            ),

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

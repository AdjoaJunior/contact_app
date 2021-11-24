import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Contacts",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),
        ),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('Assets/d.jpg'),
            radius: 75,
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              'Adjoa Animah',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Center(
            child: Text(
              'Accra Ghana',
              style: TextStyle(fontSize: 19),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: const Color(0xffE5E5E5),
            child: Column(children: [
              ListTile(
                title: const Text(
                  'Mobile',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text('+247 333 44 56777'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.chat,
                        color: Colors.black,
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder()),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder(),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text('estagyemang7804@gmail.com'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder()),
                    ),
                  ],
                ),
              ),
              const ListTile(
                title: Text(
                  'Group',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text('Klifesty'),
              )
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Account Linked',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
          Container(
            color: const Color(0xffE5E5E5),
            child: Column(
              children: [
                ListTile(
                  title:const Text(
                    'Telegram',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  trailing: Image.asset('assets/vg.png'),
                ),
             const   SizedBox(height: 10,),
                 ListTile(
                  title:const Text(
                    'WhatsApp',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  trailing: Image.asset('assets/logo-1.png'),
                ),
              ],
            ),
          ),
           const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'More Options',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
          Container(
            color: const Color(0xffE5E5E5),
            child: Column(children:const [
              ListTile(title: Text('Share Contact',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              ),
              ),
              ListTile(title: Text('QR Code',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              ),
              ),
            ],),
          )
        ],
      ),
    );
  }
}

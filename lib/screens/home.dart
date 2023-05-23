import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:flutter/material.dart';

import 'package:test_ui/properties/customtabbar.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_view();
}

class _home_view extends State<home_view> {
  final int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: Image.asset("login_logo.png"),
        title: const Text("PANTIFY",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
        actions: [Row(
          children: const[

            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Icon(Icons.notification_add_outlined,color: Colors.black,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Icon(Icons.drag_handle,color: Colors.black,),
            )
          ],
        )],
        backgroundColor: Colorselect().transparentcolor,
        elevation: 0.0,
      ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Stack(children: [
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image:const DecorationImage(
                              image: AssetImage('home_img.png'),
                              fit: BoxFit.cover)),
                      width: 330,
                      height: 190,
                    ),
                  ),
          const Positioned(
              top: 40,
              left: 22,
              child: Text("There’s a Plant\nfor everyone",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),)),

          const Positioned(
              top: 120,
              left: 22,
              child: Text("Get your 1st plant\n@ 40% off",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600,height: 1.5),))


                  ],),
                  
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(children: [
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 100, left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              suffixIcon: Image.asset(
                                'Vector_icn.png',
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: InkWell(
                        child: Container(
                         child: Image.asset('search_side.png'),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade500),
                              borderRadius: BorderRadius.circular(20)),
                          width: 57,
                          height: 55,
                        ),
                      ),
                    )
                  ]),

                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.3,
                  // ),
                  Expanded(child: ProfileTabBarNavigation()),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colorselect().favcolor,
          currentIndex: _currentindex,
          
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
              const AssetImage('home1.png'),
                color: Colorselect().black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('fav1.png'),
                color: Colorselect().black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
            const AssetImage('cart.png'),
                color: Colorselect().black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
            const  AssetImage('acc.png'),
                color: Colorselect().black,
              ),
              label: '',
            ),
          ],
          onTap: (Index) {
            setState(() {
              _currentindex;
            });
          },
        ));
  }
}

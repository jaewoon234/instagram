import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appbar',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        //scaffoldBackgroundColor: Colors.black,

      ),
      home: MyPage(),

    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title: Text('dcu_go_u'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            print('is clicked');
          },
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: (){
              print('is clicked');
            },
          )
        ],
      ),
      body:Mynext(),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: '',),
          NavigationDestination(
            icon: Icon(Icons.add_box),
            label: '',),
          NavigationDestination(
            icon: Icon(Icons.movie),
            label: '',),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: '',),
        ],
      ),
    );
  }
}

class Mynext extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child:SingleChildScrollView(
    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 2.0, 0.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dcu.png'),
                    radius: 50.0,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(90, 20, 2, 10),
                      child: Container(
                        child: Column(
                          children: [
                            Text('28',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                            Text('게시물'),
                          ],
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(60, 20, 0, 10),
                        child: Container(
                          child: Column(
                            children: [
                              Text('369',
                              style: TextStyle(
                                fontSize: 20,
                              ),),
                              Text('팔로워'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(60, 20, 0, 10),
                        child: Container(
                          child: Column(
                            children: [
                              Text('18',
                              style: TextStyle(
                                fontSize: 20
                              ),),
                              Text('팔로잉'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('대구가톨릭대학교 소프트웨어융합대학'),
                    Text('제3대 소프트웨어융합대학 학생회 GO:U 💙'),
                  ],
                )
              ],
            ),)
          ),
          Container(
            child: Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(child: CircleAvatar(backgroundImage: AssetImage('assets/images/friend.jpeg'),),),
                        Container(child: CircleAvatar(backgroundImage: AssetImage('assets/images/freind2.png'),),padding: EdgeInsets.fromLTRB(20, 0, 0, 0),),
                        Container(child: CircleAvatar(backgroundImage: AssetImage('assets/images/friend3.png'),),padding: EdgeInsets.fromLTRB(40, 0, 0, 0),),
                      ],

                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text.rich(TextSpan(text: '', children: [
                      TextSpan(text: 'dks.qudeh', style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: '님,',style: TextStyle(fontWeight: FontWeight.normal)),
                            TextSpan(text: 'jse_sns', style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: '님',style: TextStyle(fontWeight: FontWeight.w100)),
                                  TextSpan(text: '외 13명', style: TextStyle(fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(text: '이 팔로우합니다.',style: TextStyle(fontWeight: FontWeight.w100)),
                                      ])
                                ])
                          ])
                    ]
                    )),),
                  ],
                )
              ],
            )
            ),
          ),
          Container(
            child: Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: (){
                    print('is clicked');
                  },
                  child: Text('팔로우'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(210, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: (){
                    print('is clicked');
                  },
                  child: Text('메세지'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(210, 45),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(3, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: (){
                      print('is clicked');
                    },
                    child: Icon(Icons.perm_identity),
                    style: ElevatedButton.styleFrom(minimumSize: Size(2, 45),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                ),
              ],
            ),)
          ),
          Container(
            child: Padding(padding: EdgeInsets.fromLTRB(10, 30, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('회원님을 위한 추천'),
                Text('모두보기',
                style: TextStyle(color: Colors.blue),),
              ],
            ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
            child: Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              children: [
                Container(child: Image.asset('assets/images/hanwoul.png'),),
                SizedBox(height: 10, width: 10,),
                Container(child: Image.asset('assets/images/exed.png'),),
                SizedBox(height: 10, width: 10,),
                Container(child: Image.asset('assets/images/hanwoul.png'),),

              ],
            ),),),
          ),
          Container(
            color: Colors.black,
    height: 50,
    child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      ElevatedButton(onPressed: (){
        print('is clicked');
      },
        child:  Icon(Icons.grid_4x4),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),),
      ElevatedButton(onPressed: (){
        print('is clicked');
      },
        child:  Icon(Icons.movie),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),),
      ElevatedButton(onPressed: (){
        print('is clicked');
      },
        child:  Icon(Icons.account_box),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),),
    ]
    ),
          ),
          ),
          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 163,
                    height:160,
                    child: InkWell(
                      onTap: (){print('is clicked');},
                      child: Image.asset('assets/images/third.png',
                      height: 160,
                      width: 160,
                      fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    width: 163,
                    height:160,
                    child: InkWell(
                      onTap: (){print('is clicked');},
                      child: Image.asset('assets/images/first.png',

                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    width: 163,
                    height:160,
                    child: InkWell(
                      onTap: (){print('is clicked');},
                      child: Image.asset('assets/images/second.png',

                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 163,
                    height:160,
                    child: InkWell(
                      onTap: (){print('is clicked');},
                      child: Image.asset('assets/images/third.png',
                        height: 163,
                        width: 160,
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    width: 163,
                    height:160,
                    child: InkWell(
                      onTap: (){print('is clicked');},
                      child: Image.asset('assets/images/third.png',
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    width: 163,
                    height:160,
                    child: InkWell(
                      onTap: (){print('is clicked');},
                      child: Image.asset('assets/images/third.png',
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
      ),
    );
  }
}

import 'package:demo_project/pages/loginpage/loginpage.dart';
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../Myjobs/myjob.dart';
import '../candiatescreening/candidate_screening.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App title',
          style: font16.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      // body:  Center(
      //     child: Text(
      //       'A drawer is an invisible side screen.',
      //       style: TextStyle(fontSize: 20.0),
      //     )),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff31b9f3),
              ), //BoxDecoration
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff9ce0fc),
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "A",
                        style:
                            TextStyle(fontSize: 30.0, color: Color(0xFF535259)),
                      ),
                    ), //T,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Abhishek Mishra\n",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 16)),
                      TextSpan(
                          text: "abhishekm977@gmail.com",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 15)),
                    ]),
                  ),
                ],
              ),
              // UserAccountsDrawerHeader(
              //   decoration: BoxDecoration(color:Color(0xff31b9f3)),
              //   accountName: Text(
              //     "Abhishek Mishra",
              //     style: TextStyle(fontSize: 18),
              //   ),
              //   accountEmail: Text("abhishekm977@gmail.com"),
              //   currentAccountPictureSize: Size.square(50),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundColor:Color(0xff9ce0fc),
              //     child: Text(
              //       "A",
              //       style: TextStyle(fontSize: 30.0, color:Color(0xFF535259)),
              //     ), //Text
              //   ), //circleAvatar
              // ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading:  Image.asset(
                'assets/myjobs.png',
                fit: BoxFit.fitWidth,
                width: 35,
                height: 35,
              ),
              title: const Text(' My Jobs ',style: TextStyle(fontSize: 15),),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: MyJobs()));
              },
            ),
            SizedBox(height: 5,),
            Container(
              height: 1,color:lightgrey,
            ),
            SizedBox(height: 5,),
            ListTile(
              leading:  Image.asset(
                'assets/candidate.png',
                fit: BoxFit.fitWidth,
                width: 35,
                height: 35,
              ),
              title: const Text('Candidate Screening',style: TextStyle(fontSize: 15),),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Candidate_Screening_Page()));
              },
            ),
            SizedBox(height: 5,),
            Container(
              height: 1,color:lightgrey,
            ),
            SizedBox(height: 5,),
            ListTile(
              leading:  Image.asset(
                'assets/fax.png',
                fit: BoxFit.fitWidth,
                width: 40,
                height: 45,
              ),
              title: const Text('Agencies',style: TextStyle(fontSize: 15),),
              onTap: () {
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         type: PageTransitionType.rightToLeft,
                //         child: MyJobs()));
              },
            ),
            SizedBox(height: 5,),
            Container(
              height: 1,color:lightgrey,
            ),
            SizedBox(height: 5,),
            ListTile(
              leading:  Image.asset(
                'assets/interviewmanager.png',
                fit: BoxFit.fitWidth,
                width: 32,
                height: 32,
              ),
              title: const Text('Interview Manager',style: TextStyle(fontSize: 15),),
              onTap: () {
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         type: PageTransitionType.rightToLeft,
                //         child: MyJobs()));
              },
            ),
            SizedBox(height: 5,),
            Container(
              height: 1,color:lightgrey,
            ),
            // SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/search.png',
            //     fit: BoxFit.fitWidth,
            //     width: 35,
            //     height: 35,
            //   ),
            //   title: const Text('Talent Pool',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),
            // SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/onboarding.png',
            //     fit: BoxFit.fitWidth,
            //     width: 35,
            //     height: 35,
            //   ),
            //   title: const Text('Onboarding',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),
            // SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/calendar.png',
            //     fit: BoxFit.fitWidth,
            //     width: 32,
            //     height: 32,
            //   ),
            //   title: const Text('Calendar',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),
            // SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/referrals.png',
            //     fit: BoxFit.fitWidth,
            //     width: 32,
            //     height: 32,
            //   ),
            //   title: const Text('Referrals',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),
            // SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/reports.png',
            //     fit: BoxFit.fitWidth,
            //     width: 32,
            //     height: 32,
            //   ),
            //   title: const Text('Reports',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),
            // SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/profile.png',
            //     fit: BoxFit.fitWidth,
            //     width: 32,
            //     height: 32,
            //   ),
            //   title: const Text('Profile',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),SizedBox(height: 5,),
            // ListTile(
            //   leading:  Image.asset(
            //     'assets/support.png',
            //     fit: BoxFit.fitWidth,
            //     width: 32,
            //     height: 32,
            //   ),
            //   title: const Text('Support',style: TextStyle(fontSize: 15),),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     PageTransition(
            //     //         type: PageTransitionType.rightToLeft,
            //     //         child: MyJobs()));
            //   },
            // ),
            // SizedBox(height: 5,),
            // Container(
            //   height: 1,color:lightgrey,
            // ),
            SizedBox(height: 5,),
            ListTile(
              leading: Icon(Icons.login_rounded,color: primayColor,size: 35,),
              title: const Text('Logout',style: TextStyle(fontSize: 15),),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    CupertinoPageRoute(
                    builder: (context) => LoginPage()

                ));
              },
            ),
            SizedBox(height: 5,),
            Container(
              height: 1,color:lightgrey,
            ),
            SizedBox(height: 5,),
          ],
        ),
      ), //Deawer
    );
  }
}

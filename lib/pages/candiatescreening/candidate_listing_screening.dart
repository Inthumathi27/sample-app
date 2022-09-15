
import 'package:demo_project/pages/candiatescreening/application_screen.dart';
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Application {
  String? applicationName;
  String? counter;
  String? picture;

  Application({this.applicationName, this.counter,this.picture});
}

// class jobdetails {
//   String? name;
//   String? Mode;
//   String? PhoneNo;
//   String? MobileNo;
//   String? status;
//   String? Industrytype;
//   String? PostedDate;
//   String? Deadline;
//   String? JobReference;
//   String? location;
//
//   jobdetails(
//       {this.name,
//       this.Mode,
//       this.MobileNo,
//       this.PhoneNo,
//       this.status,
//       this.Industrytype,
//       this.Deadline,
//       this.PostedDate,
//       this.JobReference,
//       this.location});
// }

class candidate_Listing extends StatefulWidget {
  const candidate_Listing({Key? key}) : super(key: key);

  @override
  State<candidate_Listing> createState() => _candidate_ListingState();
}

class _candidate_ListingState extends State<candidate_Listing> {
  List applicationList = [
    Application(
      applicationName: "Total ",
      counter: "5",
      picture: "assets/candidatelist/totalapplicant.png",
    ),
    Application(
      applicationName: "Prospects",
      counter: "12",
      picture: "assets/candidatelist/prospects.png",
    ),
    Application(
      applicationName: "Referrals",
      counter: "15",
      picture: "assets/candidatelist/referrals.png",
    ),
    Application(
      applicationName: "New ",
      counter: "3522",
      picture: "assets/candidatelist/newapplicant.png",
    ),
    Application(
      applicationName: "Shortlist",
      counter: "52",
      picture: "assets/candidatelist/shortlist.png",
    ),
    Application(
      applicationName: "Possible",
      counter: "0",
      picture: "assets/candidatelist/possible.png",
    ),
    Application(
      applicationName: "Interview",
      counter: "58",
      picture: "assets/candidatelist/interview.png",
    ),
    Application(
      applicationName: "Offered",
      counter: "1",
      picture: "assets/candidatelist/Offered.png",
    ),
    Application(
      applicationName: "Hired",
      counter: "10",
      picture: "assets/candidatelist/hired.png",
    ),
    Application(
      applicationName: "Rejected",
      counter: "25",
      picture: "assets/candidatelist/rejected.png",
    ),
    Application(
      applicationName: "Withdraw",
      counter: "52",
      picture: "assets/candidatelist/withdraw.png",
    ),
    Application(
      applicationName: "",
      counter: "",
      picture: "",
    ),
  ];

  // bool isChecked = false;
  // final controller = ValueNotifier<bool>(false);
  // List jobList = [
  //   jobdetails(
  //     name: "sawy n",
  //     Industrytype: "Advertising- Desktop",
  //     MobileNo: "9876543210",
  //     PhoneNo: "454545",
  //     status: "Incomplete Application",
  //     Deadline: "August 22,2022",
  //     JobReference: "021554",
  //     PostedDate: "July 22,2022",
  //     location: "United Kingdom",
  //     Mode: "Advertising-Desktop",
  //   ),
  //   jobdetails(
  //     name: "jofer j",
  //     Industrytype: "Teaching Industry",
  //     PhoneNo: "658545",
  //     MobileNo: "9876532410",
  //     status: "complete Application",
  //     Deadline: "August 11,2022",
  //     PostedDate: "July 11,2022",
  //     JobReference: "54235",
  //     location: "United Kingdom",
  //     Mode: "Advertising-Mobile",
  //   ),
  //   jobdetails(
  //     name: "Thomas jitin",
  //     MobileNo: "6369739624",
  //     PhoneNo: "665522",
  //     status: "Incomplete Application",
  //     Industrytype: "Teaching Industry",
  //     Deadline: "August 11,2022",
  //     PostedDate: "July 11,2022",
  //     JobReference: "074324",
  //     location: "United Kingdom",
  //     Mode: "Advertising-Mobile",
  //   ),
  //   jobdetails(
  //     name: "sam jabro",
  //     Industrytype: "Teaching Industry",
  //     PhoneNo: "956785",
  //     MobileNo: "9488680763",
  //     status: "complete Application",
  //     Deadline: "August 11,2022",
  //     PostedDate: "June 11,2022",
  //     JobReference: "8672",
  //     location: "United Kingdom",
  //     Mode: "Advertising-Desktop",
  //   ),
  // ];

  // void showMenuSelection(String value) {
  //   print("pressed");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Candiates Screening",
          style: font16.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          Row(
            children: [
              Image.asset(
                "assets/add-candidate.png",
                width: 25,
              ),
              Text(
                "Add candidate  ",
                style: font16.copyWith(color: whiteColor),
              )
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child : Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: containerblueColor
                  // gradient: LinearGradient(
                  //     begin: Alignment.centerLeft,
                  //     end: Alignment.centerRight,
                  //     colors: [
                  //       Color(0xFFf4c685),
                  //       Color(0xFFf2bc6f),
                  //       Color(0xFFf0ad4e),
                  //     ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Testing",
                            style: font15.copyWith(fontWeight: FontWeight.w600,color: primayColor),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/jobreferralno.png",
                                width: 25,
                                height: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "05454",
                                style: font15.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primayColor,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ],
                      ),
                      heightSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/tagicon.png",
                                width: 25,
                                height: 20,
                              ),
                              Text(
                                "Aerospace & Defence",
                                style: font14.copyWith(   color: primayColor,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                color: lightgrey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "location",
                                style: font15.copyWith(   color: primayColor,),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              heightSpace,
              heightSpace,
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 7.5,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: applicationList.length,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           width: MediaQuery.of(context).size.width / 2.8,
              //           child: Card(
              //             child: Container(
              //                 decoration: const BoxDecoration(
              //                   gradient: LinearGradient(
              //                       begin: Alignment.centerLeft,
              //                       end: Alignment.centerRight,
              //                       colors: [
              //                         Color(0xFFf4c685),
              //                         Color(0xFFf2bc6f),
              //                         Color(0xFFf0ad4e),
              //                       ]),
              //                 ),
              //                 child: Column(
              //                   children: [
              //                     heightSpace,
              //                     Container(
              //                       decoration: const BoxDecoration(
              //                         shape: BoxShape.circle,
              //                         color: Color(0xFF78b3e1),
              //                       ),
              //                       child: Padding(
              //                         padding: const EdgeInsets.all(8.0),
              //                         child: Padding(
              //                           padding: const EdgeInsets.all(3.0),
              //                           child: Text(
              //                             applicationList[index]
              //                                 .counter
              //                                 .toString(),
              //                             style: font13.copyWith(
              //                                 color: whiteColor,
              //                                 fontWeight: FontWeight.w700),
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                     heightSpace,
              //                     Text(
              //                       applicationList[index].applicationName,
              //                       style: font13.copyWith(
              //                           color: Color(0xFF297ca8),
              //                           fontWeight: FontWeight.w700),
              //                     ),
              //                   ],
              //                 )),
              //           ),
              //         );
              //       }),
              // ),
              Container(
               decoration: BoxDecoration(
                 color: greyColor.withOpacity(0.5),
                 border: Border(
                   top: BorderSide(width:1.0, color: Color(0xfff0f0f0),),

                 ),),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2 / 1.18,
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1),
                    itemCount: applicationList.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        color: const Color(0xfff0f0f0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: ApplicationScreen()));
                          },
                          child: applicationList[index].picture==""?SizedBox():Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    applicationList[index].counter,
                                    style: font26.copyWith(
                                        color: primayColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    applicationList[index].applicationName,
                                    style: font15.copyWith(
                                        color:Color(0xFF535259),
                                       ),
                                  ),
                                ],
                              ),
                                Opacity(
                                 opacity: 0.2,
                                 child: Image.asset(  applicationList[index].picture,width: 70,height: 75,)
                               ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

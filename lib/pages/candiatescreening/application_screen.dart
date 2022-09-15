
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

import 'candidateviewscreen.dart';

class jobdetails {
  String? name;
  String? Mode;
  String? PhoneNo;
  String? MobileNo;
  String? status;
  String? PostedDate;

  jobdetails({
    this.name,
    this.Mode,
    this.MobileNo,
    this.PhoneNo,
    this.status,
    this.PostedDate,
  });
}

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  bool isChecked = false;
  final controller = ValueNotifier<bool>(false);

  List jobList = [
    jobdetails(
      name: "sawy n",
      MobileNo: "9876543210",
      PhoneNo: "454545",
      status: "Incomplete Application",
      PostedDate: "July 22,2022",
      Mode: "Advertising-Desktop",
    ),
    jobdetails(
      name: "jofer j",
      PhoneNo: "658545",
      MobileNo: "9876532410",
      status: "Complete Application",
      PostedDate: "July 11,2022",
      Mode: "Advertising-Mobile",
    ),
    jobdetails(
      name: "Thomas jitin",
      MobileNo: "6369739624",
      PhoneNo: "665522",
      status: "Incomplete Application",
      PostedDate: "July 11,2022",
      Mode: "Advertising-Mobile",
    ),
    jobdetails(
      name: "sam jabro",
      PhoneNo: "956785",
      MobileNo: "9488680763",
      status: "Complete Application",
      PostedDate: "June 11,2022",
      Mode: "Advertising-Desktop",
    ),
    jobdetails(
      name: "sam jabro",
      PhoneNo: "956785",
      MobileNo: "9488680763",
      status: "Complete Application",
      PostedDate: "June 11,2022",
      Mode: "Advertising-Desktop",
    ),
    jobdetails(
      name: "sam jabro",
      PhoneNo: "956785",
      MobileNo: "9488680763",
      status: "Incomplete Application",
      PostedDate: "June 11,2022",
      Mode: "Advertising-Desktop",
    ),
  ];

  void showMenuSelection(String value) {
    print("pressed");
  }

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff3f3f3),
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Candiates Screening",
              style: font16.copyWith(fontWeight: FontWeight.w600),
            ),
            actions: <Widget>[
              PopupMenuButton<String>(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                icon: const Icon(Icons.more_horiz),
                onSelected: showMenuSelection,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image: AssetImage(
                            'assets/candidatescreen/totalapplicant.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Total Application", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/prospects.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Prospects", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/referral.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Referrals", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image: AssetImage(
                            'assets/candidatescreen/newapplicant.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" New Application", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/shortlist.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Shortlist", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/possible.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text("Possible", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/Interview.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text("Interview", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/candidatescreen/offered.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Offered", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/candidatescreen/hired.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Hired", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/rejected.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Rejected", style: font14),
                    ],
                  )),
                  PopupMenuItem<String>(
                      child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('assets/candidatescreen/withdraw.png'),
                        width: 30,
                        height: 30,
                      ),
                      Text(" Withdraw", style: font14),
                    ],
                  )),
                ],
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  color: containercolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: primayColor,
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text("Select All",
                            style: font14.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          // AdvancedSwitch(
                          //   activeChild: Text('ON'),
                          //   inactiveChild: Text('OFF'),
                          //   enabled: true,
                          //   borderRadius: BorderRadius.circular(5),
                          //   width: 80,
                          //   height: 30,
                          //   activeColor: primayColor,
                          //   inactiveColor: primayColor,
                          //   controller: controller,
                          //
                          //
                          // ),
                          FlutterSwitch(
                            width: 75.0,
                            height: 30.0,
                            valueFontSize: 12.0,
                            toggleSize: 30.0,
                            value: status,
                            activeColor: primayColor,
                            borderRadius: 5.0,
                            padding: 5.0,
                            activeTextColor: whiteColor,
                            inactiveTextColor: whiteColor,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Show Incomplete\n Applications",
                            style: font14.copyWith(
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        bottomNavigationBar: Material(
          elevation: 5.0,
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width - 10 * 4.0,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1.0, color: primayColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius:  BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),

                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.65,
                              decoration:  const BoxDecoration(
                                borderRadius:  BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  heightSpace,
                                  heightSpace,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Move To Stage".toUpperCase(),
                                          style: font18.copyWith(color:primayColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Move the applicant to next stage",
                                          style: font12.copyWith(color:bluegrey,fontStyle: FontStyle.italic),
                                        ),
                                      ],
                                    ),
                                  ),
                                  heightSpace,
                                  heightSpace,
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image(
                                                image:
                                                    AssetImage('assets/candidatelist/shortlist.png'),
                                                width: 35,
                                                height: 35,
                                              ),
                                              widthSpace,
                                              Text(
                                                "Shortlist",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/possible.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Possible",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/interview.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),

                                              widthSpace,
                                              Text(
                                                "Interview",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(

                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/Offered.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Offered",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/hired.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Hired",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/rejected.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),

                                              widthSpace,
                                              Text(
                                                "Rejected",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/rejectedwithnomail.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),

                                              widthSpace,
                                              Text(
                                                "Rejected(No email)",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/withdraw.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Withdraw",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Row(
                      children: [
                        Text("Move Action"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_circle_up,
                          color: lightgrey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: primayColor,
                    width: 1,
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius:  BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) {
                            return SizedBox(
                              height:MediaQuery.of(context).size.height * 0.52,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  heightSpace,
                                  heightSpace,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Bulk Action".toUpperCase(),
                                          style: font18.copyWith(color:primayColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Complete multiple action at one time",
                                          style: font12.copyWith(color:bluegrey,fontStyle: FontStyle.italic),
                                        ),
                                      ],
                                    ),
                                  ),
                                  heightSpace,
                                  heightSpace,
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/forwardcandidate.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Forward Candidate(s)",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/addcomment.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Add Comment(s)",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/bulktag.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Bulk Tag",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/bulkemail.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Bulk Email",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/remainder.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Bulk Completion Remainder",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 12),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Opacity(
                                                opacity: 0.6,
                                                child: Image(
                                                  image:
                                                  AssetImage('assets/candidatelist/feedback.png'),
                                                  width: 35,
                                                  height: 35,
                                                ),
                                              ),
                                              widthSpace,
                                              Text(
                                                "Bulk Candidates Feedback",
                                                style: font16.copyWith(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ],
                                          ),
                                          Image(
                                            image:
                                            AssetImage('assets/candidatelist/forward.png'),
                                            width: 25,
                                            height: 25,
                                            color: primayColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  heightSpace,
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 1,
                                    color: primayColor.withOpacity(0.2),
                                  ),
                                  heightSpace,
                                  SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Row(
                      children: [
                        Text("Bulk Action"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_circle_up,
                          color: lightgrey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              heightSpace,
              status == false
                  ? ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: jobList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: CandidateViewDetails()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: whiteColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5.0,5,5,8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    heightSpace,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Transform.scale(
                                              scale: 1.4,
                                              child: Checkbox(
                                                side:  BorderSide(
                                                  color:bluegrey,
                                                  width: 1.5
                                                ),
                                                activeColor: primayColor,
                                                checkColor: Colors.white,
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  jobList[index].name.toUpperCase(),
                                                  style: font16.copyWith(
                                                      fontWeight: FontWeight.w600),
                                                ),

                                                Text(
                                                  jobList[index].PostedDate,
                                                  style: font11.copyWith(
                                                    color: bluegrey,
                                                    fontStyle: FontStyle.italic,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        PopupMenuButton<String>(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          icon: const Icon(Icons.more_vert,color: Color(0xFF297ca8),),
                                          onSelected: showMenuSelection,
                                          itemBuilder: (BuildContext context) =>
                                              <PopupMenuEntry<String>>[
                                            PopupMenuItem<String>(
                                                child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.2,
                                                    child: Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.email,
                                                          size: 25,
                                                          color: Colors.blueGrey,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text("Email Candidate",
                                                            style: font14)
                                                      ],
                                                    ))),
                                            PopupMenuItem<String>(
                                                child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2.2,
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.download,
                                                            size: 25,
                                                            color:
                                                                Colors.blueGrey),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text("Download Cv/Resume",
                                                            style:
                                                                font14.copyWith())
                                                      ],
                                                    ))),
                                            PopupMenuItem<String>(
                                                child: Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        1.8,
                                                    child: Row(
                                                      children: [
                                                        const Image(
                                                          image: AssetImage(
                                                              'assets/candidatescreen/downloadapplicationform.png'),
                                                          width: 30,
                                                          height: 30,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            "Download Application Form",
                                                            style:
                                                                font14.copyWith())
                                                      ],
                                                    ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                    heightSpace,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            jobList[index].status,
                                            style: font14.copyWith(
                                              color: jobList[index].status ==
                                                  "Incomplete Application"
                                                  ? Color(0xffff8d8d)
                                                  : Colors.green,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: (){
                                              launch("tel:9876543210");
                                            },
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.call,
                                                  color: primayColor,
                                                  size: 18,
                                                ),
                                                SizedBox(width: 6,),
                                                Text(
                                                  jobList[index].MobileNo,
                                                  style: font15.copyWith(
                                                    color: Color(0xff3b3b3b),
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    heightSpace,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  :ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: jobList.length,
                itemBuilder: (BuildContext context, int index) {
                  return jobList[index].status == "Complete Application"
                      ? SizedBox():Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: CandidateViewDetails()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: whiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5.0,5,5,8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              heightSpace,
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 1.4,
                                        child: Checkbox(
                                          side:  BorderSide(
                                              color:bluegrey,
                                              width: 1.5
                                          ),
                                          activeColor: primayColor,
                                          checkColor: Colors.white,
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                      ),
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            jobList[index].name.toUpperCase(),
                                            style: font16.copyWith(
                                                fontWeight: FontWeight.w600),
                                          ),

                                          Text(
                                            jobList[index].PostedDate,
                                            style: font11.copyWith(
                                              color: bluegrey,
                                              fontStyle: FontStyle.italic,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  PopupMenuButton<String>(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15.0))),
                                    icon: const Icon(Icons.more_vert,color: Color(0xFF297ca8),),
                                    onSelected: showMenuSelection,
                                    itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry<String>>[
                                      PopupMenuItem<String>(
                                          child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                                  2.2,
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.email,
                                                    size: 25,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Email Candidate",
                                                      style: font14)
                                                ],
                                              ))),
                                      PopupMenuItem<String>(
                                          child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                                  2.2,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.download,
                                                      size: 25,
                                                      color:
                                                      Colors.blueGrey),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Download Cv/Resume",
                                                      style:
                                                      font14.copyWith())
                                                ],
                                              ))),
                                      PopupMenuItem<String>(
                                          child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                                  1.8,
                                              child: Row(
                                                children: [
                                                  const Image(
                                                    image: AssetImage(
                                                        'assets/candidatescreen/downloadapplicationform.png'),
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                      "Download Application Form",
                                                      style:
                                                      font14.copyWith())
                                                ],
                                              ))),
                                    ],
                                  ),
                                ],
                              ),
                              heightSpace,
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      jobList[index].status,
                                      style: font14.copyWith(
                                        color: jobList[index].status ==
                                            "Incomplete Application"
                                            ? Color(0xffff8d8d)
                                            : Colors.green,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        launch("tel:9876543210");
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.call,
                                            color: primayColor,
                                            size: 18,
                                          ),
                                          SizedBox(width: 6,),
                                          Text(
                                            jobList[index].MobileNo,
                                            style: font15.copyWith(
                                              color: Color(0xff3b3b3b),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              heightSpace,
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}

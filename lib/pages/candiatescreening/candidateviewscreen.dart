import 'dart:ui';
import 'package:demo_project/pages/candiatescreening/profile.dart';
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertical_tabs/vertical_tabs.dart';


class Employment {
  String? jobtitle;
  String? companyname;
  String? Duration;
  String? Experience;

  Employment(
      {this.jobtitle,
        this.companyname,
        this.Duration,
        this.Experience,
      });
}


class CandidateViewDetails extends StatefulWidget {
  const CandidateViewDetails({Key? key}) : super(key: key);

  @override
  State<CandidateViewDetails> createState() => _CandidateViewDetailsState();
}

class _CandidateViewDetailsState extends State<CandidateViewDetails> with SingleTickerProviderStateMixin {
  void showMenuSelection(String value) {
    print("pressed");
  }

  final scrollController = ScrollController(initialScrollOffset: 0);
  int _selection = 0;
  int _selection1 = 0;
  int _selection2 = 0;
  int id1 = 1;
  String radioButtonItem = 'Yes';

  List Employmentdetails = [
    Employment(
      jobtitle: "Senior Tester",
      Experience: "4 years",
      companyname: "Rico Pyrotechnics",
      Duration: "Jan 2018 - Present",
    ),
    Employment(
      jobtitle: "Senior Tester",
      Experience: "3 years",
      companyname: "A.N. Employer Plc",
      Duration: "Jan 2015 - Jan 2018",
    ),
    Employment(
      jobtitle: "Senior Tester",
      Experience: "1 year",
      companyname: "",
      Duration: "Jan 2014 - Jan 2015",
    ),
    Employment(
      jobtitle: "Senior Tester",
      Experience: "4 years",
      companyname: "Matt Paving Ltd",
      Duration: "Jan 2010 - Jan 2014",
    ),
    Employment(
      jobtitle: "Senior Tester",
      Experience: "8 years",
      companyname: "Joe Bloggs & Co.",
      Duration: "Jan 2002 - Jan 2010",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodycolor,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          // overflow: Overflow.visible,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: primayColor,
                  height:180,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        InkWell(
                           onTap: (){
                             Navigator.push(
                                 context,
                                 PageTransition(
                                     type: PageTransitionType.rightToLeft,
                                     child: ProfileScreen()));
                           },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "jofer j".toUpperCase(),
                                    style: font16.copyWith(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  heightSpace,
                                  InkWell(
                                    onTap: () {
                                      launch("mailto:joferj@mail.com");
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.mail,
                                          color: whiteColor,
                                          size: 20,
                                        ),
                                        widthSpace,
                                        Text(
                                          "joferj@mail.com ",
                                          style: font15.copyWith(color: whiteColor),
                                        )
                                      ],
                                    ),
                                  ),
                                  heightSpace,
                                  InkWell(
                                    onTap: () {
                                      launch("tel:9876543210");
                                      print("9876543210");
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: whiteColor,
                                          size: 20,
                                        ),
                                        widthSpace,
                                        Text(
                                          "9876543210 ",
                                          style: font15.copyWith(color: whiteColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.edit,color: whiteColor,)
                            ],
                          ),
                        ),
                        heightSpace,
                        heightSpace,
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 45,
                              width: MediaQuery.of(context).size.width /2.4,
                              child:  PopupMenuButton<String>(
                                color: Color(0xffe7f7ff),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                                // icon: const Icon(Icons.more_horiz),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      color: primayColor,
                                      size: 20,
                                    ),
                                    Text(
                                      "New Application",
                                      style: font14.copyWith(
                                          color: primayColor, fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                onSelected: showMenuSelection,
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image:
                                            AssetImage('assets/candidatescreen/totalapplicant.png'),
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
                                            image: AssetImage('assets/candidatescreen/prospects.png'),
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
                                            image: AssetImage('assets/candidatescreen/referral.png'),
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
                                            image:
                                            AssetImage('assets/candidatescreen/newapplicant.png'),
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
                                            image: AssetImage('assets/candidatescreen/shortlist.png'),
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
                                            image: AssetImage('assets/candidatescreen/possible.png'),
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
                                            image: AssetImage('assets/candidatescreen/Interview.png'),
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
                                            image: AssetImage('assets/candidatescreen/rejected.png'),
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
                                            image: AssetImage('assets/candidatescreen/withdraw.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Withdraw", style: font14),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 45,
                              width: MediaQuery.of(context).size.width / 2.4,
                              child:  PopupMenuButton<String>(
                                color: Color(0xffe7f7ff),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0),),),
                                // icon: const Icon(Icons.more_horiz),
                                child: Center(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Image(
                                          image:
                                          AssetImage('assets/candidatescreen/action.png'),
                                          width: 30,
                                          height: 30,
                                          color:  Color(0xFF297ca8),
                                        ),
                                        Text(
                                          "Action",
                                          style: font15.copyWith(
                                              color: primayColor, fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )),
                                onSelected: showMenuSelection,
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[

                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image:
                                            AssetImage('assets/candidatescreen/sethired.png'),
                                            width: 30,
                                            height: 30,
                                          ),

                                          Text(" Set Candidate Hired", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/applicationprocess.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Request Application Process\n Feedback", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/onboarding.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Begin Onboarding", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image:
                                            AssetImage('assets/candidatescreen/incompleteapplication.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Send Incomplete Application\n Remainder", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/forwardcandidate.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Forward Candidate", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/addtag.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Add Tag", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/addcomment.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" View/ Add Comment", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/applicationform.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Download Application Form", style: font14),
                                        ],
                                      )),
                                  PopupMenuItem<String>(
                                      child: Row(
                                        children: [
                                          const Image(
                                            image: AssetImage('assets/candidatescreen/downloadcv.png'),
                                            width: 30,
                                            height: 30,
                                          ),
                                          Text(" Download CV/Resume", style: font14),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  child: VerticalTabs(
                    indicatorColor: primayColor,
                    tabsWidth: 125,
                    direction: TextDirection.ltr,
                    selectedTabBackgroundColor:containerColor2,
                    changePageDuration: Duration(milliseconds: 500),
                    tabs:  <Tab>[
                      Tab(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0,right: 10,top:15,bottom: 15),
                            child: Center(
                              child: Column(
                                children: [
                                  const Image(
                                   image:
                                   AssetImage('assets/candidatescreen/question.png'),
                                   width: 50,
                                   height: 50,
                                      ),
                                  Text("Question",style: font15.copyWith(color:greyColor,fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          )),
                      Tab(
                          child:
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,right: 10,top:15,bottom: 15),
                            child: Center(
                              child: Column(
                                children: [
                                  const Image(
                                    image:
                                    AssetImage('assets/candidatescreen/employment.png'),
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text("Employment",style: font15.copyWith(color: greyColor,fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          )),
                      Tab(
                          child:
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,right: 10,top:15,bottom: 15),
                            child: Center(
                              child: Column(
                                children: [
                                  const Image(
                                    image:
                                    AssetImage('assets/candidatescreen/skills.png'),
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text("Skills",style: font15.copyWith(color: greyColor,fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          )),
                      Tab(
                          child:
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,right: 10,top:15,bottom: 15),
                            child: Center(
                              child: Column(
                                children: [
                                  const Image(
                                    image:
                                    AssetImage('assets/candidatescreen/documents.png'),
                                    width: 40,
                                    height: 40,
                                  ),
                                  Text("Documents",style: font15.copyWith(color: greyColor,fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          )),
                      Tab(
                          child:
                          Padding(
                            padding: EdgeInsets.only(left: 10.0,right: 10,top:15,bottom: 15),
                            child: Center(
                              child: Column(
                                children: [
                                  const Image(
                                    image:
                                    AssetImage('assets/candidatescreen/activity.png'),
                                    width: 40,
                                    height: 40,
                                  ),
                                  Text("Activity",style: font15.copyWith(color: greyColor,fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          )),
                    ],
                    contents: <Widget>[
                      Container(
                        // margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(12),
                        color: containerColor2,
                        child: SingleChildScrollView(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Question".toUpperCase(),
                                  style:font16.copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Divider(height: 20, color: Colors.black45,),
                              Text(
                                "Text Question 1",
                                style: font16.copyWith(fontWeight: FontWeight.w500,color: bluegrey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        id1=1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: id1,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'No';
                                              id1 = 1;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option1',
                                          style:
                                          font15.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        id1=2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: id1,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'Yes';
                                              id1 = 2;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option2',
                                          style:
                                          font16.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              heightSpace,
                              Container(
                                color: bluegrey.withOpacity(0.2),
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                              ),
                              heightSpace,
                              Text(
                                "Text Question 2",
                                style: font16.copyWith(fontWeight: FontWeight.w500,color: bluegrey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _selection=1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: _selection,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'No';
                                              _selection = 1;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option1',
                                          style:
                                          font15.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _selection=2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: _selection,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'Yes';
                                              _selection = 2;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option2',
                                          style:
                                          font16.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              heightSpace,
                              Container(
                                color: bluegrey.withOpacity(0.2),
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                              ),
                              heightSpace,
                              Text(
                                "Text Question 3",
                                style: font16.copyWith(fontWeight: FontWeight.w500,color: bluegrey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _selection1=1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: _selection1,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'No';
                                              _selection1 = 1;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option1',
                                          style:
                                          font15.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _selection1=2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: _selection1,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'Yes';
                                              _selection1 = 2;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option2',
                                          style:
                                          font16.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              heightSpace,
                              Container(
                                color: bluegrey.withOpacity(0.2),
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                              ),
                              heightSpace,
                              Text(
                                "Text Question 4",
                                style: font16.copyWith(fontWeight: FontWeight.w500,color: bluegrey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _selection2=1;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: _selection2,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'No';
                                              _selection2 = 1;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option1',
                                          style:
                                          font15.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _selection2=2;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: _selection2,
                                          activeColor: primayColor,
                                          onChanged: (val) {
                                            setState(() {
                                              // radioButtonItem = 'Yes';
                                              _selection2 = 2;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Option2',
                                          style:
                                          font16.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color:containerColor2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Employment".toUpperCase(),
                                style:font16.copyWith(fontWeight: FontWeight.w600),
                              ),
                              Divider(height: 20, color: Colors.black45,),
                              ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: Employmentdetails.length,
                                itemExtent: 130.0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: whiteColor,
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Employmentdetails[index].jobtitle,
                                                style: font15.copyWith(
                                                  color: Color(0xff3b3b3b),
                                                  fontWeight: FontWeight.w600,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                              heightSpace,
                                              Text(
                                                Employmentdetails[index].companyname,
                                                style: font14.copyWith(
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.blueGrey),
                                              ),
                                              heightSpace,
                                              Container(height: 1,
                                                color:bluegrey,),
                                              heightSpace,
                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    Employmentdetails[index].Experience,
                                                    style: font14.copyWith(
                                                      color: Color(0xff3b3b3b),
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Text(
                                                    Employmentdetails[index].Duration,
                                                    style: font14.copyWith(
                                                      color: Color(0xff3b3b3b),
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color:containerColor2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Skills".toUpperCase(),
                                style:font16.copyWith(fontWeight: FontWeight.w600),
                              ),
                              Divider(height: 20, color: Colors.black45,),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                // color: whiteColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("\u2022 Java",style: font15,),
                                      heightSpace,
                                      Text("\u2022 Python",style: font15,),
                                      heightSpace,
                                      Text("\u2022 Software Development Life Cycle (SDLC)",style: font15,),
                                      heightSpace,
                                      Text("\u2022 Technologies in Web and Mobile",style: font15,),
                                      heightSpace,
                                      Text("\u2022 Testing Tools & Techniques",style: font15,),
                                      heightSpace,
                                      Text("\u2022 Automation",style: font15,),
                                      heightSpace,
                                      Text("\u2022 Manuall",style: font15,),
                                      heightSpace,
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color: containerColor2,
                        child: SingleChildScrollView(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Documents".toUpperCase(),
                                  style:font16.copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Divider(height: 20, color: Colors.black45,),
                              Text("No Documents")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        color: containerColor2,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Activity".toUpperCase(),
                                style:font16.copyWith(fontWeight: FontWeight.w600),
                              ),
                              Divider(height: 20, color: Colors.black45,),
                              Container(
                                color: whiteColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.mail,color: bluegrey,size: 20,),
                                              SizedBox(width: 5,),
                                              Text("Email Sent",style: font15,)
                                            ],
                                          ),
                                          heightSpace,
                                          Row(
                                            children: [
                                              Icon(Icons.date_range,color: bluegrey,size: 20,),
                                              SizedBox(width: 5,),
                                              Text("8/2/2022 2:43 PM",style: font13,)
                                            ],
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: (){
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) => _buildPopupDialog(context),
                                          );
                                        },
                                        child: Container(color: primayColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.refresh,color: whiteColor,size: 20,),
                                              Text("Resend",style: font14.copyWith(color: whiteColor),),
                                            ],
                                          ),
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              heightSpace,
                              Container(
                                color: whiteColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.add,color: bluegrey,size: 20,),
                                          SizedBox(width: 5,),
                                          Text("Added to New applicants",style: font15,)
                                        ],
                                      ),
                                      heightSpace,
                                      Row(
                                        children: [
                                          Icon(Icons.date_range,color: bluegrey,size: 20,),
                                          SizedBox(width: 5,),
                                          Text("8/2/2022 2:43 PM",style: font13,)
                                        ],
                                      ),
                                      heightSpace,
                                      InkWell(
                                        onTap: () {
                                          launch("mailto:joferj@mail.com");
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.mark_email_read_outlined,
                                              color: bluegrey,size: 20,
                                            ),
                                            widthSpace,
                                            Text(
                                              "joferj@mail.com ",
                                              style: font14,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
  Widget _buildPopupDialog(BuildContext context) {
    return  AlertDialog(
      content: Container(
        height: 75,
        child: Column(
          children: [
            Text('Are you sure',style: font15,textAlign: TextAlign.center,),
            heightSpace,
            heightSpace,
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: primayColor,
                    width: 75,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(child: Text("Cancel",style: font13.copyWith(color: whiteColor,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: primayColor,
                    width: 75,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(child: Text("Ok",style: font13.copyWith(color: whiteColor,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
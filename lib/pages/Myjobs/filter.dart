
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/material.dart';


class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  var holder_1 = [];
  String Inputdata = "option";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: AppBar(
        title: Text(
          "Filter",
          style: font16.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {
        },
        elevation: 5.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
          ),
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primayColor,
            ),
            width: MediaQuery.of(context).size.width / 1.2,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                    "Apply Filter",
                    style: font16.copyWith(
                        color: whiteColor, fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Show only Jobs I created",style: font15.copyWith(fontWeight: FontWeight.w500,color: Colors.blueGrey),),
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: primayColor,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
              heightSpace,
              Text("Additional Filters",style: font16.copyWith(fontWeight: FontWeight.w600),),
              heightSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Departement Directorate",style: font15.copyWith(fontWeight: FontWeight.w500,color: Colors.blueGrey),),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                        border: Border.all(color:lightgrey)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 25),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          focusColor: Colors.white,
                          value: Inputdata,
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color:primayColor, // <-- SEE HERE
                          ),
                          iconSize: 25,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: primayColor,
                          items: <String>[
                            'option',
                            'option1',
                            'option2',
                            'option3',
                            'option4',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: value == "option"
                                  ? Text(
                                value,
                                style: TextStyle(color: Color(0xff878c94)),
                              )
                                  : Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              Inputdata = value!;
                            });
                          },
                          isExpanded: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

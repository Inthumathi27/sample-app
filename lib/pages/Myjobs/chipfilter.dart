import 'package:demo_project/utils/constant.dart';
import 'package:demo_project/widget/filter.dart';
import 'package:flutter/material.dart';

class ChipsFilter extends StatefulWidget {

  final List<Filter>? filters;


  final int? selected;

  ChipsFilter({Key? key, this.filters, this.selected}) : super(key: key);

  @override
  _ChipsFilterState createState() => _ChipsFilterState();
}

class _ChipsFilterState extends State<ChipsFilter> {

  int? selectedIndex;

  @override
  void initState() {

    if (widget.selected != null &&
        widget.selected! >= 0 &&
        widget.selected! < widget.filters!.length) {
      this.selectedIndex = widget.selected;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 4.5 / 1.3,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount:widget.filters!.length,
        primary: false,
        shrinkWrap: true, itemBuilder: chipBuilder);
  }


  Widget chipBuilder(context, currentIndex) {
    Filter filter = widget.filters![currentIndex];
    bool isActive = this.selectedIndex == currentIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = currentIndex;
        });
      },
      child:  Container(
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(
            color:isActive?primayColor: borderColor,width: 1
          )
        ),
        child: Row(
          children: [

            Container(
               width: 65,
              color:isActive?primayColor: borderColor,
               child: Center(child: Text(filter.count!,
               style: font13.copyWith(color:isActive?whiteColor: black),)),
            ),
            Container(
               width: 125,
              child: Center(
                child: Text(
                  filter.label!,
                  style: font13
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
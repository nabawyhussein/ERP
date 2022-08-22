import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDatePicker extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged? onChange;
  final DateTime? startDate;
  final DateTime? endDate;

   CustomDatePicker(
      {
        this.endDate,
        this.controller,
        this.onChange,
        this.startDate
      });


  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      type: DateTimePickerType.date,
      firstDate:startDate?? DateTime.now(),
      lastDate:endDate?? DateTime(2100),
      controller: controller,
      decoration: const InputDecoration(
        border: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,

      ),
      textAlign: TextAlign.center,
      onChanged: onChange,
      validator: (val) {
        print(val);
        if(val==null|| val.isEmpty){
          return "!!";
        }
        else {
          return null;
        }
      },
      onSaved: (val) => print(val),
    );
  }

  
}

import 'package:flutter/material.dart';
import 'package:graduation_health_app_project/core/constants/colors.dart';
import 'package:graduation_health_app_project/core/constants/sizes.dart';
class DropDownButtonInSurvey extends StatefulWidget {

  final String hintText ;
  final List<String> theList ;

  const DropDownButtonInSurvey({super.key, required this.hintText, required this.theList});

  @override
  State<DropDownButtonInSurvey> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonInSurvey> {

  String? selectedValue;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 35,
      padding: const EdgeInsets.only(right: 7,left: 5,),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.dateAndTimeColor.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(AppSize.radius8)
      ) ,
      child: DropdownButton<String>(
        
          hint: Text( widget.hintText , style: const TextStyle(color: AppColors.dateAndTimeColor),),
      
          icon: const Icon(Icons.keyboard_arrow_down_sharp,color: AppColors.darkBlueColor,size: 20,),
      
          value: selectedValue,
      
          style: const TextStyle(fontSize: AppSize.fontSize14,color: AppColors.darkBlueColor,),

          underline: const SizedBox(),

          onChanged: (newValue){
            setState(() {
              selectedValue = newValue ;
            });
          },
          items: widget.theList.map((valueItem){
            return DropdownMenuItem(
                value: valueItem ,
                child: Text(valueItem)
            );
      
          }).toList() ,
      ),
    ) ;

  }
}


/*
 Column(
      children: [
      SizedBox(
        width: 80,
        height: 50,

      child:  DropdownButtonFormField(
          icon: Icon(Icons.keyboard_arrow_down_outlined,size: 20,),
        value: selectedValue,
        decoration: InputDecoration(
          hintText: 'الفئة',
          hintStyle:  const TextStyle(fontSize: AppSize.fontSize16, color: AppColors.dateAndTimeColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.radius8),
              borderSide: const BorderSide(
                color: AppColors.dateAndTimeColor,
              )
          ),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.darkBlueColor,
              )
          ),
        ),

        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
        },

        items: age.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),

      ),


      ),
        if (selectedValue != null)
          Text('$selectedValue'),
      ],
    )
 */

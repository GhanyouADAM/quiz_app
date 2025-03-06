import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/summary%20widgets/summary_item_widget.dart';

//details of the summary
class AnswersSummaryWidget extends StatelessWidget{
   const AnswersSummaryWidget({super.key, required this.summaryData});
   final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {   
    
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          //go through the list of map to yield each elements and pass it to the itemWidget
          children: summaryData.map((data){
            return SummaryItemWidget(itemData: data,);
          }).toList()
        ) 
      )
    );
}
}

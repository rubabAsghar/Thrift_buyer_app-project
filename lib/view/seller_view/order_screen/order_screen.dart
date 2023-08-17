import 'package:flutter/cupertino.dart';
import 'package:untitled2/widget/seller_widget/appbar_widget.dart';
import '../../../const/seller const/const.dart';
import '../../../widget/seller_widget/normal_text.dart';
import 'package:intl/intl.dart' as intl;

class SellerOrderScreen extends StatelessWidget {
  const SellerOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(orders),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20,
                    (index) => ListTile(
                  onTap: (){},
                      tileColor: textfieldGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                  title: Boldtext(text:"6426348664744" , color: purpleColor),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month, color: fontGrey),
                          10.widthBox,
                          Boldtext(text: intl.DateFormat().add_yMd().format(DateTime.now()),color: fontGrey),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.payment, color: fontGrey),
                          10.widthBox,
                          Boldtext(text: unpaid , color: blue),
                        ],
                      ),
                    ],
                  ),
                      trailing: Boldtext(text: "\$40.0",color: purpleColor , size: 16.0),
                ).box.margin(EdgeInsets.only(bottom: 4)).make(),
          ),
          ),
        ),
      ),
    );



  }
}

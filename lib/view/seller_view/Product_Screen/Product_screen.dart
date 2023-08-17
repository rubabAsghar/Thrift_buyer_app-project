

import 'package:untitled2/const/seller%20const/Lists.dart';

import '../../../const/seller const/const.dart';
import '../../../const/seller const/images.dart';
import '../../../widget/seller_widget/appbar_widget.dart';
import '../../../widget/seller_widget/normal_text.dart';

class SellerProductScreen extends StatelessWidget {
  const SellerProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      appBar: AppBarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20,
                    (index) => ListTile(
                      onTap: (){},
                  leading: Image.asset(imgProduct , width: 100, height: 100, fit: BoxFit.cover),
                  title: Boldtext(text:"Product Tile" , color: fontGrey),
                  subtitle: Normaltext(text:"\$40" , color: darkGrey),
                      trailing: VxPopupMenu(
                          menuBuilder: () =>Column(
                        children:
                          List.generate(PopupMenuTitle.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Icon(PopupMenuIcons [index]),
                                        5.widthBox,
                                        Normaltext(text: PopupMenuTitle[index],color: darkGrey),
                                      ],
                                    ),
                                  ))
                      ).box.white.width(200).make(),
                          child:
                          Icon(Icons.more_vert_rounded),
                          clickType: VxClickType.singleClick),
                )),
          ),
        ),
      ),
    );


  }
}

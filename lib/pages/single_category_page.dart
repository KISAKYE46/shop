import 'package:flutter/material.dart';
import 'package:shop/widgets/app_bar.dart';
import 'package:shop/widgets/products/product.dart';

class SingleCategoryPage extends StatefulWidget{
  String title = "Category";
  SingleCategoryPage(String title, {Key? key}) : super(key: key){
    title = title;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // ignore: no_logic_in_create_state
    return SingleCategoryPageState(title);
  }
  
}
class SingleCategoryPageState extends State<SingleCategoryPage>{

  String title = "Category";
  SingleCategoryPageState(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: createAppbar("Page",context),
        body: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(6),

            child:GridView(

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.60),

              children: [
                createProduct(context,name: "Fruits(For all people today)", price:2000, image: "assets/images/image_2.jpg",hasBadge: true),
                createProduct(context,name: "Cados(For all people today)", price:2000, image: "assets/images/image_1.jpg"),
                createProduct(context,name: "Fruits(For all people today)", price:2000, image: "assets/images/image_2.jpg",hasBadge: true),
                createProduct(context,name: "Fruits(For all people today)", price:2000, image: "assets/images/image_2.jpg",hasBadge: true),
                createProduct(context,name: "Cados(For all people today)", price:2000, image: "assets/images/image_1.jpg"),

              ],

            )
        )
    );



  }
  
}
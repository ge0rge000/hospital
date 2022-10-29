import 'package:flutter/material.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';


class CardItems extends StatelessWidget {
  const CardItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:200,
          childAspectRatio: 0.8,
      mainAxisSpacing: 9.0,
      crossAxisSpacing: 6.0,

      ),
      itemBuilder: (BuildContext context,  index) {
      return buildCardItems();
      },
      ),
    );
  }

}
Widget buildCardItems(){
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3.0,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){},
                icon: Icon(Icons.favorite_border_outlined,
                  color: Colors.black,
                ),),
              IconButton(onPressed: (){},
                icon: Icon(Icons.add,
                  color: Colors.black,
                ),),
            ],
          ),
          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network("https://images.unsplash.com/photo-1666883838711-052a00418d5b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80",
            fit: BoxFit.cover,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top:2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$25",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Container(
                  height: 20,
                  width: 45,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: EdgeInsets.only(left: 3,right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils(
                            fontSize: 13,
                            text: "4.8",
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        Icon(Icons.star,size: 13,color: Colors.white,),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}




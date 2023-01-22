import 'package:flutter/material.dart';

import '../model/similarproductmodel.dart';
import '../rowbuilder.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.whatsapp,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Text('WhatsAppShop')
          ],
        )),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'mesh-staff-chair-blackplum-velvet',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          child:   Image(
            image: AssetImage('images/mobile.jpg'),fit: BoxFit.fill,
          ),
        ),
          Divider(
            color: Colors.black26,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MRP :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        Text('₹6800',
                            style: (TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2,))),
                        Text(
                          '₹4800 ',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'instock',
                      style: TextStyle(color: Colors.green),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black26)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Row(
                          children: [
                            Text('Qty:'),
                            Text('1'),
                            Icon(Icons.arrow_drop_down_sharp),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'ADD to cart',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Buy now',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Quick Review',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                'Staff-chair',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Similar Product',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'View all',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   child: Expanded(
          //     child: Container(
          //       // color: Colors.red,
          //       height: 130,
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: similarproduct.length,
          //         scrollDirection: Axis.horizontal,
          //
          //         itemBuilder: (context, index) {
          //           var product=similarproduct[index];
          //           return Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 5),
          //             child: Container(
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                       topLeft: Radius.circular(10),
          //                       topRight: Radius.circular(10))),
          //               width: 130,
          //               child: Column(
          //                 children: [
          //                   Container(
          //                     height: 90,
          //                     decoration: BoxDecoration(
          //                         image: DecorationImage(
          //                             image: AssetImage('${product.image}'),
          //                             fit: BoxFit.cover),
          //                         color: Colors.black,
          //                         borderRadius: BorderRadius.only(
          //                             topLeft: Radius.circular(10),
          //                             topRight: Radius.circular(10))),
          //                   ),
          //                   Text('${product.pname}'),
          //
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     children: [
          //                       Text(
          //                         '${product.Price}',
          //                         style: TextStyle(color: Colors.green),
          //                       ),
          //                       Text(
          //                         '200h',
          //                         style: TextStyle(
          //                             decoration: TextDecoration.lineThrough,
          //                             decorationThickness: 2),
          //                       ),
          //                     ],
          //                   ),
          //
          //                 ],
          //               ),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),



          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: RowBulider(itemCount: similarproduct.length,itemBuilder: (context, index) {
                var product=similarproduct[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    width: 130,
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('${product.image}'),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Text('${product.pname}'),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${product.Price}',
                              style: TextStyle(color: Colors.green),
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },),
            ),
          ),
        ],
      ),
    );
  }
}

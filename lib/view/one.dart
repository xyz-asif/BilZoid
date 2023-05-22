import '../screens/maintain/imports.dart';



void main(){
  runApp(GetMaterialApp(home: B(),));
}







class CartProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

 
      
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: h/6,decoration: const BoxDecoration(     
              color: Color(0xFFB98434),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color : Color.fromARGB(118, 75, 75, 77),
                  spreadRadius: 5,
                  blurRadius: 24,
                  offset: Offset(4, 12)
                )
              ]  
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [       
           Padding(
             padding: const EdgeInsets.only(left:16.0,top: 14),
             child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
              children: [
                  Text("jh",style: TextStyle(fontFamily: 'peb',fontSize: h/34),),
               Container(
                height: h/25,
                  width: w/4.5,
                  decoration: const BoxDecoration(
           
                borderRadius: BorderRadius.all(Radius.circular(7))),
                child:             Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [   
                    Text("stock",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500),),
                   Text("cost",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500),),           
                  ],),
                ),
                   Container(
                    
                height: h/25,
                  width: w/4.5,
                  decoration: const BoxDecoration(
           
                borderRadius: BorderRadius.all(Radius.circular(7))),
                child:             Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [   
               
                      Text(22.toString(),style: TextStyle(fontFamily: 'lb',fontSize: 13)),
                     Text(546.toString(),style: TextStyle(fontFamily: 'lb',fontSize: 13)),
                  ],),
                ),
                
             ],),
           ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: h/22,
                width: w/3,
                decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                Icon(Icons.remove,color: Colors.white,),
               VerticalDivider(color:Colors.grey),
                Text("4",style: TextStyle(color: Colors.white,),),
                VerticalDivider(color:Colors.grey),
                Icon(Icons.add,color: Colors.white,),
              ],),),
            )
           ],)
          ],
        ),
        ),
      ),
       ) );
  }
}


class Billy extends StatelessWidget {
  var customer,phone,date,amount ;
   Billy({super.key,required this.amount,required this.customer,required this.date,required this.phone});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;


    return 
       Padding(
        padding: const EdgeInsets.only(top:108.0,right: 28),
        child: Container(
            height: h/6,decoration: const BoxDecoration(     
                color: Color(0xFFB98434),
                borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight:  Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    color : Color.fromARGB(118, 75, 75, 77),
                    spreadRadius: 5,
                    blurRadius: 24,
                    offset: Offset(4, 12)
                  )
                ]  
                ),
          child: Row(
            children:  [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(date.toString()),
                     SizedBox(
                      height: h/18,
                     ),
                     Text(name.toString()),
                     Text(phone.toString())

                    ],
                  ),
                ),
              ),
               Expanded(child: Container()),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Invoice : 4563"),

                       Text(amount.toString(),style: TextStyle(fontFamily: "lb",fontSize: 30),),
                      ],
                    ),
                  ),
                ),
                 Container(
                 height: 25,
                 width: 10,
                 color: Colors.black,
                 ),
            ],
          ),
        ),
      );
    
  }
}




//    var center = Center(
//         child: Container(
//           decoration: const BoxDecoration(
//               color: Color(0xFFB98434),
//               borderRadius: BorderRadius.all(Radius.circular(20))),
//           height: h / 20,
//           width: w / 2.5,
//           child: Row(children: [
//             Container(
//                height: h / 20,
//                width: w / 11,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                   color: Colors.black,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(6.0),
//                 child: Image.asset("assets/google.png",height: 25,width: 25,),
//               ),
//             ),
//             const Expanded(child: Center(child: Text("SIGN UP    ",style: TextStyle(fontFamily: 'psb',),)))
//           ]),
//         ),
//       );

// Lottie.asset('assets/cart.zip' , 
//   height: 150,
//   fit: BoxFit.fill,);


// Text("WEL \nCOME",style: TextStyle(fontFamily: 'peb',fontSize: 44),);

class Field extends StatelessWidget {



  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    final a = Get.put(Cart());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() async{
      // await  a.make();
      })),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(child: TextField(
  decoration: InputDecoration(filled: true,
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromARGB(0, 255, 255, 255), width: 2.0),
            borderRadius: BorderRadius.circular(23.0),
          ),
   hintText: "Name",
    fillColor: Color(0xFFBF3F8FF),
    enabledBorder: OutlineInputBorder(
     borderRadius: BorderRadius.circular(23.0),
      borderSide: BorderSide( color: Color(0xFFBF3F8FF),)
    ),
    prefixIcon: Icon(Icons.phone_android_rounded),
  ),
),),
      )),
    );
  }
}



class B extends StatelessWidget {
  const B({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(


      child: Row(
        children:  [
         
     Flexible(flex:1,child: Container(width: w/2,   height: h/6,  decoration: const BoxDecoration(
                                color: Color(0xFFB98434),
                               borderRadius:
                               BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))),
  child:
      
       Padding(
         padding:  EdgeInsets.only(right:w/5),
         child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     
           children: [

            Wrap(
              children: [
                Text("Asifulla",
         style: TextStyle(
         fontFamily: 'peb', fontSize: h / 35)),
              ],
            ),




Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Text("stock"),

    Text("cost")
  ],
),


Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Text("453"),
    
    Text("2657")
  ],
),


         
           ],
         ),
       ),)),

     Flexible(flex:1,child: Container(width: w/2, decoration: const BoxDecoration(
                                color: Color(0xFFB98434),
                               borderRadius:
                               BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8))),  height: h/6,child: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom:12.0),
          child: Container(
                                            height: 50,
                                  width: w/2.2,
            
            decoration:  BoxDecoration(
                                  color: Colors.black,
                                 borderRadius:
                                 BorderRadius.circular(8)),
  child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  // a.minus(k);
                                                  // a.total();
                                                },
                                                icon: const Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10.0, bottom: 10),
                                              child: VerticalDivider(
                                                  color: Color.fromARGB(255, 92, 87, 87)),
                                            ),
                                            // Obx(() => a.v[index] == null
                                            //     ? const Text("0")
                                            //     : Text(
                                            //         "hg",
                                            //         style: TextStyle(color: Colors.white),
                                            //       )),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10.0, bottom: 10),
                                              child: VerticalDivider(
                                                  color: Color.fromARGB(255, 92, 87, 87)),
                                            ),
                                                        
                                            IconButton(
                                                onPressed: () {
                                                  // a.increment(k);
                                                  // a.total();
                                                },
                                                icon: const Icon(Icons.add,
                                                    color: Colors.white)),
                                          ],
                                        ),),
        )
      ],
     ),)),



        ],
      )
      ),
    );
  }
}
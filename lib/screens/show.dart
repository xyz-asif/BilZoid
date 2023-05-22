import 'package:cart/screens/maintain/imports.dart';

// // todo this is basically the carted file ...mow you  should alter it

// TextEditingController name = TextEditingController();
// TextEditingController less = TextEditingController();
// TextEditingController search = TextEditingController();

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   Widget build(BuildContext context) {
//     final a = Get.put(Cart());

//     return Scaffold(
//       appBar: AppBar(
//         title: Obx(() => Text(a.full.toString())),
//         leading: ElevatedButton(
//           onPressed: (() {
//             // a.it();
//           }),
//           child: const Text("Add"),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {

//         // a.make();
//         // a.getcategory();
//         // Get.defaultDialog(
//         //     title: "Alert",
//         //     content: Column(
//         //       children: [
//         //         TextField(
//         //           controller: name,
//         //           decoration: const InputDecoration(label: Text("name")),
//         //         ),
//         //         TextField(
//         //           controller: less,
//         //           decoration: const InputDecoration(label: Text("number")),
//         //         ),
//         //         ElevatedButton(
//         //             onPressed: () async {
//         //               await a.change();

//         //               topdf();
//         //             },
//         //             child: const Text("click")),
//         //       ],
//         //     ));
//       }),
//       body: ListView(

//         children: [
//           // TextField(controller: search,onChanged: (search){a.getsearch(search);},),
// ElevatedButton(onPressed: (){
//   // Get.to(Search());
// }, child: const Text("other")),

//           SizedBox(
//             height: MediaQuery.of(context).size.height/2,
//             child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
//               stream: FirebaseFirestore.instance.collection('products').snapshots(),
//               builder: (_, snapshot) {
//                 if (snapshot.hasError) return Text('Error = ${snapshot.error}');

//                 if (snapshot.hasData) {
//                   final docs = snapshot.data!.docs;
//                   return ListView.builder(
//                     itemCount: docs.length,
//                     itemBuilder: (_, i) {
//                       final data = docs[i].data();
//                       Product x = Product.fromMap(data);
//                       return Padding(
//                         padding: const EdgeInsets.all(12.0),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Text(x.name.toString()),
//                                 Text(x.cost.toString()),
//                                 IconButton(
//                                     onPressed: () {
//                                       a.addProduct(x);
//                                       a.total();
//                                     },
//                                     icon: Icon(Icons.add)),
//                                 Obx(() => a.cart[x] == null
//                                     ? Text("0")
//                                     : Text(a.cart[x].toString())),
//                                 IconButton(
//                                     onPressed: () {
//                                       a.minus(x);
//                                       a.total();
//                                     },
//                                     icon: const Icon(Icons.remove)),
//                               ],
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 }

//                 return const Center(child: CircularProgressIndicator());
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ageController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late Stream<QuerySnapshot> _stream;
  var asif = "asif";
  @override
  void initState() {
    super.initState();
    _stream = firestore
        .collection('users')
        .where('name', isEqualTo: asif)
        .snapshots();
  }

  @override
  void dispose() {
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: ageController,
              decoration: const InputDecoration(
                labelText: 'Enter your age',
              ),
              onChanged: (value) {
                setState(() {
                  _stream = firestore
                      .collection('users')
                      .where('name', isEqualTo: value)
                      .snapshots();
                });
              },
            ),
            const SizedBox(height: 16),
            StreamBuilder<QuerySnapshot>(
              stream: _stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                final List<QueryDocumentSnapshot> documents =
                    snapshot.data!.docs;
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    final data = documents[index].data();
                    return ListTile(
                      title: Container(
                        color: Colors.teal,
                        height: 50,
                        width: 50,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

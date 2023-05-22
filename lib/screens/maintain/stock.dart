import 'package:cart/screens/maintain/imports.dart';

var name = TextEditingController();
var cost = TextEditingController();
var stock = TextEditingController();
var category = TextEditingController();

var nameb = TextEditingController();
var costb = TextEditingController();
var stockb = TextEditingController();

class Stock extends StatelessWidget {
  const Stock({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance
            .collection(FirebaseAuth.instance.currentUser!.uid.toString())
            .snapshots(),
        builder: (_, snapshot) {
          if (snapshot.hasError) return Text('Error = ${snapshot.error}');

          if (snapshot.hasData) {
            final docs = snapshot.data!.docs;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: docs.length,
              itemBuilder: (_, i) {
                final data = docs[i].data();
                return GestureDetector(
                  onTap: (() {
                    name.text = data["name"];
                    cost.text = data["cost"].toString();
                    category.text = data["category"].toString();
                    stock.text = data["stock"].toString();

                    Get.dialog(Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Material(child: TextField(controller: name)),
                            Material(child: TextField(controller: cost)),
                            Material(
                                child: TextField(
                              controller: stock,
                            )),
                            Material(
                                child: TextField(
                              controller: category,
                            )),
                            ElevatedButton(
                                onPressed: () async {
                                  await FirebaseFirestore.instance
                                      .collection(FirebaseAuth
                                          .instance.currentUser!.uid
                                          .toString())
                                      .doc(docs[i].id)
                                      .update({
                                    "name": name.text,
                                    "cost": cost.text,
                                    "stock": stock.text,
                                    "category": category.text
                                  });
                                  print("updated--------------");
                                  Get.back();
                                },
                                child: Text("Update"))
                          ],
                        ),
                      ),
                    ));
                  }),
                  child: Card(
                    child: ListTile(
                      leading: Text(data["stock"].toString()),
                      title: Text(data['name']),
                      subtitle: Text(data['category']),
                      trailing: Text(data["cost"].toString()),
                    ),
                  ),
                );
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Future<void> editProduct(int age, String id) async {
        await FirebaseFirestore.instance
            .collection(FirebaseAuth.instance.currentUser!.uid.toString())
            .doc(id)
            .update({"age": age});
      }

      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Do it"),
    content: Column(
      children: [
        TextField(controller: name),
        TextField(controller: cost),
        TextField(
          controller: stock,
        ),
        TextField(
          controller: category,
        )
      ],
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

import 'package:flutter/material.dart';
import 'package:project/controller/product_controller.dart';
import 'package:project/model/product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// check uncheck for the favourite button
  ProductController controller = ProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.safety_check, color: Colors.red),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.add,
              color: Colors.red,
            )
          ],
          title: const Text(
            "हामि नेपालि",
            style: TextStyle(
                color: Colors.red, fontSize: 13.0, fontWeight: FontWeight.bold),
          )),
      body: Column(children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 14, right: 14, top: 14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.green),
          child: Row(
            children: [
              Image.network(
                "data:image/jpeg;base64,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",
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 14),
              Column(
                children: [
                  const Text("hey,I am Ashish Raj Poudel"),
                  const Text("syangja,Gandaki Nepal"),
                  const Text("9800000000"),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdKK2VJZoE8NZymPqhOzFL3MgNkm0pi59qg&s",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.myProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) =>
                card(controller.myProducts[index], controller, index),
          ),
        )
      ]),
    );
  }

  Container card(Product product, ProductController controller, int index) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                product.productImage ?? "Image Upload",
                height: 140,
                width: 200,
                fit: BoxFit.fitWidth,
              )),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text("product name: ${product.name}")),
                      Text("RS.${product.price}"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity  ${product.quantity}",
                        style: TextStyle(fontSize: 12),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                controller.toggleFavorite(index);
                              });
                            },
                            child: Icon(
                              product.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Icon(
                            Icons.add_shopping_cart,
                            color: Colors.indigo,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

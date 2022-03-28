part of 'pages.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
        name: "Gula Pasir",
        merk: "Gulaku",
        stok: 52,
        price: 18500,
        image: 'assets/images/gulaku.jpg'),
    Product(
        name: "Garam",
        merk: "Kapal Pesiar",
        stok: 24,
        price: 1000,
        image: 'assets/images/kapal.jpg'),
    Product(
        name: "Beras",
        merk: "Mentari",
        stok: 50,
        price: 55000,
        image: 'assets/images/beras.jpg'),
    Product(
        name: "Minyak Goreng",
        merk: "Sanco",
        stok: 0,
        price: 15000,
        image: 'assets/images/minyak.jpg'),
    Product(
        name: "InDomie",
        merk: "banyak",
        stok: 34,
        price: 5000,
        image: 'assets/images/indomie.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 227, 255),
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/products', arguments: product);
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(product.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300))),
                      Expanded(
                          child: Text(
                        "Rp. " + product.price.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.end,
                      )),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

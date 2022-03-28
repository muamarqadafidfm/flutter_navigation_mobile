part of 'pages.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product productArgs =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 9, 70),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(productArgs.name + ' with ' + productArgs.price.toString(),
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 211, 255, 238))),
              Text("Stok : " + productArgs.stok.toString(),
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 222, 255, 32))),
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(productArgs.image)),
            ],
          ),
        ));
  }
}

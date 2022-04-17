import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(my_app());
}

class my_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'List of Restaurant',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('List of Restaurant'),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Nhà hàng Cung Đình'),
                    subtitle: Text(
                        'Địa chỉ: 03 Nguyễn Sinh Sắc, Vỹ Dạ, Vĩ Dạ TP Huế, Thừa Thiên Huế'),
                    trailing: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
                color: Colors.green,
              ),
              Container(
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Nhà hàng – Cà phê Tịnh Lâm Nhi'),
                    subtitle: Text('Địa chỉ: 112A Trường Chinh, Tp. Huế, Huế'),
                    trailing: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
                color: Colors.red,
              ),
              Container(
                child: Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Nhà hàng chân đồi'),
                    subtitle: Text(
                        'Địa chỉ: Kiet 65 Lê Ngô Cát, Thủy Xuân, Thành phố Huế, Thừa Thiên Huế'),
                    trailing: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
                color: Colors.amber,
              ),
            ],
          ),
        ),
      );
}

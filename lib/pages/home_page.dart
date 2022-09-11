import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_card.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page Controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home),iconSize: 30,color: Colors.pink[400],),
            IconButton(onPressed: (){}, icon: Icon(Icons.money),iconSize: 30,),
            IconButton(onPressed: (){}, icon: Icon(Icons.payment),iconSize: 30,),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings),iconSize: 30,),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:[
                      Text("My",
                        style: TextStyle(fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(" Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: EdgeInsets.all(4),
                      child: Icon(Icons.add),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.circular
                  ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 25),

            //cards
            Container(
              height: 200,
             child: PageView(
               scrollDirection: Axis.horizontal,
               controller: _controller,
               children: [
                 MyCard(
                   balance: 5698.30,
                   cardNumber: 12345678,
                   expiryMonth: 8,
                   expiryYear: 25,
                   color: Colors.blue,
                 ),
                 MyCard(
                   balance: 9898.30,
                   cardNumber: 98345678,
                   expiryMonth: 7,
                   expiryYear: 22,
                   color: Colors.purple[300],
                 ),
                 MyCard(
                   balance: 4598.30,
                   cardNumber: 45345678,
                   expiryMonth: 6,
                   expiryYear: 23,
                   color: Colors.red[600],
                 ),

               ],
             ),
            ),
            SizedBox(height: 25,),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            SizedBox(height: 25,),


            //3 buttons --> send + pay+ bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(iconImagePath: 'lib/icons/send-money.png',buttonText: 'send',),

                  //pay button
                  MyButton(buttonText: 'Pay', iconImagePath: 'lib/icons/credit-card.png'),

                  //bills button
                  MyButton(buttonText: 'Bill', iconImagePath: 'lib/icons/bill.png'),
                ],
              ),
            ),


            //column of stuff
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children:[
                  //Statistics
                  MyListTile(iconImagePath: 'lib/icons/statistics.png', tileTitle: 'Statistics', tileSubTitle: 'Payments and Income'),
                  SizedBox(height: 10,),
                  MyListTile(iconImagePath: 'lib/icons/transaction.png', tileTitle: 'Transactions', tileSubTitle: 'Transaction history'),


                  //Transactions
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

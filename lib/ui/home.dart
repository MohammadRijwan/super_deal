import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Text(
                'Super Offer',
                style: GoogleFonts.share(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 20.0,
            ),
            Icon(
              Icons.person_outline_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.0,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                childAspectRatio: 0.58,
                children: [
                  OfferCard(
                    title: 'New Arrival\nBest Deal',
                    subTitle: '50% Offer',
                  ),
                  OfferCard(
                    title: 'Mi Pro Max \nNew Arrival',
                    subTitle: 'Best Discount on Mi Brand',
                    imageUrl:
                        'https://images.unsplash.com/photo-1551721434-8b94ddff0e6d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80',
                    colors: [
                      Colors.pink.shade700,
                      Colors.pink.shade400,
                      Colors.pink.shade200,
                      Colors.pink,
                    ],
                  ),
                  OfferCard(
                    title: 'IPhone 11 Max \nTop Deal',
                    subTitle: '10% Offer on Cash Payment',
                    imageUrl:
                        'https://images.unsplash.com/photo-1523206489230-c012c64b2b48?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                    colors: [
                      Colors.green.shade700,
                      Colors.green.shade400,
                      Colors.green.shade200,
                      Colors.green,
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Deal of the Day',
                    style: GoogleFonts.aBeeZee(fontSize: 20.0),
                  ),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 20.0, color: Colors.blue),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: DealCard()),
                Expanded(
                    child: DealCard(
                  label: 'Samsung Max',
                  price: 'Rs 12590.00',
                  imageUrl:
                      'https://images.unsplash.com/photo-1455762279210-ae6b56c7ad7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHw4NDF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: DealCard(
                  label: 'IPhone 12',
                  price: 'Rs 1,20,450.00',
                  imageUrl:
                      'https://images.unsplash.com/photo-1495564103921-67412af57da3?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NnwzMDYyNTJ8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                )),
                Expanded(
                    child: DealCard(
                  label: 'MAC M1 Core i9',
                  price: '2,50,200.00',
                  imageUrl:
                      'https://images.unsplash.com/photo-1491336238524-c990bd671778?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTd8MzA2MjUyfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String? title;
  final Function? onTap;
  final String? subTitle;
  final String? imageUrl;
  List<Color>? colors;
  OfferCard({
    Key? key,
    this.title,
    this.onTap,
    this.subTitle,
    this.imageUrl,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(
                    colors: colors ??
                        [
                          Colors.lightBlue.shade900,
                          Colors.lightBlue.shade800,
                          Colors.lightBlue.shade600,
                          Colors.lightBlue,
                        ])),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              title ?? 'Women\'s \nFashion',
              style: GoogleFonts.share(
                  fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 100.0),
            child: Container(
              height: 45.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  'Shop Now',
                  style: GoogleFonts.actor(
                      fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Text(
              subTitle ?? 'Best Discounts on Brands',
              style: GoogleFonts.aBeeZee(fontSize: 18.0),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Container(
              height: 200.0,
              width: 120.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: Image.network(
                      imageUrl ??
                          'https://images.unsplash.com/photo-1564583138697-34f7b7488f94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80',
                    ).image,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class DealCard extends StatelessWidget {
  final String? imageUrl;
  final String? label;
  final String? price;
  final String? discount;

  const DealCard(
      {Key? key, this.imageUrl, this.label, this.price, this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 250.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.blue, width: 2.0),
                gradient: LinearGradient(colors: [
                  Colors.deepPurpleAccent,
                  Colors.deepPurpleAccent.shade700
                ])),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 180.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: Image.network(
                      imageUrl ??
                          'https://images.unsplash.com/photo-1564583138697-34f7b7488f94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80',
                    ).image,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
            left: 20.0,
            bottom: 35.0,
            child: Text(
              label ?? 'Mi Max Pro',
              style: GoogleFonts.actor(
                  fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            left: 20.0,
            bottom: 10.0,
            child: Row(
              children: [
                Text(
                  price ?? 'Rs 11,295.00',
                  style: GoogleFonts.actor(
                      color: Colors.yellowAccent,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

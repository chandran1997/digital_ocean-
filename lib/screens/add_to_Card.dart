import 'package:flutter/material.dart';

class AddToCard extends StatefulWidget {
  const AddToCard({Key? key}) : super(key: key);

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: BrandName(context),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomCard(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
            ],
          ),
        ),
      ),
    );
  }
}

class cards extends StatefulWidget {
  const cards({
    Key? key,
  }) : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Dismissible(
        direction: DismissDirection.startToEnd,
        key: ValueKey(toString()),
        background: Container(
          decoration: BoxDecoration(
            color: Colors.green[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1599669454699-248893623440?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGhlYWRwaG9uZXN8ZW58MHx8MHx8&w=1000&q=80'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Wireless headphone  \n\n',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: '\$69.88 \n',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: (() {
                                setState(() {
                                  if (i == 0) {
                                    return;
                                  } else {
                                    i--;
                                  }
                                });
                              }),
                              icon: Icon(
                                Icons.minimize,
                                size: 15,
                              ),
                            ),
                            Text('$i'),
                            IconButton(
                              onPressed: (() {
                                setState(() {
                                  i++;
                                });
                              }),
                              icon: Icon(
                                Icons.add,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget BrandName(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text.rich(
        TextSpan(
            text: 'Add TO Card \n',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: '2 Items',
                style: TextStyle(fontSize: 10),
              )
            ]),
      ),
    ],
  );
}

Widget BottomCard(BuildContext context) {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      color: Colors.green[100],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text.rich(
            TextSpan(
              text: 'Total\n',
              children: [
                TextSpan(
                  text: '\$200.00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                'Order',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

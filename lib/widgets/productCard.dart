import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/utils/constants.dart';

class ProductCard extends StatefulWidget {
  final String imgpath;
  final double price;
  final String name;
  final int star;
  final bool fav;

  const ProductCard(
      {super.key,
      required this.imgpath,
      required this.price,
      required this.name,
      required this.star,
      required this.fav});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool qtd = false;
  TextEditingController textController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Card(
          elevation: 2,
          color: productColor,
          child: Column(
            children: [
              SizedBox(
                width: size.width * .45,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: constraints.maxWidth * .4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: size.height * .150,
                              width: constraints.maxWidth * .4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(widget.imgpath,
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ],
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                      child: Text(
                                        "MZN ${widget.price}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: CircleAvatar(
                                        backgroundColor: whiteColor,
                                        child: InkWell(
                                          child: Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: widget.fav
                                                  ? Colors.red
                                                  : secundaryColor,
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            widget.name,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        _stars(widget.star),
                                        Visibility(
                                          visible: !qtd,
                                          child: SizedBox(
                                            height: 38,
                                            width: 70,
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                side: BorderSide(
                                                    color: primaryColor,
                                                    width: 1),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  qtd = !qtd;
                                                });
                                              },
                                              child: Text(
                                                "Add",
                                                style: TextStyle(
                                                    color: primaryColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                            visible: qtd,
                                            child: GestureDetector(
                                                onTap: () {},
                                                child: SizedBox(
                                                    height: 38,
                                                    child: textfiledQTD(
                                                        textController))))
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _stars(int star) {
    if (star >= 0 && star <= 5 && star is String) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < star; i++)
              Icon(
                Icons.star_rate,
                size: 15,
                color: Colors.yellow[600],
              ),
            for (int i = 0; i < 5 - star; i++)
              Icon(
                Icons.star_rate,
                size: 15,
                color: secundaryColor,
              ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  Widget textfiledQTD(TextEditingController textController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.do_disturb_on_rounded,
          color: primaryColor,
        ),
        SizedBox(
          height: 25,
          width: 50,
          child: TextField(
            onTapOutside: (event) {
              setState(() {
                qtd = !qtd;
              });
            },
            onChanged: (value) {
              if (value.length > 2) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("O seu limite maximo de pedidos é 99"),
                ));
                setState(() {
                  textController.text = '';
                });
              }
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusColor: primaryColor,
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: primaryColor),
                  borderRadius: BorderRadius.circular(5)),
              hintStyle: TextStyle(color: Colors.grey[800]),
            ),
          ),
        ),
        Icon(
          Icons.add_circle_sharp,
          color: primaryColor,
        )
      ],
    );
  }
}

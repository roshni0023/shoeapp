
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF696D77), Color(0xFF292C36)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: Size(20.0),
                ),
                onPressed: () {},
              ),
              title: Text("Energy Cloud",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: FontSize(18.0),
                      fontFamily: "Montserrat-Bold")),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: Size(20.0),
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ProductScreenTopPart(),
                  ProductScreenBottomPart()
                ],
              ),
            )));
  }
}

class ProductScreenTopPart extends StatefulWidget {
  @override
  _ProductScreenTopPartState createState() => new _ProductScreenTopPartState();
}

class _ProductScreenTopPartState extends State<ProductScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: Size(245.0),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset("assets/image/blackshoe.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 35.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: Size(50.0),
                    height: Size(50.0),
                    decoration: BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: Image.asset("assets/image/redshoe.png"),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: Size(18.0),
            bottom: Size(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Rating",
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: Size(10.0),
                        fontFamily: "Montserrat-SemiBold")),
                SizedBox(
                  height: Size(8.0),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.star, color: Color(0xFFFFE600)),
                    SizedBox(
                      width: Size(5.0),
                    ),
                    Text("4.5", style: TextStyle(color: Color(0xFFFFE600))),
                    SizedBox(
                      width: Size(5.0),
                    ),
                    Text("(378 People)",
                        style: TextStyle(color: Colors.white, fontSize: 14.0))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductScreenBottomPart extends StatefulWidget {
  @override
  _ProductScreenBottomPartState createState() =>
      new _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  bool isExpanded = false;
  int currentSizeIndex = 0;
  int currentColorIndex = 0;
  int _counter = 0;

  void _increase() {
    setState(() {
      _counter++;
    });
  }

  void _decrease() {
    setState(() {
      _counter--;
    });
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  List<Widget> colorSelector() {
    List<Widget> colorItemList = new List();

    for (var i = 0; i < colors.length; i++) {
      colorItemList
          .add(colorItem(colors[i], i == currentColorIndex, context, () {
        setState(() {
          currentColorIndex = i;
        });
      }));
    }

    return colorItemList;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0)),
            child: Text(
              "Product Description",
              style: TextStyle(
                  color: Color(0xFF949598),
                  fontSize: Size(10.0),
                  fontFamily: "Montserrat-SemiBold"),
            ),
          ),
          SizedBox(
            height: Size(8.0),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Size(26.0),
                right: Size(18.0)),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Size(10.0),
                    fontFamily: "Montserrat-Medium"),
              ),
              secondChild: Text(
                desc,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Size(10.0),
                    fontFamily: "Montserrat-Medium"),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: kThemeAnimationDuration,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Size(26.0),
                right: Size(18.0)),
            child: GestureDetector(
                onTap: _expand,
                child: Text(
                  isExpanded ? "less" : "more..",
                  style: TextStyle(
                      color: Color(0xFFFB382F), fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(
            height: Size(12.0),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Size(15.0),
                right: Size(75.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Size",
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: Size(10.0),
                        fontFamily: "Montserrat-SemiBold")),
                Text("Quantity",
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: Size(10.0),
                        fontFamily: "Montserrat-SemiBold"))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Size(20.0),
                right: Size(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: Size(38.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: sizeNumlist.map((item) {
                      var index = sizeNumlist.indexOf(item);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSizeIndex = index;
                          });
                        },
                        child:
                        sizeItem(item, index == currentSizeIndex, context),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: Size(100.0),
                    height: Size(30.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF525663),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _decrease,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text("-",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontFamily: "Montserrat-Bold")),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: Container(
                            height: double.infinity,
                            child: Center(
                              child: Text(_counter.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: "Montserrat-Bold")),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _increase,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text("+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontFamily: "Montserrat-Bold")),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0)),
            child: Text("Select Color",
                style: TextStyle(
                    color: Color(0xFF949598),
                    fontSize: Size(10.0),
                    fontFamily: "Montserrat-SemiBold")),
          ),
          SizedBox(
            height: screenAwareSize(8.0),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: Size(20.0)),
            height: Size(34.0),
            child: Row(
              children: colorSelector(),
            ),
          ),
          SizedBox(
            height: Size(8.0),
          ),
          Padding(
            padding: EdgeInsets.only(left: Size(20.0)),
            child: Text("Price",
                style: TextStyle(
                    color: Color(0xFF949598),
                    fontFamily: "Montserrat-SemiBold")),
          ),
          Container(
            width: double.infinity,
            height: sSize(120.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:
                  Size(22.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: Size(18.0, context)),
                        child: Row(
                          children: <Widget>[
                            Text("\$",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Size(26.0),
                                    fontFamily: "Montserrat-Medium")),
                            SizedBox(width: Size(2.0)),
                            Text("80",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Size(35.0),
                                    fontFamily: "Montserrat-Medium"))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Size(10.0),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: MaterialButton(
                          color: Color(0xFFFB382F),
                          padding: EdgeInsets.symmetric(
                            vertical: Size(14.0),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenAwareSize(35.0)),
                              child: Text("Add To Cart",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Size(15.0))),
    ),
    ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -40.0,
                  bottom: -60.0,
                  child: Image.asset("assets/cart.png",
                      width: Size(190.0),
                      height: Size(155.0),
                      fit: BoxFit.cover),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget sizeItem(String size, bool isSelected, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Container(
      width: Size(30.0),
      height: Size(30.0),
      decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFC3930) : Color(0xFF525663),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color:
                isSelected ? Colors.black.withOpacity(.5) : Colors.black12,
                offset: Offset(0.0, 10.0),
                blurRadius: 10.0)
          ]),
      child: Center(
        child: Text(size,
            style:
            TextStyle(color: Colors.white, fontFamily: "Montserrat-Bold")),
      ),
    ),
  );
}

Widget colorItem(
    Color color, bool isSelected, BuildContext context, VoidCallback _ontab) {
  return GestureDetector(
    onTap: _ontab,
    child: Padding(
      padding: EdgeInsets.only(left: Size(10.0)),
      child: Container(
        width: Size(30.0, context),
        height: Size(30.0, context),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: isSelected
                ? [
              BoxShadow(
                  color: Colors.black.withOpacity(.8),
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0))
            ]
                : []),
        child: ClipPath(
          clipper: MClipper(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: color,
          ),
        ),
      ),
    ),
  );
}

class MClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    child: Container(
      width: 0.8,
      color: Colors.black,
    ),
  );
}

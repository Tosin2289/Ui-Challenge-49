import "package:flutter/material.dart";
//import /package:battery_indicator/battery_indicator.dart/;

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ukit2(),
  ));
}

class ukit2 extends StatefulWidget {
  const ukit2({Key? key}) : super(key: key);

  @override
  State<ukit2> createState() => _ukit2State();
}

class _ukit2State extends State<ukit2> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> screen = <Widget>[
    const Screen1(),
    const Text(
      "Index 1: Business",
      style: optionStyle,
    ),
    const Text(
      "Index 2: School",
      style: optionStyle,
    ),
    const Text(
      "Index 3: Settings",
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          child: screen.elementAt(_selectedIndex),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help_outline_outlined,
                size: 30,
                color: Colors.black,
              ),
              label: "Help",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.filter_none_sharp,
                color: Colors.black,
              ),
              label: "Library",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_customize_outlined,
                color: Colors.black,
              ),
              label: "Dashboard",
              backgroundColor: Colors.white),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 30, top: 25),
              height: size.height / 3.2,
              width: size.width,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.indigo[400],
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.white,
                      ),
                      Container(
                        height: size.width / 9,
                        width: size.width / 9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/kid.jpg"))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 10,
                    width: size.width / 2,
                    //color: Colors.amber,
                    child: const Text(
                      "For successful startups interact",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
                top: 125,
                right: 30,
                child: Icon(
                  Icons.add_comment_outlined,
                  color: Colors.white,
                  size: 30,
                )),
            Positioned(
                top: 190,
                left: 33,
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  height: size.width / 3,
                  width: size.width - 65,
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Startups",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.5),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Don/t forget to mention the qualities you want them to find.",
                        style: TextStyle(color: Colors.white, letterSpacing: 1),
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                height: size.height / 2.1,
                width: size.width, //color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Invested Startups",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                        leading: Container(
                          //height: size.width/4,
                          width: size.width / 7.5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/m.jpg"))),
                        ),
                        title: const Text(
                          "FaceMood",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "image processing",
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        trailing: Icon(
                          Icons.add_box_rounded,
                          color: Colors.indigo[100],
                          size: 35,
                        ),
                        selected: true,
                        //selectedTileColor: Colors.grey.withOpacity(0.1),
                        //contentPadding: EdgeInsets.all(10),
                        dense: true,
                        enabled: true, //true hoi to j tab thai
                        //isThreeLine: true,
                        onLongPress: () {
                          print("hello");
                          //selected: true;
                        }),
                    ListTile(
                      leading: Container(
                        //height: size.width/4,
                        width: size.width / 7.5,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/d.jpg"))),
                      ),
                      title: const Text(
                        "T-Fashion",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Human resources",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      trailing: Icon(
                        Icons.add_box_rounded,
                        color: Colors.indigo[100],
                        size: 35,
                      ),
                      selected: true,
                      //selectedTileColor: Colors.grey.withOpacity(0.1),
                      //contentPadding: EdgeInsets.all(10),
                      dense: true,
                      enabled: true, //true hoi to j tab thai
                      //isThreeLine: true,
                      onLongPress: () {
                        print("hello");
                        //selected: true;
                      },
                    ),
                    ListTile(
                      leading: Container(
                        //height: size.width/4,
                        width: size.width / 7.5,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/tele.jpg"))),
                      ),
                      title: const Text(
                        "Designble",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Virtual Reality",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      trailing: Icon(
                        Icons.add_box_rounded,
                        color: Colors.indigo[100],
                        size: 35,
                      ),
                      selected: true,
                      //selectedTileColor: Colors.grey.withOpacity(0.1),
                      //contentPadding: EdgeInsets.all(10),
                      dense: true,
                      enabled: true, //true hoi to j tab thai
                      //isThreeLine: true,
                      onLongPress: () {
                        print("/hello/");
                        //selected: true;
                      },
                    ),
                    ListTile(
                      leading: Container(
                        //height: size.width/4,
                        width: size.width / 7.5,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/h.jpg"))),
                      ),
                      title: const Text(
                        "Monotony",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Entertainment",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      trailing: Icon(
                        Icons.add_box_rounded,
                        color: Colors.indigo[100],
                        size: 35,
                      ),
                      selected: true,
                      //selectedTileColor: Colors.grey.withOpacity(0.1),
                      //contentPadding: EdgeInsets.all(10),
                      dense: true,
                      enabled: true, //true hoi to j tab thai
                      //isThreeLine: true,
                      onLongPress: () {
                        print("hello");
                        //selected: true;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

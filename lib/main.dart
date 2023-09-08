import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

void main() {
  runApp(Praktikum());
}

class TugasTextWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(
        'This is Text Widget',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasMaterialDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            AppBar(title: Text("Contoh Cupertino")),
            CupertinoButton(
              child: Text('Contoh button'),
              onPressed: () {},
            ),
            CupertinoActivityIndicator(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasScaffold extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample Code'),
        ),
        body: Center(
          child: Text('You have pressed the button $_count times.'),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 50.0,
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () => 0,
          tooltip: 'Increment Counter',
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasDialog extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          child: Text("Show alert"),
          onPressed: () {
            showAlertDialog(context);
          }),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class TugasInputdanSelectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh TextField"),
        ),
        body: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama',
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasDatedanTimePickers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Date Picker',
      home: InputSelectionPage(title: 'Contoh Date Picker'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InputSelectionPage extends StatefulWidget {
  InputSelectionPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _InputSelectionPageState createState() => _InputSelectionPageState();
}

class _InputSelectionPageState extends State<InputSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () => {
                    _selectedDate(context),
                    print(selectedDate.day +
                        selectedDate.month +
                        selectedDate.year)
                  },
              child: Text('Pilih Tanggal'))
        ],
      )),
    );
  }

  DateTime selectedDate = DateTime.now();

  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}

class TugasContainerPropertyChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Button"),
        ),
        body: Container(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.red[900], onPrimary: Colors.white),
            child: Text(
              "Button",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Aligment")),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Semangat Belajar',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Color"),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          height: 200,
          width: 200,
          alignment: Alignment.center,
          color: Colors.amber[900],
          child: Text(
            'Semangat Belajar',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyHeightdanWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Height dan Width"),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          height: 200,
          width: 200,
          alignment: Alignment.center,
          color: Colors.blueGrey,
          child: Text(
            'Semangat Belajar',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyMargin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Margin"),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          height: 200,
          width: 200,
          alignment: Alignment.topLeft,
          color: Colors.blueGrey,
          child: Text(
            'Semangat Belajar Flutter',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Padding"),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.all(50),
          height: 200,
          width: 200,
          alignment: Alignment.topLeft,
          color: Colors.blueGrey,
          child: Text(
            'Ayo Belajar Flutter',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Transform"),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  'https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg'),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
          ),
          height: 200,
          width: 300,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
          transform: Matrix4.rotationZ(-0.1),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasContainerPropertyDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Configuration"),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://pixnio.com/free-images/2018/12/02/2018-12-02-19-17-12.jpg'),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 200,
          width: 300,
          margin: EdgeInsets.all(20),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Column Widget")),
        body: Column(
          children: [
            Container(
              color: Colors.purpleAccent,
              child: FlutterLogo(
                size: 90.0,
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: FlutterLogo(
                size: 90.0,
              ),
            ),
            Container(
              color: Colors.orangeAccent,
              child: FlutterLogo(
                size: 90.0,
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Row Widget")),
        body: Row(
          children: [
            Container(
              color: Colors.purpleAccent,
              child: FlutterLogo(
                size: 90.0,
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: FlutterLogo(
                size: 90.0,
              ),
            ),
            Container(
              color: Colors.orangeAccent,
              child: FlutterLogo(
                size: 90.0,
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Stack Widget")),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.bottomCenter,
              child: Text("Satu",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.bottomCenter,
              child: Text("Dua",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.bottomCenter,
              child: Text("Tiga",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh ListView Widget")),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                  "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.topLeft,
              child: Text(
                  "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.topLeft,
              child: Text(
                  "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TugasGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh GridView Widget"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("1",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: Text("2",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.center,
              child: Text("3",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
            Container(
              color: Colors.blueGrey,
              alignment: Alignment.center,
              child: Text("4",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
            Container(
              color: Colors.cyan[800],
              alignment: Alignment.center,
              child: Text("5",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
            Container(
              color: Colors.yellow[800],
              alignment: Alignment.center,
              child: Text("6",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0,
              width: 200.0,
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Praktikum extends StatelessWidget {
  Praktikum({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts',
      // Set Raleway as the default app font.
      theme: ThemeData(fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // The AppBar uses the app-default Raleway font.
        appBar: AppBar(
          title: Text('Manchester United'),
          backgroundColor: Color.fromARGB(255, 177, 11, 11),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 177, 11, 11),
                              border: Border(
                                right: BorderSide(
                                    width: 4,
                                    color: Color.fromARGB(255, 248, 243, 243)),
                              )),
                          alignment: Alignment.center,
                          height: 40,
                          width: 205.5,
                          child: Text(
                            'News',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
                          ),
                        ),
                        Container(
                          color: Color.fromARGB(255, 177, 11, 11),
                          alignment: Alignment.center,
                          height: 40,
                          width: 205.5,
                          child: Text(
                            'Match',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        banner(),
                        berita(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(3),
          color: Color.fromARGB(255, 177, 11, 11),
          height: 345,
          width: 411,
          alignment: Alignment.bottomLeft,
          child: Text("Transfer",
              style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        Container(
          color: Color.fromARGB(255, 255, 255, 255),
          alignment: Alignment.bottomCenter,
          child: Text("Theatre Of Dreams",
              style: TextStyle(
                  fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                  fontSize: 30,
                  color: Color.fromARGB(255, 0, 0, 0))),
          height: 310.0,
          width: 411,
        ),
        Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage("assets/img/Manchester_United_Old_Trafford.jpg"),
          ),
        ),
      ],
    );
  }
}

class berita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 1),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(
                  top:
                      BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                  right: BorderSide(
                      width: 1, color: Color.fromARGB(255, 0, 0, 0))),
            ),
            alignment: Alignment.center,
            height: 130,
            width: 205,
            child: Text(
              'Usai Jeda Internasional, Manchester United Dapat Tambahan Amunisi di Lini Pertahanan?',
              style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            height: 130,
            width: 205,
            child: Image(
              image: AssetImage("assets/img/Pemain_united.jpg"),
            ),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        alignment: Alignment.centerLeft,
        height: 50,
        width: 410,
        child: Text(
          ' Manchester 9 September 2023',
          style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
        ),
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 1),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(
                  top:
                      BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                  right: BorderSide(
                      width: 1, color: Color.fromARGB(255, 0, 0, 0))),
            ),
            alignment: Alignment.center,
            height: 130,
            width: 205,
            child: Text(
              'Usai Jeda Internasional, Manchester United Dapat Tambahan Amunisi di Lini Pertahanan?',
              style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            height: 130,
            width: 205,
            child: Image(
              image: AssetImage("assets/img/Pemain_united.jpg"),
            ),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        alignment: Alignment.centerLeft,
        height: 50,
        width: 410,
        child: Text(
          ' Manchester 9 September 2023',
          style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
        ),
      ),
    ]);
  }
}

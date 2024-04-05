import 'package:flutter/material.dart';
import 'package:jsonmodalapp/api/api.dart';
import 'package:jsonmodalapp/modal/usermodal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<userModal> res = [];
  var res;
  @override
  void initState() {
    api();

    // TODO: implement initState
    super.initState();
  }

  //
  api() async {
    res = await fetchData();
    setState(() {});
    print(res.runtimeType);
    print(res[0].name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('json serialization'),
        ),
        body: res == null ? Text('') : Text(res[0].name)
        // FutureBuilder<List<userModal>>(
        //   future: fetchData(),
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return ListView.builder(
        //         itemCount: snapshot.data!.length,
        //         itemBuilder: (context, index) {
        //           final user = snapshot.data![index];
        //           return ListTile(
        //             title: Text('ID: ${user.id}'),
        //             subtitle: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text('Name: ${user.name}'),
        //                 Text(
        //                     'Address: ${user.address.street}, ${user.address.city}'),
        //               ],
        //             ),
        //           );
        //         },
        //       );
        //     } else if (snapshot.hasError) {
        //       return Center(
        //         child: Text('Error: ${snapshot.error}'),
        //       );
        //     } else {
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //   },
        // ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

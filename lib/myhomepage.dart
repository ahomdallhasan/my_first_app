import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Homepage",
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Hello 63C",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const Text(
              "Welcome to the homepage",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.cyan,
                elevation: 5,
                child: const Center(child: Text("Card")),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 250,
              width: 300,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(width: 3, color: Colors.cyan),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Container Box",
                style: TextStyle(color: Colors.white),
              ),
              // child: Image.asset("assets/images/flutter.png"),
            ),

            Image.network(
              "https://imgs.search.brave.com/fNGT0Q3O_2Omjv7V4QG1eiKkEwr-1vKJqqOYT2KNN3o/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRpYS5nZXR0eWltYWdl/cy5jb20vaWQvMTEy/ODczMDkyMS9waG90by9ib3ktd29ya2lu/Zy1vbi1jb21wdXRlci5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9QlZqdWZOZmFx/d0RuSVZFN3h0SEc5/UFcxalJTTFZlQWtf/dUtfYjBhbXNETT0",
              height: 200,
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Upload"),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: const [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Homepage"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile Page"),
          ),
        ],
      ),
    );
  }
}
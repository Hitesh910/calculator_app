import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: const [Align(alignment: Alignment.center,),
              ],
              title: const Text("Calc"),
              leading: const Icon(Icons.menu),
              backgroundColor: const Color(0xff54759e),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$i", style: const TextStyle(fontSize: 100,color: Colors.black38)),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {

                        setState(() {
                          i-=2;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xff54759e),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text("- 2", style: TextStyle(fontSize: 30,color: Colors.white)),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          i+=2;
                        });
                      },
                      child:  Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                            color: const Color(0xff54759e),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text("+ 2", style: TextStyle(fontSize: 30,color: Colors.white)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          i-=4;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                            color: const Color(0xff54759e),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text("- 4", style: TextStyle(fontSize: 30,color: Colors.white)),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          i+=4;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                            color: const Color(0xff54759e),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text("+ 4", style: TextStyle(fontSize: 30,color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          i=0;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                            color: const Color(0xff54759e),
                            borderRadius: BorderRadius.circular(15)),
                        child:
                            const Text("Clear", style: TextStyle(fontSize: 30,color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

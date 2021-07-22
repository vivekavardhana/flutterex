import 'package:flutter/material.dart';
import 'widgets/slide0.dart';
import 'widgets/slide1.dart';
import 'widgets/slide2.dart';
import 'widgets/slide3.dart';
import 'widgets/slide4.dart';
import 'widgets/slide5.dart';
import 'widgets/slide6.dart';
import 'widgets/slide7.dart';
import 'widgets/slide8.dart';
import 'widgets/slide9.dart';

class Preamble extends StatefulWidget {
  const Preamble({Key? key}) : super(key: key);

  @override
  _PreambleState createState() => _PreambleState();
}

class _PreambleState extends State<Preamble> {
  PageController controller = PageController();

  final List<Widget> _contents = <Widget>[
    const Zerothpage(),
    const Firstpage(),
    const Secondpage(),
    const Thirdpage(),
    const Fourthpage(),
    const Fifthpage(),
    const Sixthpage(),
    const Seventhpage(),
    const Eigthpage(),
    const Ninthpage(),
  ];
  //

  int currentIndex = 0; //int _curr=0;
  PageController _controller = PageController(initialPage: 0);
  //  PageController controller=PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // ignore: avoid_unnecessary_containers
          Padding(
            padding: const EdgeInsets.all(48.0),
            // ignore: avoid_unnecessary_containers
            child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              _contents.length,
                              (index) => buildDot(index, context),
                            ),
                          ),
                        ),
          ),
          const SizedBox(height: 20),


          Expanded(
            child: PageView(
              children: _contents,
              scrollDirection: Axis.horizontal,

              //reverse: true,
              physics: const BouncingScrollPhysics(),
              controller: controller,
              // ignore: avoid_types_as_parameter_names
              onPageChanged: (num) {
                setState(() {
                  currentIndex = num;
                });
              },
               
            ),
          ),
          const Divider(),
          // ignore: avoid_unnecessary_containers
          Container(
            //color: Colors.lightBlueAccent,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  child: const Text('< Back'),
                  onPressed: () {
                     _controller.previousPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  },
                ),
                const Spacer(),
                TextButton(
                  child: const Text('Next >'),
                  onPressed: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container x(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 20 : 20,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : Colors.grey,
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 20 : 20,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: currentIndex == index
            ? Theme.of(context).primaryColor
            : Colors.grey,
      ),
    );
  }
}

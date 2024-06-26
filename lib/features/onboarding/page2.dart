import 'package:flutter/material.dart';
import 'package:ocd/features/onboarding/page3.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3DFFD),
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Positioned(
                top: 130,
                left: 370,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      _createRoute(onboarding3()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/icon12.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, left: 0),
                        child: const Text(
                          '        You can track your \n   progress day by day and \n   challenge yourself with \n               daily tasks',
                          style: TextStyle(
                            color: Color(0xFFAA77FF),
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'workSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: 424,
                  height: 724,
                  child: Image(
                    width: double.infinity,
                    image: AssetImage('assets/images/2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 370),
                    width: 99,
                    height: 99,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color(0xFF7D4DC3),
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 77,
                        height: 77,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFAA77FF),
                              Color(0xFFD932D2),
                            ],
                            stops: [0.1242, 0.8177],
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const onboarding3(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Route _createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

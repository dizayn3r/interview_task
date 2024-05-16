import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/user_screen/option_widget.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/background.jpeg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 0.2, 0.45, 0.5, 0.6],
              colors: [
                const Color(0xFF0F1115).withOpacity(0),
                const Color(0xFF0d0e12).withOpacity(0.28),
                const Color(0xFF0b0c0f).withOpacity(.64),
                const Color(0xFF090b0d).withOpacity(0.80),
                const Color(0xFF000000),
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 60),

              /// Group Name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Stroll Bonfire",
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      fontSize: 34,
                      color: const Color(0xFFCCC8FF),
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: const Color(0xFF24232F).withOpacity(0.5),
                          offset: const Offset(0, 1),
                          blurRadius: 2,
                        ),
                        const Shadow(
                          color: Color(0xFFBEBEBE),
                          offset: Offset(0, 0),
                          blurRadius: 2,
                        ),
                        Shadow(
                          color: const Color(0xFF000000).withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: const Color(0xFFCBC9FF),
                    shadows: [
                      Shadow(
                        color: const Color(0xFF000000).withOpacity(0.5),
                        offset: const Offset(0.3, 0.3),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/vectors/time.svg'),
                  const SizedBox(width: 8.0),
                  Text(
                    "22h 00m",
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.white,
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          color: const Color(0xFF000000).withOpacity(0.2),
                          offset: const Offset(0, 1),
                          blurRadius: 4,
                        ),
                        Shadow(
                          color: const Color(0xFF000000).withOpacity(0.3),
                          offset: const Offset(0, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  SvgPicture.asset('assets/vectors/user2.svg'),
                  const SizedBox(width: 8.0),
                  Text(
                    "103",
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.white,
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          color: const Color(0xFF000000).withOpacity(0.2),
                          offset: const Offset(0, 1),
                          blurRadius: 4,
                        ),
                        Shadow(
                          color: const Color(0xFF000000).withOpacity(0.3),
                          offset: const Offset(0, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 40.0, top: 8.0, bottom: 8.0, right: 16.0),
                          margin: const EdgeInsets.only(left: 30.0, top: 8.0),
                          width: 160.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF121518),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                offset: const Offset(0, 14),
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Angeline, 28",
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF0D0F11),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                offset: const Offset(0, 4),
                                blurRadius: 12,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.only(bottom: 60.0, right: 16.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('assets/images/Joey 2.png'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32.0, left: 80.0),
                      child: const Text(
                        "What is your favorite time of the day?",
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "“Mine is definitely the peace in the morning.”",
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  color: const Color(0xFFCBC9FF).withOpacity(0.7),
                  fontStyle: FontStyle.italic,
                ),
              ),

              /// Options
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: OptionWidget(
                            tag: "A",
                            text: "The peace in the early mornings",
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: OptionWidget(
                            tag: "B",
                            text: "The magical golden hours",
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        Expanded(
                          child: OptionWidget(
                            tag: "C",
                            text: "Wind-down time after dinners",
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: OptionWidget(
                            isSelected: true,
                            tag: "D",
                            text: "The serenity past midnight",
                            onTap: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    const Text(
                      "Pick your option. \nSee who has a similar mind.",
                      style: TextStyle(
                        fontFamily: 'ProximaNova',
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                                width: 2.0,
                                color: const Color(0xFF8B88EF),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.mic_none_rounded,
                              color: Color(0xFF8B88EF),
                              size: 32.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFF8B88EF),
                              border: Border.all(
                                width: 2.0,
                                color: const Color(0xFF8B88EF),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 32.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: const Color(0xFF1D2026),
                icon: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: SvgPicture.asset('assets/vectors/cards.svg'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color(0xFF1D2026),
                icon: Badge(
                  smallSize: 16.0,
                  backgroundColor: const Color(0xFFB5B2FF),
                  child: SvgPicture.asset('assets/vectors/bonfire.svg'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color(0xFF1D2026),
                icon: Badge(
                  smallSize: 16.0,
                  backgroundColor: const Color(0xFFB5B2FF),
                  label: Text(
                    "10",
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.grey.shade900,
                    ),
                  ),
                  child: SvgPicture.asset('assets/vectors/chat.svg'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color(0xFF1D2026),
                icon: SvgPicture.asset('assets/vectors/user.svg'),
                label: '',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

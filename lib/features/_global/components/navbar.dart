import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 50,
          left: 20,
          right: 20,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 80,
              child: Center(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                            padding: const EdgeInsets.only(right: 10),
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: const Icon(
                              Icons.home_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                        onTap: () => GoRouter.of(context).push('/'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Icon(
                          Icons.edit_document,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: const Icon(
                          Icons.volunteer_activism,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                            padding: const EdgeInsets.only(right: 10),
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
                            child: const Icon(
                              Icons.person_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                        onTap: () => GoRouter.of(context).push('/profile'),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}

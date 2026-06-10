import 'package:flutter/material.dart';
import 'package:ripple/features/rooms/views/room_lobby_screen.dart';

class AvatarSelectionSheet extends StatefulWidget {
  const AvatarSelectionSheet({super.key});

  @override
  State<AvatarSelectionSheet> createState() =>
      _AvatarSelectionSheetState();
}

class _AvatarSelectionSheetState
    extends State<AvatarSelectionSheet> {

  int selectedIndex = -1;

  final avatars = [
    "explorer",
    "detective",
    "ninja",
    "wizard",
    "astronaut",
    "knight",
    "archer",
    "scientist",
    "pilot",
    "guardian",
    "trekker",
    "navigator",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius:
                BorderRadius.circular(10),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Choose Your Avatar",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                itemCount: avatars.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {

                  final selected =
                      selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected
                            ? const Color(0xFF002366)
                            : Colors.white,
                        borderRadius:
                        BorderRadius.circular(20),
                        border: Border.all(
                          color: selected
                              ? Colors.blue
                              : Colors.grey.shade300,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [

                          Image.asset(
                            "assets/avatars/${avatars[index]}.png",
                            width: 60,
                            height: 60,
                          ),

                          const SizedBox(height: 8),

                          Text(
                            avatars[index],
                            style: TextStyle(
                              color: selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: selectedIndex == -1
                    ? null
                    : () {

                  //Navigate Room Lobby
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RoomLobbyScreen(),
                    ),
                  );

                },
                child: const Text(
                  "Continue",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
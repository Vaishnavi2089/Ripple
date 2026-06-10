import 'package:flutter/material.dart';

class RoomLobbyScreen extends StatelessWidget {
  const RoomLobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final members = [
      {
        "name": "Vaishnavi",
        "avatar": "assets/avatars/explorer.png",
        "host": true,
      },
      {
        "name": "Raj",
        "avatar": "assets/avatars/wizard.png",
        "host": false,
      },
      {
        "name": "Aman",
        "avatar": "assets/avatars/ninja.png",
        "host": false,
      },
      {
        "name": "Priya",
        "avatar": "assets/avatars/pilot.png",
        "host": false,
      },
    ];

    const maxMembers = 10;
    final progress = members.length / maxMembers;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      body: SingleChildScrollView(
        child: Column(
          children: [


            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF002366),
                    Color(0xFF1E4FA8),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [

                  Row(
                    children: [

                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),

                      const Spacer(),

                      const Text(
                        "Room Lobby",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Spacer(),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "LIVE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Text(
                    "${members.length} Members Connected",
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  // ROOM CARD
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Column(
                      children: [

                        const Text(
                          "College Friends Meetup",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 15),

                        Container(
                          padding:
                          const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xFFF5F7FB,
                            ),
                            borderRadius:
                            BorderRadius.circular(
                                15),
                          ),
                          child: const Column(
                            children: [

                              Text(
                                "Room Code",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                "ABC123",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight:
                                  FontWeight.bold,
                                  letterSpacing: 3,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 15),

                        Row(
                          children: [

                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.copy,
                                ),
                                label:
                                const Text("Copy"),
                              ),
                            ),

                            const SizedBox(width: 10),

                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share,
                                ),
                                label:
                                const Text("Share"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Members Joined",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  GridView.builder(
                    shrinkWrap: true,
                    physics:
                    const NeverScrollableScrollPhysics(),
                    itemCount: maxMembers,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 1.2,
                    ),
                    itemBuilder: (context, index) {

                      if (index < members.length) {
                        final member =
                        members[index];

                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(
                                20),
                            boxShadow: const [
                              BoxShadow(
                                color:
                                Colors.black12,
                                blurRadius: 6,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                            children: [
                              //
                              // Image.asset(
                              //   member["avatar"]
                              //   as String,
                              //   width: 60,
                              //   height: 60,
                              // ),
                              Stack(
                                children: [

                                  CircleAvatar(
                                    radius: 34,
                                    backgroundColor: Colors.blue.shade50,
                                    child: Image.asset(
                                      member["avatar"] as String,
                                      width: 55,
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 2,
                                    right: 2,
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                  height: 8),

                              Text(
                                member["name"]
                                as String,
                                style:
                                const TextStyle(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                ),
                              ),

                              if (member["host"]
                              as bool)
                                Container(
                                  margin:
                                  const EdgeInsets
                                      .only(
                                      top: 6),
                                  padding:
                                  const EdgeInsets
                                      .symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration:
                                  BoxDecoration(
                                    color: Colors
                                        .green,
                                    borderRadius:
                                    BorderRadius
                                        .circular(
                                        20),
                                  ),
                                  child:
                                  const Text(
                                    "HOST",
                                    style:
                                    TextStyle(
                                      color: Colors
                                          .white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      }

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(
                              20),
                          border: Border.all(
                            color: Colors.grey
                                .shade300,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                          children: [

                            Icon(
                              Icons.person_add,
                              size: 40,
                              color: Colors.grey,
                            ),

                            SizedBox(height: 8),

                            Text(
                              "Waiting...",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Group Readiness",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    padding:
                    const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [

                        LinearProgressIndicator(
                          value: progress,
                          minHeight: 10,
                          borderRadius:
                          BorderRadius.circular(
                              20),
                        ),

                        const SizedBox(height: 12),

                        Text(
                          "${members.length}/$maxMembers Members Joined",
                          style:
                          const TextStyle(
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  Container(
                    padding:
                    const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      gradient:
                      const LinearGradient(
                        colors: [
                          Colors.deepPurple,
                          Colors.blue,
                        ],
                      ),
                      borderRadius:
                      BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [

                        Icon(
                          Icons.auto_awesome,
                          color: Colors.white,
                          size: 35,
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: Text(
                            "AI will calculate the best meeting point, suggest cafes, safe routes, and guide members in their preferred language.",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.radar,
                      ),
                      label: const Text(
                        "Launch Ripple",
                      ),
                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color(
                            0xFF002366),
                        foregroundColor:
                        Colors.white,
                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius
                              .circular(16),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [

                        Icon(
                          Icons.location_searching,
                          color: Color(0xFF002366),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: Text(
                            "Live GPS tracking will start once Ripple is launched.",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
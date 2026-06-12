import 'package:flutter/material.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController roomCodeController =
  TextEditingController();

  final List<String> recentRooms = [
    "ABC123",
    "XYZ789",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom:
            MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [

              /// HEADER
              Container(
                height: 260,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF002366),
                      Color(0xFF002366),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [

                    Icon(
                      Icons.groups_rounded,
                      color: Colors.white,
                      size: 72,
                    ),

                    SizedBox(height: 16),

                    Text(
                      "Ripple",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Join an existing room",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              Transform.translate(
                offset: const Offset(0, -40),
                child: Container(
                  margin:
                  const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding:
                  const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(.08),
                        blurRadius: 30,
                        offset: const Offset(
                          0,
                          10,
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Room Code",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Enter the invitation code shared by your friends",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// ROOM CODE FIELD
                      TextField(
                        controller:
                        roomCodeController,
                        textAlign:
                        TextAlign.center,
                        maxLength: 6,
                        style:
                        const TextStyle(
                          fontSize: 24,
                          letterSpacing: 8,
                          fontWeight:
                          FontWeight.bold,
                        ),
                        textCapitalization:
                        TextCapitalization
                            .characters,
                        decoration:
                        InputDecoration(
                          counterText: "",
                          hintText:
                          "A B C 1 2 3",
                          filled: true,
                          fillColor:
                          const Color(
                              0xFFF5F7FB),
                          border:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius
                                .circular(
                                20),
                            borderSide:
                            BorderSide
                                .none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      /// JOIN BUTTON
                      SizedBox(
                        width:
                        double.infinity,
                        height: 58,
                        child: DecoratedBox(
                          decoration:
                          BoxDecoration(
                            gradient:
                            const LinearGradient(
                              colors: [
                                Color(
                                    0xFF002366),
                                Color(
                                    0xFF002366),
                              ],
                            ),
                            borderRadius:
                            BorderRadius
                                .circular(
                                18),
                          ),
                          child:
                          ElevatedButton(
                            onPressed: () {},
                            style:
                            ElevatedButton
                                .styleFrom(
                              backgroundColor:
                              Colors
                                  .transparent,
                              shadowColor:
                              Colors
                                  .transparent,
                              foregroundColor:
                              Colors.white,
                            ),
                            child:
                            const Text(
                              "Join Room",
                              style:
                              TextStyle(
                                fontSize:
                                16,
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 24),

                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors
                                  .grey
                                  .shade300,
                            ),
                          ),
                          const Padding(
                            padding:
                            EdgeInsets
                                .symmetric(
                              horizontal:
                              12,
                            ),
                            child: Text(
                              "OR",
                              style:
                              TextStyle(
                                color:
                                Colors
                                    .grey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors
                                  .grey
                                  .shade300,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                          height: 20),

                      /// QR BUTTON
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.qr_code_scanner,
                        ),
                        label: const Text(
                          "Scan QR Code",
                        ),
                        style:
                        OutlinedButton
                            .styleFrom(
                          minimumSize:
                          const Size(
                              double
                                  .infinity,
                              55),
                          shape:
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius
                                .circular(
                                18),
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 30),

                      const Text(
                        "Recent Rooms",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                          height: 16),

                      ListView.builder(
                        shrinkWrap: true,
                        physics:
                        const NeverScrollableScrollPhysics(),
                        itemCount:
                        recentRooms.length,
                        itemBuilder:
                            (context, index) {
                          return Container(
                            margin:
                            const EdgeInsets.only(
                              bottom: 12,
                            ),
                            padding:
                            const EdgeInsets.all(
                                16),
                            decoration:
                            BoxDecoration(
                              color:
                              const Color(
                                  0xFFF8F9FD),
                              borderRadius:
                              BorderRadius.circular(
                                  18),
                            ),
                            child: Row(
                              children: [

                                const CircleAvatar(
                                  backgroundColor:
                                  Color(
                                      0xFFE8E6FF),
                                  child: Icon(
                                    Icons
                                        .groups,
                                    color:
                                    Color(
                                        0xFF6C63FF),
                                  ),
                                ),

                                const SizedBox(
                                    width:
                                    12),

                                Expanded(
                                  child:
                                  Text(
                                    recentRooms[
                                    index],
                                    style:
                                    const TextStyle(
                                      fontWeight:
                                      FontWeight.bold,
                                      fontSize:
                                      16,
                                    ),
                                  ),
                                ),

                                const Icon(
                                  Icons
                                      .arrow_forward_ios,
                                  size:
                                  16,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
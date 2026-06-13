import 'package:flutter/material.dart';
import 'package:ripple/features/rooms/views/create_room_screen.dart';
import 'package:ripple/features/rooms/views/join_room_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning ☀️";
    } else if (hour < 17) {
      return "Good Afternoon 🌤️";
    } else {
      return "Good Evening 🌙";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // HEADER
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFF002366),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                getGreeting(),
                                style: const TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                "Welcome Back 👋",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white24,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search destination...",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
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

                    // EXPLORE
                    const Text(
                      "Explore Nearby",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    SizedBox(
                      height: 45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CategoryChip("🍔 Restaurants"),
                          CategoryChip("☕ Cafes"),
                          CategoryChip("🏨 Hotels"),
                          CategoryChip("🌳 Parks"),
                          CategoryChip("🛍 Shopping"),
                          CategoryChip("🎬 Movies"),
                          CategoryChip("👥 Meetups"),
                          CategoryChip("🤖 AI Spots"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    // TRENDING
                    const Text(
                      "Trending Places",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    SizedBox(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          TrendingCard(
                            title: "Civil Lines",
                            subtitle: "Popular Meetup",
                          ),
                          TrendingCard(
                            title: "Hazratganj",
                            subtitle: "Food & Fun",
                          ),
                          TrendingCard(
                            title: "Eco Park",
                            subtitle: "Family Friendly",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),

                    const Text(
                      "Popular Features",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    SizedBox(
                      height: 130,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          FeatureCard(
                            icon: Icons.psychology,
                            title: "AI Midpoint",
                          ),
                          FeatureCard(
                            icon: Icons.groups,
                            title: "Public Rooms",
                          ),
                          FeatureCard(
                            icon: Icons.route,
                            title: "Smart Routes",
                          ),
                          FeatureCard(
                            icon: Icons.directions_car,
                            title: "Road Width",
                          ),
                        ],
                      ),
                    ),



                    const SizedBox(height: 25),

                    // QUICK ACTIONS
                    const Text(
                      "Quick Actions",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    GridView.count(
                      shrinkWrap: true,
                      physics:
                      const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 1.2,
                      children:  [
                        ActionCard(
                          icon: Icons.map,
                          title: "Open Map",
                        ),
                        ActionCard(
                          icon: Icons.group,
                          title: "Join Room",
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const JoinRoomScreen(),
                              ),
                            );
                          },
                        ),
                        ActionCard(
                          icon: Icons.add_location_alt,
                          title: "Create Room",
                          onTap : () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const CreateRoomScreen(),
                              ),
                            );
                          },
                        ),
                        ActionCard(
                          icon: Icons.psychology,
                          title: "AI Midpoint",
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Nearby Active Rooms",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    RoomCard(
                      title: "College Friends Meetup",
                      members: "12 Members",
                      distance: "1.2 km away",
                    ),

                    const SizedBox(height: 10),

                    RoomCard(
                      title: "Office Team Lunch",
                      members: "8 Members",
                      distance: "2.8 km away",
                    ),

                    const SizedBox(height: 25),

                    const SizedBox(height: 25),

                    // AI CARD
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
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
                              "AI Suggestion:\nBest meeting point for your group.",
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

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        backgroundColor: Colors.white,

        selectedItemColor: Color(0xFF002366),
        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: "Rooms",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String text;

  const CategoryChip(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(text),
    );
  }
}

class TrendingCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const TrendingCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.end,
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ActionCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              color: const Color(0xFF002366),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 35,
            color: Color(0xFF002366),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  final String title;
  final String members;
  final String distance;

  const RoomCard({
    super.key,
    required this.title,
    required this.members,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xFF002366),
            child: Icon(
              Icons.groups,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(members),
              ],
            ),
          ),

          Text(
            distance,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
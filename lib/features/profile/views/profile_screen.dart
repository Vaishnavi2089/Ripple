import 'package:flutter/material.dart';
import 'package:ripple/features/notification/views/notification_screen.dart';
import 'package:ripple/features/friends/views/friends_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF002366),
                      Color(0xFF0047AB),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [

                    const CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      child: Text(
                        "👩🏻‍💻",
                        style: TextStyle(fontSize: 38),
                      ),
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "👋 Welcome Back",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Vaishnavi Gupta",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Explorer Level 5",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [

                        ClipRRect(
                          borderRadius:
                          BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: 0.8,
                            minHeight: 10,
                            backgroundColor:
                            Colors.white24,
                            valueColor:
                            const AlwaysStoppedAnimation(
                              Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "80% • Next Level: Pathfinder",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// JOURNEY CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color:
                      Colors.black.withOpacity(.05),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "📊 Your Ripple Journey",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    journeyRow(
                      "42",
                      "Meetups",
                    ),

                    journeyRow(
                      "28",
                      "Rooms Joined",
                    ),

                    journeyRow(
                      "15",
                      "Friends",
                    ),

                    journeyRow(
                      "126 km",
                      "Travelled",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// BADGES
              const Text(
                "🏅 Badges",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              Row(
                children: const [

                  Expanded(
                    child: BadgeCard(
                      emoji: "⭐",
                      title: "Elite",
                    ),
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: BadgeCard(
                      emoji: "🔥",
                      title: "Social",
                    ),
                  ),

                  SizedBox(width: 12),

                  Expanded(
                    child: BadgeCard(
                      emoji: "🎯",
                      title: "Master",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// QUICK ACCESS
              const Text(
                "⚡ Quick Access",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              quickTile(
                Icons.history,
                "Route History",
                    () {},
              ),

              quickTile(
                Icons.place,
                "Favorite Places",
                    () {},
              ),

              quickTile(
                Icons.people,
                "Friends",
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const FriendsScreen(),
                        ),
                      );
                    },
              ),

              quickTile(
                Icons.notifications,
                "Notifications",
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const NotificationsScreen(),
                    ),
                  );
                },
              ),
              quickTile(
                Icons.settings,
                "Settings",
                    () {},
              ),

              quickTile(
                Icons.help_outline,
                "Help & Support",
                    () {},
              ),

              const SizedBox(height: 24),

              /// MONTHLY STATS
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color:
                      Colors.black.withOpacity(.05),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "📈 This Month",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Meetups Completed",
                    ),

                    const SizedBox(height: 8),

                    LinearProgressIndicator(
                      value: 0.9,
                      minHeight: 10,
                      borderRadius:
                      BorderRadius.circular(10),
                    ),

                    const SizedBox(height: 8),

                    const Text("9 / 10"),

                    const SizedBox(height: 20),

                    const Text(
                      "Distance Travelled",
                    ),

                    const SizedBox(height: 8),

                    LinearProgressIndicator(
                      value: 0.64,
                      minHeight: 10,
                      borderRadius:
                      BorderRadius.circular(10),
                    ),

                    const SizedBox(height: 8),

                    const Text("64 km"),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              /// LOGOUT
              SizedBox(
                width: double.infinity,
                height: 58,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.red,
                    ),
                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  static Widget journeyRow(String value,
      String title,) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight:
              FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 12),
          Text(title),
        ],
      ),
    );
  }

  static Widget quickTile(IconData icon,
      String title,
      VoidCallback onTap,) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.04),
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          color: const Color(0xFF002366),
        ),
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    );
  }
}
class BadgeCard extends StatelessWidget {
  final String emoji;
  final String title;

  const BadgeCard({
    super.key,
    required this.emoji,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


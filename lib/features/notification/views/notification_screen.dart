import 'package:flutter/material.dart';


class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notifications 🔔",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Stay updated with Ripple",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Mark All Read",
              style: TextStyle(
                color: Color(0xFF6C63FF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          const Text(
            "Today",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          notificationCard(
            icon: Icons.group,
            iconColor: Colors.blue,
            title: "Rahul joined your room",
            subtitle: "2 min ago",
            unread: true,
          ),

          notificationCard(
            icon: Icons.auto_awesome,
            iconColor: Colors.deepPurple,
            title: "AI updated meeting point",
            subtitle: "10 min ago",
            unread: true,
          ),

          notificationCard(
            icon: Icons.warning_rounded,
            iconColor: Colors.red,
            title: "Emergency alert from Aman",
            subtitle: "15 min ago",
            unread: true,
          ),

          const SizedBox(height: 24),

          const Text(
            "Yesterday",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          notificationCard(
            icon: Icons.route,
            iconColor: Colors.green,
            title: "Route recalculated",
            subtitle: "New fastest route found",
          ),

          notificationCard(
            icon: Icons.local_cafe,
            iconColor: Colors.orange,
            title: "New cafe suggestion",
            subtitle: "3 cafes near your midpoint",
          ),
        ],
      ),
    );
  }

  static Widget notificationCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    bool unread = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor:
            iconColor.withOpacity(.12),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          if (unread)
            Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Color(0xFF6C63FF),
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
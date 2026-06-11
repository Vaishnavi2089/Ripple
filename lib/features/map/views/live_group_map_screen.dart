import 'package:flutter/material.dart';
import 'package:ripple/features/ai/views/ai_suggestion_screen.dart';
import 'package:ripple/features/voice/views/voice_assistant_screen.dart';
import 'package:ripple/features/navigation/views/route_navigation_screen.dart';
class LiveGroupMapScreen extends StatelessWidget {
const LiveGroupMapScreen({super.key});

@override
Widget build(BuildContext context) {
     return Scaffold(
     backgroundColor: const Color(0xFFF5F7FB),
       body: Stack(
       children: [

// MAP AREA
     Container(
        width: double.infinity,
       height: double.infinity,
       color: const Color(0xFFE9EEF7),
),

// FAKE ROADS
     Positioned(
       top: 120,
       left: 0,
       right: 0,
      child: Container(
      height: 10,
      color: Colors.white,
     ),
    ),

     Positioned(
    top: 300,
    left: 0,
   right: 0,
     child: Container(
    height: 10,
    color: Colors.white,
),
),

  Positioned(
      top: 0,
      bottom: 0,
      left: 160,
      child: Container(
      width: 10,
      color: Colors.white,
),
),

   Positioned(
   top: 0,
   bottom: 0,
   right: 100,
   child: Container(
   width: 10,
   color: Colors.white,
),
),

// HEADER
   SafeArea(
    child: Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
    children: [

   Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius:
    BorderRadius.circular(15),
),
   child: IconButton(
   onPressed: () {
  Navigator.pop(context);
},
    icon: const Icon(
  Icons.arrow_back_ios_new,
),
),
),

  const SizedBox(width: 12),

  Expanded(
   child: Container(
   padding:
    const EdgeInsets.symmetric(
     horizontal: 18,
    vertical: 14,
),
    decoration: BoxDecoration(
     color: Colors.white,
     borderRadius:
     BorderRadius.circular(20),
),
     child: const Row(
     children: [

   Icon(
    Icons.radar,
    color: Color(0xFF002366),
),

   SizedBox(width: 10),

   Text(
    "Ripple Live Map",
     style: TextStyle(
     fontWeight:
     FontWeight.bold,
       fontSize: 16,
),
),
],
),
),
),
],
),
),
),

// EXPLORER
   Positioned(
    top: 180,
    left: 60,
    child: _memberMarker(
    "assets/avatars/explorer.png",
    "You",
),
),

// WIZARD
   Positioned(
    top: 260,
    right: 50,
   child: _memberMarker(
   "assets/avatars/wizard.png",
   "Rahul",
),
),

// NINJA
   Positioned(
   top: 430,
   left: 80,
   child: _memberMarker(
   "assets/avatars/ninja.png",
   "Aman",
),
),

// PILOT
    Positioned(
    top: 520,
    right: 90,
    child: _memberMarker(
     "assets/avatars/pilot.png",
   "Priya",
),
),

// MIDPOINT MARKER
   Positioned(
   top: 340,
   left: 170,
   child: Column(
   children: [

    Container(
    padding:
   const EdgeInsets.all(12),
    decoration: BoxDecoration(
     color: Colors.red,
     borderRadius:
     BorderRadius.circular(20),
     boxShadow: const [
     BoxShadow(
    color: Colors.black26,
    blurRadius: 8,
)
],
),
     child: const Icon(
     Icons.location_on,
    color: Colors.white,
     size: 30,
),
),

   const SizedBox(height: 5),

   const Text(
   "AI Midpoint",
    style: TextStyle(
    fontWeight:
    FontWeight.bold,
),
),
],
),
),
// VOICE BUTTON
     Positioned(
        right: 20,
        top: 140,
        child: FloatingActionButton(
         heroTag: "voice",
         backgroundColor: Colors.white,
         onPressed: () {

           showModalBottomSheet(
             context: context,
             isScrollControlled: true,
             backgroundColor: Colors.transparent,
             builder: (_) => const FractionallySizedBox(
               heightFactor: 0.72,
               child: RippleAssistantScreen(),
             ),
           );
         },
        child: const Icon(
        Icons.mic,
        color: Color(0xFF002366),
),
),
),

// RECALCULATE BUTTON
   Positioned(
    right: 20,
     top: 210,
     child: FloatingActionButton(
      heroTag: "ai",
      backgroundColor: Colors.white,
       onPressed: () {
         showModalBottomSheet(
           context: context,
           isScrollControlled: true,
           backgroundColor: Colors.transparent,
           builder: (_) => const FractionallySizedBox(
             heightFactor: 0.72,
             child: AiSuggestionsSheet(),
           ),
         );


       },
      child: const Icon(
       Icons.auto_awesome,
     color: Colors.deepPurple,
),
),
),

// MY LOCATION BUTTON
Positioned(
   right: 20,
  top: 280,
   child: FloatingActionButton(
   heroTag: "location",
   backgroundColor: Colors.white,
   onPressed: () {},
   child: const Icon(
   Icons.my_location,
   color: Colors.green,
),
),
),

// BOTTOM PANEL
    Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Container(

           width: double.infinity,

   decoration: const BoxDecoration(
   color: Colors.white,

   borderRadius: BorderRadius.only(
   topLeft: Radius.circular(30),
   topRight: Radius.circular(30),
),

   boxShadow: [
   BoxShadow(
   color: Colors.black12,
   blurRadius: 15,
),
],
),

   child: Padding(
  padding: const EdgeInsets.all(20),

  child: Column(
   crossAxisAlignment:
  CrossAxisAlignment.start,

  children: [

  Center(
  child: Container(
  width: 60,
  height: 5,

   decoration: BoxDecoration(
   color: Colors.grey.shade300,
   borderRadius:
   BorderRadius.circular(
  20),
),
),
),

    const SizedBox(height: 20),

   Container(
   padding:
   const EdgeInsets.all(16),

   decoration: BoxDecoration(
   gradient:
   const LinearGradient(
   colors: [
   Color(0xFF002366),
   Color(0xFF1E4FA8),
],
),

    borderRadius:
     BorderRadius.circular(
   20),
),

   child:  Row(
   children: [

    Icon(
    Icons.groups,
    color: Colors.white,
),

    SizedBox(width: 10),
 Expanded(
    child: Text(
    "4 Members Active • Live Tracking ON",
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

 SizedBox(height: 18),

  const Text(
    "AI Suggested Midpoint",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  const SizedBox(height: 12),

  Container(
    padding:
    const EdgeInsets.all(18),

    decoration: BoxDecoration(
      color:
      const Color(0xFFF5F7FB),
      borderRadius:
      BorderRadius.circular(
          20),
    ),

    child:  Column(
      crossAxisAlignment:
      CrossAxisAlignment
          .start,

      children: [

        Row(
          children: [

            Icon(
              Icons.location_on,
              color: Colors.red,
            ),

            SizedBox(width: 8),

            Text(
              "Cafe Coffee Day",
              style: TextStyle(
                fontSize: 18,
                fontWeight:
                FontWeight
                    .bold,
              ),
            ),
          ],
        ),

        SizedBox(height: 8),

        Text(
          "Best meeting point for all members",
        ),

        SizedBox(height: 6),

        Text(
          "Average travel time: 12 mins",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ),

  const SizedBox(height: 20),

  SizedBox(
    width: double.infinity,
    height: 58,

    child:
    ElevatedButton.icon(
      onPressed: () {

        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (_) => const FractionallySizedBox(
            heightFactor: 0.72,
            child: NavigationScreen(),
          ),
        );
      },

      icon: const Icon(
        Icons.navigation,
      ),

      label: const Text(
        "Navigate to Midpoint",
        style: TextStyle(
          fontSize: 16,
          fontWeight:
          FontWeight.bold,
        ),
      ),

      style:
      ElevatedButton
          .styleFrom(
        backgroundColor:
        const Color(
            0xFF002366),

        foregroundColor:
        Colors.white,

        shape:
        RoundedRectangleBorder(
          borderRadius:
          BorderRadius
              .circular(
              16),
        ),
      ),
    ),
  ),
],
),
),
),
),
),
],
),
);
}

static Widget _memberMarker(
    String image,
    String name,
    ) {
  return Column(
    children: [

      Container(
        padding:
        const EdgeInsets.all(4),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
            ),
          ],
        ),

        child: CircleAvatar(
          radius: 28,
          backgroundColor:
          Colors.blue.shade50,
          child: Image.asset(
            image,
            width: 42,
          ),
        ),
      ),

       SizedBox(height: 5),

      Container(
        padding:
        const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4,
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(20),
        ),

        child: Text(
          name,
          style: const TextStyle(
            fontWeight:
            FontWeight.bold,
            fontSize: 11,
          ),
        ),
      ),
    ],
  );
}
}
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget{
  const ForgetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body:Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 24,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:30),
            const Text(
              "Forget Password",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF002366),
              ),
            ),
            const SizedBox(height:10),
            const Text(
              "Enter your email and we'll send a reset link",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: const Icon(Icons.email_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,

                ),
              ),
            ),
            const SizedBox(height:30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(onPressed:(){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF002366),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  "Send Reset Link",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),

              ),
            ),

          ],
        ),

      ),
    );
  }

}
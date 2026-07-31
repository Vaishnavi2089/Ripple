import 'package:flutter/material.dart';
import 'package:ripple/features/auth/views/login_screen.dart';
class SignupScreen extends StatefulWidget{
    const SignupScreen({super.key});
    @override
  State<SignupScreen> createState()=>_SignupScreenState();

}
class _SignupScreenState extends State<SignupScreen>{
   bool  _obscurePassword=true;
   bool  _obscureConfirmPassword=true;
   final TextEditingController fullNameController = TextEditingController();
   final TextEditingController emailController = TextEditingController();
   final TextEditingController usernameController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),


      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal:24,
      ),
      child: Column(
        children:[

          const SizedBox(height:20),
          const Text(
            "Create Account",
            style:TextStyle(
              fontSize:34,
              fontWeight:FontWeight.bold,
              color:Color(0xFF002366),
            ),
          ),
          const SizedBox(height:8),
          const Text("Join Ripple and start connecting.",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16
          ),),
          const SizedBox(height: 35),
          //full name
          TextField(
            controller: fullNameController,
            decoration: InputDecoration(
              hintText:"Enter Your Name",
              prefixIcon: const Icon(Icons.person_outline),
              filled :true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              )
            ),
          ),
          const SizedBox(height: 16),
          //Email
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
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
          const SizedBox(height: 16),
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              hintText: "Create Username",
              prefixIcon: const Icon(Icons.alternate_email),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(_obscurePassword? Icons.visibility_off:Icons.visibility),
              onPressed: (){
                  setState(() {
                    _obscurePassword=!_obscurePassword;
                  });
              },
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),

            ),
          ),
          const SizedBox(height: 16),
          //confirm password
          TextField(
            controller: confirmPasswordController,
            obscureText: _obscureConfirmPassword,
            decoration: InputDecoration(
              hintText: "Confirm Password",
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureConfirmPassword ? Icons.visibility_off:Icons.visibility,
                ),
                onPressed: (){
                  setState(() {
                    _obscureConfirmPassword=!_obscureConfirmPassword;
                  });
                },
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
              ),

            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 55,

            child: ElevatedButton(onPressed: (){
              if (fullNameController.text.trim().isEmpty ||
                  emailController.text.trim().isEmpty ||
                  usernameController.text.trim().isEmpty ||
                  passwordController.text.isEmpty ||
                  confirmPasswordController.text.isEmpty) {

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please fill all fields"),
                  ),
                );
                return;
              }
              final email = emailController.text.trim();

              if (!email.contains("@") || !email.contains(".")) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please enter a valid email"),
                  ),
                );
                return;
              }
              if (usernameController.text.contains(" ")) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Username cannot contain spaces"),
                  ),
                );
                return;
              }
              if (passwordController.text.length < 8) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Password must be at least 8 characters"),
                  ),
                );
                return;
              }

              if (passwordController.text != confirmPasswordController.text) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Passwords do not match"),
                  ),
                );
                return;
              }

              debugPrint("Ready to call register API");
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF002366),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

            ),
          ),
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Login"),
              ),
            ],
          ),

        ],
      ),

      ),
        ),
      );

  }
}
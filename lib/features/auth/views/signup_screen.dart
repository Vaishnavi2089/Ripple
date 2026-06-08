import 'package:flutter/material.dart';
// import 'package:ripple/features/auth/views/login_screen.dart';
class SignupScreen extends StatefulWidget{
    const SignupScreen({super.key});
    @override
  State<SignupScreen> createState()=>_SignupScreenState();

}
class _SignupScreenState extends State<SignupScreen>{
   bool  _obscurePassword=true;
   bool  _obscureConfirmPassword=true;

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
          const SizedBox(height:40),
          Image.asset("assets/images/logo.png",
          width:120,
          ),
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

            child: ElevatedButton(onPressed: (){},
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
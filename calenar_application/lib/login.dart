import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:calendar_application/themes/dark_theme.dart';
import 'package:calendar_application/themes/light_theme.dart';



class Login extends StatelessWidget {
  const Login({super.key});

 
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context).colorScheme;
    final brightness = MediaQuery.of(context).platformBrightness;
	final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: theme.surface,
      body: SingleChildScrollView(
      	child: Column(
      	  children: <Widget>[
      	    Container(
      	      height: 400,
      	      decoration: BoxDecoration(
      	        image: DecorationImage(
      	          image: isDarkMode
      	        ? const AssetImage('assets/images/dark_bg.png')
      	        : const AssetImage('assets/images/light_bg.png'),
      	          fit: BoxFit.fill
      	        )
      	      ),
      	      child: Stack(
      	        children: <Widget>[
      	          Positioned(
      	            left: 30,
      	            width: 80,
      	            height: 200,
      	            child: FadeInUp(duration: const Duration(seconds: 1), child: Container(
      	              decoration: const BoxDecoration(
      	                image: DecorationImage(
      	                  image: AssetImage('assets/images/light-1.png')
      	                )
      	              ),
      	            )),
      	          ),
      	          Positioned(
      	            left: 140,
      	            width: 80,
      	            height: 150,
      	            child: FadeInUp(duration: const Duration(milliseconds: 1200), child: Container(
      	              decoration: const BoxDecoration(
      	                image: DecorationImage(
      	                  image: AssetImage('assets/images/light-2.png')
      	                )
      	              ),
      	            )),
      	          ),
      	          Positioned(
      	            right: 40,
      	            top: 40,
      	            width: 80,
      	            height: 150,
      	            child: FadeInUp(duration: const Duration(milliseconds: 1300), child: Container(
      	              decoration: const BoxDecoration(
      	                image: DecorationImage(
      	                  image: AssetImage('assets/images/clock.png')
      	                )
      	              ),
      	            )),
      	          ),
      	          Positioned(
      	            child: FadeInUp(duration: const Duration(milliseconds: 1600), child: Container(
      	              margin: const EdgeInsets.only(top: 50),
      	              child: const Center(
      	                child: Text("Login", style: TextStyle(color: Colors.white	, fontSize: 40, fontWeight: FontWeight.bold),),
      	              ),
      	            )),
      	          )
      	        ],
      	      ),
      	    ),
      	    Padding(
      	      padding: const EdgeInsets.all(30.0),
      	      child: Column(
      	        children: <Widget>[
      	          FadeInUp(duration: const Duration(milliseconds: 1800), child: Container(
      	            padding: const EdgeInsets.all(5),
      	            decoration: BoxDecoration(
      	              color: theme.surface,
      	              borderRadius: BorderRadius.circular(10),
      	                        border: Border.all(color: theme.primary),
      	            boxShadow: const [
      	                 BoxShadow(
      	                  color: Color.fromRGBO(143, 148, 251, .2),
      	                  blurRadius: 20.0,
      	                  offset: Offset(0, 10)
      	                )
      	               ]
      	            ),
      	            child: Column(
      	              children: <Widget>[
      	                Container(
      	                  padding: const EdgeInsets.all(8.0),
      	                  decoration: BoxDecoration(
      	                    border: Border(bottom: BorderSide(color:  theme.primary))
      	                  ),
      	                  child: TextField(
      	                    decoration: InputDecoration(
      	                      border: InputBorder.none,
      	                      hintText: "Username (Enter Provided Username)",
      	                      hintStyle: TextStyle(color: theme.onSurface)
      	                    ),
      	                  ),
      	                ),
      	                Container(
      	                  padding: const EdgeInsets.all(8.0),
      	                  child: TextField(
      	                              obscureText: true,
      	                    decoration: InputDecoration(
      	                      border: InputBorder.none,
      	                      hintText: "Password (You can leave it empty)",
      	                      hintStyle: TextStyle(color: theme.onSurface)
      	                    ),
      	                  ),
      	                )
      	              ],
      	            ),
      	          )),
      	          const SizedBox(height: 30,),
      	          FadeInUp(duration: const Duration(milliseconds: 1900), child: Container(
      	            height: 50,
      	            decoration: BoxDecoration(
      	              borderRadius: BorderRadius.circular(10),
      	              gradient: isDarkMode
      	        ? DarkGradients.buttonGradient
      	        : LightGradients.buttonGradient,
      	            ),
      							child: Center(
      							  child: TextButton(
      								onPressed: () {
      								  // Add your onPressed code here!
      								},
      								child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      							  ),
      	            ),
      	          )),
      	          const SizedBox(height: 30,),
      	          FadeInUp(duration: const Duration(milliseconds: 2000), child: Text("Forgot Password?", style: TextStyle(color: theme.onSurface))),
      	        ],
      	      ),
      	    )
      	  ],
      	),
      )
    );
  }
}
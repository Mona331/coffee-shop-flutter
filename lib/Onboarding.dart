import 'package:coffee_shop/colors/colors.dart';
import 'package:coffee_shop/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/coffee1.jpg', fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87],
                ),
              ),
            ),
            Column(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fall in Love with',
                      style:  GoogleFonts.sora(color: Colors.white, fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Coffee in Blissful',
                      style: GoogleFonts.sora(color: Colors.white, fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text(
                      'Delight!',
                      style:  GoogleFonts.sora(color: Colors.white, fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    SizedBox(height: 26),
                    Text(
                      'Welcome to our coffee shop...',
                      style:  GoogleFonts.sora(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w100),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  AppColors.primary,
                        foregroundColor:AppColors.ofwhite,
                        minimumSize: Size(300, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                     onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        );
                      },
                      child:  Text('Get Started',style: GoogleFonts.sora(color: Color(0XFFF9F2ED), fontSize: 14),),
                    ),
                    SizedBox(height: 30),
                  ],
                )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

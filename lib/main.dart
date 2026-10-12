import 'package:flutter/material.dart';

//imports additional pages
import 'scanner/scanner_page.dart';
import 'utils/forest_decoration.dart';

//main page that users see when opening up the app
void main() {
  runApp(const BarkIDApp());
}

//creates the BarkID class
class BarkIDApp extends StatelessWidget {
  const BarkIDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bark ID App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ForestColors.forest,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: ForestColors.cream,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

//creates the homepage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ForestColors.deepForest,
              ForestColors.forestGradientMiddle,
              ForestColors.forestGradientEnd,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              const Positioned(
                top: 62,
                right: -38,
                child: ForestDecoration(size: 190, opacity: 0.10),
              ),
              const Positioned(
                bottom: 70,
                left: -58,
                child: ForestDecoration(size: 210, opacity: 0.08),
              ),
              Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 36,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 440),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 112,
                          height: 112,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.10),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.18),
                            ),
                          ),
                          
                          //adds a forest icon near the top center of the homepage
                          child: const Icon(
                            Icons.forest_rounded,
                            color: ForestColors.leaf,
                            size: 66,
                          ),
                        ),
                        
                        //title of the app
                        const SizedBox(height: 14),
                        const Text(
                          'Bark ID App',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ForestColors.cream,
                            fontSize: 38,
                            height: 1.15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.8,
                          ),
                        ),

                        //provides instructions for the user
                        const SizedBox(height: 18),
                        Text(
                          'Upload pictures of bark to identify a tree species.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ForestColors.cream.withValues(alpha: 0.76),
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                        
                        //styled button navigates to the scanner page if user clicks it
                        const SizedBox(height: 38),
                        SizedBox(
                          width: double.infinity,
                          height: 58,
                          child: FilledButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) => const ScannerPage(),
                                ),
                              );
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: ForestColors.leaf,
                              foregroundColor: ForestColors.deepForest,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Get Started'),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_forward_rounded, size: 20),
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
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

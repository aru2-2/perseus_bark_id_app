import 'package:flutter/material.dart';

//imports additional pages
import '../utils/forest_decoration.dart';

//creates the page that accepts bark imagery, temporary design for now
class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ForestColors.cream,
      appBar: AppBar(
        backgroundColor: ForestColors.cream,
        foregroundColor: ForestColors.deepForest,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [ForestColors.forest, ForestColors.deepForest],
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.park_rounded,
                        color: ForestColors.leaf,
                        size: 112,
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Upload Images Here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ForestColors.cream,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Discover the tree species around you!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ForestColors.mutedLeaf,
                            fontSize: 16,
                            height: 1.5,
                          ),
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
    );
  }
}

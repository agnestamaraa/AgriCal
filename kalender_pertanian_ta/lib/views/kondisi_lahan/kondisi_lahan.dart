import 'package:flutter/material.dart';
import 'package:kalender_pertanian_ta/consts/global.colors.dart';

class KondisiLahan extends StatefulWidget {
  const KondisiLahan({super.key});

  @override
  State<KondisiLahan> createState() => _KondisiLahanState();
}

class _KondisiLahanState extends State<KondisiLahan> {
  @override
  Widget build(BuildContext context) {
    double compHeight = MediaQuery.of(context).size.height;
    double compWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // padding: const EdgeInsets.fromLTRB(20, 24, 20, 60),
        height: compHeight,
        width: compWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: compHeight * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: compWidth * 0.05),
              child: Text(
                'Informasi Lahan',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: GlobalColors.textMainColor),
              ),
            ),
            SizedBox(
              height: compHeight * 0.002,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: compWidth * 0.05),
              child: Text(
                'Perhatikan detail informasi\nlahan terkini',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: GlobalColors.textColor),
              ),
            ),
            SizedBox(
              height: compHeight * 0.02,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: compWidth * 0.05),
              child: const Text(
                'Detail Informasi',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            SizedBox(
              height: compHeight * 0.002,
            ),

            Expanded(
              child: 
              Container(
                margin: const EdgeInsets.all(20.0),
                width: compWidth,
                height: compWidth,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  mainAxisSpacing: 14.0,
                  crossAxisSpacing: 14.0,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(10, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: GlobalColors.textMainColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// Expanded(
            //   child: 
            //   Container(
            //     margin: const EdgeInsets.all(20.0),
            //     width: compWidth,
            //     height: compWidth,
            //     child: GridView.count(
            //       // Create a grid with 2 columns. If you change the scrollDirection to
            //       // horizontal, this produces 2 rows.
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 14.0,
            //       crossAxisSpacing: 14.0,
            //       // Generate 100 widgets that display their index in the List.
            //       children: List.generate(10, (index) {
            //         return Container(
            //           decoration: BoxDecoration(
            //             border: Border.all(
            //               color: GlobalColors.textMainColor,
            //               width: 1.0,
            //             ),
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           child: Center(
            //             child: Text(
            //               'Item $index',
            //               style: Theme.of(context).textTheme.headlineSmall,
            //             ),
            //           ),
            //         );
            //       }),
            //     ),
            //   ),
            // )
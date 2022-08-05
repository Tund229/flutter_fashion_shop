import 'dart:ui';

import 'package:fashion_shop/screens/second_screen.dart';
import 'package:fashion_shop/styles/border.dart';
import 'package:fashion_shop/styles/colors.dart';
import 'package:fashion_shop/styles/textstyles.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'img1.jpg',
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: height*0.05,
            right: width*0.08,
            child:ClipRRect(
              borderRadius:getBorderRadiusWidget(context, 0.05),
              child: BackdropFilter(
                filter:ImageFilter.blur(
                  sigmaY: 5,
                  sigmaX: 5,
                ),
                child: Container(
                  width: width*0.85,
                  height: height*0.45,
                  decoration: BoxDecoration(
                    color: color6,
                    borderRadius:getBorderRadiusWidget(context, 0.05)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width*0.05, 
                      vertical: height*0.01
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      
                      children:  [
                        SizedBox(height: height *0.05),
                        const Text('World of dresses \n for princess', 
                         style: textWhiteStyle1,
                         textAlign: TextAlign.center,
                        ),
                        SizedBox(height: height *0.02),
                        const Text('Make yourself confortable, we have some really dresses for you',
                        style: textWhiteStyle5,
                        textAlign: TextAlign.center,
                        ),
                        SizedBox(height: height *0.04),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: color3,
                            shape: getShapeWidget(context, 0.03),
                            fixedSize: Size(width*0.7, height*0.065)
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:( context)=>const SecondScreen()));
                          }, 
                          child: const Text(
                            'Get started', 
                            style: textBlackStyle1,
                          ),
                        ),
                        SizedBox(height: height *0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(width*0.005),
                              padding: EdgeInsets.all(width*0.01),
                              decoration: BoxDecoration(
                                color: color5,
                                borderRadius: getBorderRadiusWidget(context, 5),
                              ),
                            ),

                            Container(
                                margin: EdgeInsets.all(width*0.005),
                                padding: EdgeInsets.all(width*0.014),
                                decoration: BoxDecoration(
                                  color: color3,
                                  borderRadius: getBorderRadiusWidget(context, 5),
                                ),
                            ),

                            Container(
                                margin: EdgeInsets.all(width*0.005),
                                padding: EdgeInsets.all(width*0.01),
                                decoration: BoxDecoration(
                                  color: color5,
                                  borderRadius: getBorderRadiusWidget(context, 5),
                                ),
                            ),

                            Container(
                                margin: EdgeInsets.all(width*0.005),
                                padding: EdgeInsets.all(width*0.01),
                                  decoration: BoxDecoration(
                                    color: color5,
                                    borderRadius: getBorderRadiusWidget(context, 5),
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ignore_for_file: sized_box_for_whitespace

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fashion_shop/styles/border.dart';
import 'package:fashion_shop/styles/colors.dart';
import 'package:fashion_shop/styles/textstyles.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'img2.jpg', 
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: height*0.07,
            
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.03,),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: ClipRRect(
                      borderRadius: getBorderRadiusWidget(context, 0.02),
                      child:BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: EdgeInsets.all(width*0.03),
                          decoration:  BoxDecoration(
                            borderRadius: getBorderRadiusWidget(context,0.04),
                            color: color5
                          ),
                          child:  const Icon(Icons.arrow_back,color: Colors.white,)
                        )
                      )
                    ),
                  ),
                  ClipRRect(
                    borderRadius: getBorderRadiusWidget(context, 0.02),
                    child:BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: EdgeInsets.all(width*0.03),
                        decoration:  BoxDecoration(
                          borderRadius: getBorderRadiusWidget(context,0.04),
                          color: color5
                        ),
                        child:  const Icon(Icons.favorite,color: Colors.white,)
                      )
                    )
                  ),
                ],
              ),
            )
          ),

          Positioned(
            bottom: height*0.03,
            right: width*0.05,

            child: ClipRRect(
            borderRadius: getBorderRadiusWidget(context, 0.04),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20, 
                sigmaY: 20,
              ),
              child: Container(
                width: width*0.9,
                height: height*0.45,
                padding: EdgeInsets.symmetric(
                  vertical: height*0.03, 
                  horizontal:width*0.05
                ),
                decoration: BoxDecoration(
                  borderRadius: getBorderRadiusWidget(context, 0.04),
                  color: color6,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Text(
                          'Little dress', 
                          style: textWhiteStyle2,
                        ),
                        Text(
                          '\$50.99', 
                          style: textWhiteStyle3,
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.03),
                    const Text(
                        'This dress will make you feel like a princess,even if you have grown',
                        style: textWhiteStyle5,
                    ),
                    SizedBox(height: height*0.03),
                    Container(
                      width: width,
                      height: height*0.13,
                      child: Row(
                        children: [
                          Expanded(
                            child:Padding(
                              padding:  EdgeInsets.all(width*0.01),
                              child:Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: getBorderRadiusWidget(context, 0.03),
                                  child:Image.asset(
                                    'img3.jpg',
                                    fit: BoxFit.cover,
                                    width: width,
                                    height: height,
                                  )
                                ),
                                Positioned(
                                  right:width*0.03,
                                  top: height*0.01,
                                  child:const Icon(
                                    Icons.zoom_in, 
                                    color:color3
                                  ),
                                )
                              ],
                            ),
                            ),
                            
                          ),

                          Expanded(
                            child:Padding(
                              padding:  EdgeInsets.all(width*0.01),
                              child:Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: getBorderRadiusWidget(context, 0.03),
                                  child:Image.asset(
                                    'img4.jpg',
                                    fit: BoxFit.cover,
                                    width: width,
                                    height: height,
                                  )
                                ),
                                Positioned(
                                  right:width*0.03,
                                  top: height*0.01,
                                  child:const Icon(
                                    Icons.zoom_in, 
                                    color: color3,
                                  ),
                                )
                              ],
                            ),
                            ),
                            
                          ),

                          Expanded(
                            child:Padding(
                              padding:  EdgeInsets.all(width*0.01),
                              child:Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: getBorderRadiusWidget(context, 0.03),
                                  child:Image.asset(
                                    'img6.jpg',
                                    fit: BoxFit.cover,
                                    width: width,
                                    height: height,
                                  )
                                ),
                                Positioned(
                                  right:width*0.03,
                                  top: height*0.01,
                                  child:const Icon(
                                    Icons.zoom_in, 
                                    color: color3,
                                  ),
                                )
                              ],
                            ),
                            ),
                            
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: color3,
                            ),
                            onPressed: (){}, 
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('White', style: textBlackStyle2,),
                                Icon(Icons.arrow_drop_down, color: color1,),
                              ],
                            )
                          ),
                        ),
                        SizedBox(width: width*0.04,),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: color3,
                            ),
                            onPressed: (){}, 
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('xs/s', style: textBlackStyle2,),
                                Icon(Icons.arrow_drop_down, color: color1,),
                              ],
                            )
                          ),
                        ),
                      ],
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1
                      ),
                      onPressed: (){}, 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Add to cart', 
                            style: textWhiteStyle4,
                          ),
                          Icon(Icons.shopping_bag, size: width *0.05,)
                        ],
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
  
}
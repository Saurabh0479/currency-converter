import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 105, 255),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'PLEASE ENTER THE AMOUNT IN USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 3.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 3.0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),

              // button

              // raised
              // appears like a text
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: (){
                    // debug, release, profile
                    if(kDebugMode){
                    print('Button Clicked');
                    }
                  },
                  style: ElevatedButton.styleFrom(  
                    // elevation: WidgetStatePropertyAll(10),
                    backgroundColor: (Colors.black),
                    foregroundColor: (Colors.white),
                    // minimumSize: WidgetStatePropertyAll(
                    //const Size(double.infinity, 50),
                    // ),  
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  child: const Text('Convert'),
                  ),
               ),
            ],
          ),
        ), 
      );
   }
} 
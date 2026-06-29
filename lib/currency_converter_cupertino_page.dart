import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
    final TextEditingController textEditingController = TextEditingController();    

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 68, 105, 255),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: const Color.fromARGB(255, 68, 105, 255),
          middle: const Text(
            'CURRENCY CONVERTER',
            style: TextStyle(
              color: CupertinoColors.extraLightBackgroundGray,
            )
          ),
        ),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text(
               'INR ${result != 0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}' ,
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                   placeholder: 'PLEASE ENTER THE AMOUNT IN USD',
                   prefix: Icon(CupertinoIcons.money_dollar),
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
                child: CupertinoButton(
                  color: CupertinoColors.black,
                  onPressed: (){
                    result = double.parse(textEditingController.text)*94.36;
                    setState( () {

                    });
                  },
                  child: const Text('Convert'),
                  ),
               ),
            ],
          ),
        ), 
      );
   }
} 
  

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({
    super.key,
  });

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          //Calci Display
          CalculatorDisplay(
              hint: "Enter First Number", controller: displayOneController),
          SizedBox(
            height: 30,
          ),
          CalculatorDisplay(
              hint: "Enter Second Number", controller: displayTwoController),
          SizedBox(
            height: 60,
          ),
          Text(
            z.toString(),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          //Expand
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! +
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! -
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! *
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! /
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(CupertinoIcons.divide),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                x = 0;
                y = 0;
                z = 0;
                displayOneController.clear();
                displayTwoController.clear();
              });
            },
            label: const Text("Clear"),
          )
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({
    super.key,
    this.hint = "Enter a Number",
    required this.controller,
  });

  final String? hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

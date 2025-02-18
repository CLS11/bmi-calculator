import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/card.dart';
import 'package:myapp/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const activeCardColor = Color(0xFF1D1E33);
  static const inactiveCardColor = Color(0xFF11138);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
             Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: const MyCard(
                        colour: activeCardColor,
                        cardChild: CardWidget(
                          icon: FontAwesomeIcons.mars, 
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: MyCard(
                      colour: activeCardColor,
                      cardChild: CardWidget(
                        icon: FontAwesomeIcons.venus, 
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20, height: 20),
            const Expanded(
              child: MyCard(
                colour: activeCardColor, 
                cardChild: ,
              ),
            ),
            const SizedBox(width: 20, height: 20),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      colour: activeCardColor, 
                      cardChild: ,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: MyCard(
                      colour: activeCardColor, 
                      cardChild: ,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: const Color(0xFFEB1555),
              width: double.infinity,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}

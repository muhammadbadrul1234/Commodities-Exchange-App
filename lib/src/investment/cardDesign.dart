import 'package:flutter/material.dart';
import 'package:untitled/src/investment/dataset.dart';

class CardDesign extends StatelessWidget {
  final CardData card;
  const CardDesign({super.key, required this.card});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: card.color,
            boxShadow: [
              BoxShadow(
                  color: card.color, offset: const Offset(0, 0), blurRadius: 5)
            ],
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 30,
              right: 30,
              child: SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Current Balance",
                          style: TextStyle(color: Colors.white54),
                        ),
                        Text(
                          card.date,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$${card.balance}",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "****${card.number}",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  /*Image(
                    image: AssetImage(card.image),
                    width: 50,
                  )*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

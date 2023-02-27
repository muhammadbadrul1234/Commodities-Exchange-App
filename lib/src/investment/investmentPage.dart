// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled/src/investment/cardDesign.dart';
import 'package:untitled/src/investment/dataset.dart';
import 'package:untitled/src/investment/investment.dart';
import 'package:untitled/src/investment/LastInvestment.dart';

import '../navigationbar/sidemenu.dart';

class InvestmentPage extends StatelessWidget {
  const InvestmentPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF126172),
        leading:
            IconButton(icon: const Icon(Icons.menu), 
            onPressed: () => 
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SideMenu()),
                      )
            
            
            
            
            ),
        // actions: [
        //     IconButton(icon: const Icon(Icons.settings), onPressed: () => print("menu"))
        // ],
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: const Color(0xFF126172),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 200,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                    alignment: Alignment.topCenter,
                    child: CardList()
           ),
              const LastInvestment(),
              const Deposits(),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Investment()),
                  );
                },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFF126172),
              ),
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child: const Center(child: Text("Go Invest",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),)),
            ),
          ),
          const SizedBox(height: 25,)
         ],
        ),
       ],
        ),
      ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    // return CardDesign(
    //  card: cards[0],
    //  );
    return CarouselSlider.builder(
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int i, int index) {
            return CardDesign(
              card: cards[index],
            );
        },
        options: CarouselOptions(
            initialPage: 0,enableInfiniteScroll: false,enlargeCenterPage: true),
    ); //Container
  }
}

class Deposits extends StatelessWidget {
  const Deposits({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10,bottom: 10,left: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Deposits",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24),textAlign: TextAlign.start,),
            const SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 0.2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(child: Text("+",style: TextStyle(fontWeight: FontWeight.w700),)),
                  ),
                  DepositItem(name: "Fast Invest",detail: "7.5% per month",icon: Icon(Icons.bar_chart,color: Colors.blue,),),
                  DepositItem(name: "daily Invest",detail: "0.5% per month",icon: Icon(Icons.bar_chart,color: Colors.greenAccent,),),
                  DepositItem(name: "monthly Invest",detail: "6.5% per month",icon: Icon(Icons.bar_chart,color: Colors.orangeAccent,),)

                ],
              ),
            )
          ],
      ),
    );
  }
}

class DepositItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String detail;
  const DepositItem({super.key, required this.name,required this.icon,required this.detail});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 0.2),
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          const Text("|",style: TextStyle(fontSize: 20,color: Colors.grey),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,style: const TextStyle(fontWeight: FontWeight.w700),),
              Text(detail,style: const TextStyle(color: Colors.black54),),
            ],
          )
        ],
      ),
    );
  }
}

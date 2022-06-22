import 'package:flutter/material.dart';
import 'package:prfit/theme.dart';

class InsightPage extends StatefulWidget {
  const InsightPage({Key? key}) : super(key: key);

  @override
  _InsightPageState createState() => _InsightPageState();
}

class _InsightPageState extends State<InsightPage> {
  int currentindex = 0;
  String result = "";
  double height = 0;
  double weight = 0;
  String status = "";

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(
          'BMI Info',
          style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      );
    }

    Widget heightBody() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tinggi badan :",
            style: blackTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 1)
                ]),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: heightController,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                hintText: 'Cm',
                hintStyle: greyTextStyle.copyWith(fontWeight: medium),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    }

    Widget weightBody() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Berat badan :",
            style: blackTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 1)
                ]),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: weightController,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                hintText: 'Kg',
                hintStyle: greyTextStyle.copyWith(fontWeight: medium),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      );
    }

    Widget buttonCalculate() {
      return Container(
        margin: const EdgeInsets.fromLTRB(
          21,
          0,
          21,
          40,
        ),
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            setState(() {
              height = double.parse(heightController.value.text);
              weight = double.parse(weightController.value.text);
            });

            calculateBmi(
              height,
              weight,
            );
          },
          child: Text(
            'Hitung',
            style: whiteTextStyle.copyWith(fontWeight: medium),
          ),
        ),
      );
    }

    Widget resultCard() {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'BMI Kamu',
              style: greyTextStyle.copyWith(),
            ),
            Text(
              result,
              style: blackTextStyle.copyWith(
                fontSize: 40,
                fontWeight: light,
              ),
            ),
            Text(
              status,
              style: blackTextStyle.copyWith(
                color: Colors.blue[300],
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget bmiCategory() {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 1)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BMI < 18',
                        style: greyTextStyle.copyWith(),
                      ),
                      Text(
                        'Kurang',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BMI 18 - 25',
                        style: greyTextStyle.copyWith(),
                      ),
                      Text(
                        'Normal',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BMI > 25 ',
                        style: greyTextStyle.copyWith(),
                      ),
                      Text(
                        'Berlebih',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: edge),
          children: [
            header(),
            heightBody(),
            weightBody(),
            buttonCalculate(),
            resultCard(),
            bmiCategory(),
          ],
        ),
      ),
    );
  }

  void calculateBmi(double height, double weight) {
    double finalresult = weight / (height * height / 10000);
    if (finalresult < 18) {
      status = "Kurang";
    } else if (finalresult < 26) {
      status = "Normal";
    } else {
      status = "Berlebih";
    }
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        height: 80.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: currentindex == index ? color : Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

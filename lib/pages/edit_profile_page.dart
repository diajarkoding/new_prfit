import 'package:flutter/material.dart';
import 'package:prfit/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

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
              // controller: heightController,
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
              // controller: weightController,
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
            // setState(() {
            //   height = double.parse(heightController.value.text);
            //   weight = double.parse(weightController.value.text);
            // });

            // calculateBmi(
            //   height,
            //   weight,
            // );
          },
          child: Text(
            'Hitung',
            style: whiteTextStyle.copyWith(fontWeight: medium),
          ),
        ),
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prfit/theme.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.blue[400],
        elevation: 0,
        centerTitle: true,
        title: const Text('Edit Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              // color: blackColor,
            ),
          )
        ],
      );
    }

    Widget nameInput() {
      return Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: blackTextStyle.copyWith(fontSize: 16),
              decoration: InputDecoration(
                // hintText: 'name',
                hintStyle: greyTextStyle.copyWith(fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget tingkatInput() {
      return Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tingkat',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: blackTextStyle.copyWith(fontSize: 16),
              decoration: InputDecoration(
                // hintText: 'username',
                hintStyle: blackTextStyle.copyWith(fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget programInput() {
      return Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Program',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: blackTextStyle.copyWith(fontSize: 16),
              decoration: InputDecoration(
                // hintText: 'isi email kamu',
                hintStyle: greyTextStyle.copyWith(fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget weightInput() {
      return Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Berat badan',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: blackTextStyle.copyWith(fontSize: 16),
              decoration: InputDecoration(
                // hintText: 'isi email kamu',
                hintStyle: greyTextStyle.copyWith(fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget fatInput() {
      return Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kadar lemak',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: blackTextStyle.copyWith(fontSize: 16),
              decoration: InputDecoration(
                // hintText: 'isi email kamu',
                hintStyle: greyTextStyle.copyWith(fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget bmiInput() {
      return Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bmi',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: blackTextStyle.copyWith(fontSize: 16),
              decoration: InputDecoration(
                // hintText: 'isi email kamu',
                hintStyle: greyTextStyle.copyWith(fontSize: 16),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: edge),
        child: ListView(
          children: [
            Center(
              child: Hero(
                tag: 'man',
                child: Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: edge, bottom: edge),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/man.png'),
                    ),
                  ),
                ),
              ),
            ),
            nameInput(),
            tingkatInput(),
            programInput(),
            weightInput(),
            fatInput(),
            bmiInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: content(),
      // resizeToAvoidBottomInset: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prfit/pages/edit_profile.dart';
import '../model/Indicator.dart';
import '../theme.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Container(
            height: 260,
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'man',
                    child: Image.asset(
                      'assets/man.png',
                      width: 80,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Alan Bakrie',
                    style: whiteTextStyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    'Beginner\n  Bulking',
                    style: whiteTextStyle.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(edge, 235, edge, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IndikatorCard(
                  Indicator(id: 1, nameW: 'Weight', weight: 55),
                ),
                const SizedBox(width: 10),
                IndikatorCard(
                  Indicator(id: 1, nameW: 'Height', weight: 166),
                ),
                const SizedBox(width: 10),
                IndikatorCard(
                  Indicator(id: 1, nameW: 'BMI', weight: 20),
                ),
              ],
            ),
          ),
        ],
      );
    }

    // Widget content() {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const SizedBox(
    //         height: 20,
    //       ),
    //       Container(
    //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
    //         child: Column(
    //           children: <Widget>[
    //             Container(
    //               margin: const EdgeInsets.only(bottom: 8),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: const Color(0xffFFFFFF),
    //                   boxShadow: const [
    //                     BoxShadow(color: Colors.black26, blurRadius: 1)
    //                   ]),
    //               child: Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Row(
    //                   children: <Widget>[
    //                     const Icon(
    //                       Icons.access_time_outlined,
    //                       size: 50,
    //                     ),
    //                     const SizedBox(
    //                       width: 20,
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: const [
    //                         Text(
    //                           "Oprasional",
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         SizedBox(
    //                           height: 3,
    //                         ),
    //                         Text("Setiap hari"),
    //                         Text("07:00 - 21:00"),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               margin: const EdgeInsets.only(bottom: 8),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: const Color(0xffFFFFFF),
    //                   boxShadow: const [
    //                     BoxShadow(color: Colors.black26, blurRadius: 1)
    //                   ]),
    //               child: Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Row(
    //                   children: <Widget>[
    //                     const Icon(
    //                       Icons.monetization_on_outlined,
    //                       size: 50,
    //                     ),
    //                     const SizedBox(
    //                       width: 20,
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: const [
    //                         Text(
    //                           "Biaya",
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         SizedBox(
    //                           height: 3,
    //                         ),
    //                         Text("Rp. 12.000 / hari"),
    //                         Text("Rp. 140.000 / bulan"),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               margin: const EdgeInsets.only(bottom: 8),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: const Color(0xffFFFFFF),
    //                   boxShadow: const [
    //                     BoxShadow(color: Colors.black26, blurRadius: 1)
    //                   ]),
    //               child: Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Row(
    //                   children: <Widget>[
    //                     const Icon(
    //                       Icons.call_outlined,
    //                       size: 50,
    //                     ),
    //                     const SizedBox(
    //                       width: 20,
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: const [
    //                         Text(
    //                           "Telepon",
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         SizedBox(
    //                           height: 3,
    //                         ),
    //                         Text("0812-2102-270"),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               margin: const EdgeInsets.only(bottom: 8),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: const Color(0xffFFFFFF),
    //                   boxShadow: const [
    //                     BoxShadow(color: Colors.black26, blurRadius: 1)
    //                   ]),
    //               child: Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Row(
    //                   children: <Widget>[
    //                     const Icon(
    //                       Icons.location_on_outlined,
    //                       size: 50,
    //                     ),
    //                     const SizedBox(
    //                       width: 20,
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: const [
    //                         Text(
    //                           "Alamat",
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         SizedBox(
    //                           height: 3,
    //                         ),
    //                         Text(
    //                             "Jl. Letjen Mashudi No.8, Setiajaya, \nKec. Cibeureum, Tasikmalaya, \nJawa Barat 46115"),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               margin: const EdgeInsets.only(bottom: 8),
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: const Color(0xffFFFFFF),
    //                   boxShadow: const [
    //                     BoxShadow(color: Colors.black26, blurRadius: 1)
    //                   ]),
    //               child: Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Row(
    //                   children: <Widget>[
    //                     const Icon(
    //                       Icons.now_widgets_outlined,
    //                       size: 50,
    //                     ),
    //                     const SizedBox(
    //                       width: 20,
    //                     ),
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         const Text(
    //                           "Fasilitas",
    //                           style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         const SizedBox(
    //                           height: 3,
    //                         ),
    //                         Row(
    //                           children: const [
    //                             Icon(
    //                               Icons.fiber_manual_record,
    //                               size: 8,
    //                             ),
    //                             Text(" Locker")
    //                           ],
    //                         ),
    //                         Row(
    //                           children: const [
    //                             Icon(
    //                               Icons.fiber_manual_record,
    //                               size: 8,
    //                             ),
    //                             Text(" Mushola")
    //                           ],
    //                         ),
    //                         Row(
    //                           children: const [
    //                             Icon(
    //                               Icons.fiber_manual_record,
    //                               size: 8,
    //                             ),
    //                             Text(" Kamar Mandi")
    //                           ],
    //                         ),
    //                         Row(
    //                           children: const [
    //                             Icon(
    //                               Icons.fiber_manual_record,
    //                               size: 8,
    //                             ),
    //                             Text(" Alat Fitnes Komplit")
    //                           ],
    //                         ),
    //                       ],
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   );
    // }

    Widget menuItem(String text) {
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: blackTextStyle.copyWith(),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: blackColor,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: edge),
        // color: backgroudColor3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Profile',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile())),
                child: menuItem('Edit Profile')),
            SizedBox(
              height: edge,
            ),
            Text(
              'General',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            menuItem('Tentang Aplikasi'),
            menuItem('Tentang Pinang Ria Fitness'),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}

class IndikatorCard extends StatelessWidget {
  final Indicator indicator;

  const IndikatorCard(this.indicator, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 90,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)],
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${indicator.weight}',
            style: blackTextStyle.copyWith(fontSize: 14),
          ),
          Text(
            indicator.nameW,
            style: blackTextStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

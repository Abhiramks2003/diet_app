import 'package:flutter_application_1/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Popular {
  static Column popularList(List<PopularDietsModel> popularDiets) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Popular',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        const SizedBox(height: 5),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(0.07),
                          offset: const Offset(0, 10),
                          blurRadius: 40,
                          spreadRadius: 0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      popularDiets[index].iconPath,
                      width: 65,
                      height: 65,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          popularDiets[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          popularDiets[index].level +
                              ' | ' +
                              popularDiets[index].duration +
                              ' | ' +
                              popularDiets[index].calorie,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xff7B6F72)),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/button.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              );
            },
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
            itemCount: popularDiets.length),
      ],
    );
  }
}

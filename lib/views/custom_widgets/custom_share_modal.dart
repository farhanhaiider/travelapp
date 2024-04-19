import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_buddy/utils/app_images.dart';
import 'package:travel_buddy/utils/app_styles.dart';

class ShareModal extends StatelessWidget {
  ShareModal({Key? key}) : super(key: key);

  List<String> images = [
    kShareFacebook,
    kShareInstagram,
    kShareInstagram,
    kShareTwitter,
    kShareWhatsapp
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 260.h,
        child: Dialog(
          child: Container(
            width: 350.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 135.w),
                      child: Text("Share",
                          style: AppStyles.appBarHeadingTextStyle().copyWith(
                              fontWeight: FontWeight.w500, fontSize: 18.sp)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80.w),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Color(0x1A000000),
                ),
                SizedBox(
                  height: 10.h,
                ),
                // Text(
                //   'Share to social media apps',
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w500,
                //     fontFamily: 'DM Scans',
                //     color: Theme.of(context).colorScheme.onSecondaryContainer,
                //   ),
                // ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemExtent: 63.w,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            images[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemExtent: 63.w,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Image.asset(images[index]),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

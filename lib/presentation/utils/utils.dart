import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmediaapp/presentation/utils/constraints.dart';

class Utils {
  // static Future<String?> pickSingleImage() async {
  //   final ImagePicker picker = ImagePicker();
  //   // Pick an image
  //   final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     return image.path;
  //   }
  //   return null;
  // }

  // static Future<List<String>> pickMultipleImage() async {
  //   final ImagePicker picker = ImagePicker();
  //   final List<String> imageList = [];
  //   final List<XFile?> images = await picker.pickMultiImage();
  //   if (images.isNotEmpty) {
  //     // imageList.addAll(images);
  //     //  return images.map((e) => imageList.add(e!.path)).toList();
  //     for (var i in images) {
  //       imageList.add(i!.path.toString());
  //     }
  //     debugPrint('picked images: ${imageList.length}');
  //     return imageList;
  //   }
  //   return [];
  // }

  static Widget verticalSpace(double size) {
    return SizedBox(height: size.h);
  }

  static Widget horizontalSpace(double size) {
    return SizedBox(width: size.w);
  }

  static double hSize(double size) {
    return size.w;
  }

  static double vSize(double size) {
    return size.h;
  }

  static EdgeInsets symmetric({double h = 20.0, v = 0.0}) {
    return EdgeInsets.symmetric(
        horizontal: Utils.hPadding(size: h), vertical: Utils.vPadding(size: v));
  }

  static double radius(double radius) {
    return radius.sp;
  }

  static BorderRadius borderRadius({double r = 10.0}) {
    return BorderRadius.circular(Utils.radius(r));
  }

  static EdgeInsets all({double value = 0.0}) {
    return EdgeInsets.all(value.dm);
  }

  static EdgeInsets only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return EdgeInsets.only(
        left: left.w, top: top.h, right: right.w, bottom: bottom.h);
  }

  static double vPadding({double size = 20.0}) {
    return size.h;
  }

  static double hPadding({double size = 20.0}) {
    return size.w;
  }

  static double toDouble(String? number) {
    try {
      if (number == null) return 0;
      return double.tryParse(number) ?? 0;
    } catch (e) {
      return 0;
    }
  }

  static double toInt(String? number) {
    try {
      if (number == null) return 0;
      return double.tryParse(number) ?? 0;
    } catch (e) {
      return 0;
    }
  }

  static TextStyle inputTextStyle() {
    return GoogleFonts.plusJakartaSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: blackColor,
    );
  }

  static loadingDialog(
    BuildContext context, {
    bool barrierDismissible = false,
  }) {
    // closeDialog(context);
    showCustomDialog(
      context,
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(20),
        child: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(color: primaryColor),
              SizedBox(width: 15),
              Text('Please wait a moment')
            ],
          ),
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  static bool _isDialogShowing(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent != true;

  static void closeDialog(BuildContext context) {
    if (_isDialogShowing(context)) {
      Navigator.pop(context);
    }
  }

  static Future showCustomDialog(
    BuildContext context, {
    Widget? child,
    bool barrierDismissible = false,
    Color bgColor = whiteColor,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: child,
        );
      },
    );
  }

  static void errorSnackBar(BuildContext context, String errorMsg) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(errorMsg, style: const TextStyle(color: Colors.red)),
        ),
      );
  }

  static void showSnackBar(BuildContext context, String msg,
      [Color textColor = whiteColor]) {
    final snackBar = SnackBar(
        duration: const Duration(milliseconds: 800),
        content: Text(msg, style: TextStyle(color: textColor)));
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void serviceUnAvailable(BuildContext context, String msg,
      [Color textColor = Colors.white]) {
    final snackBar = SnackBar(
        backgroundColor: Colors.red,
        duration: const Duration(milliseconds: 500),
        content: Text(msg, style: TextStyle(color: textColor)));
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showSnackBarWithAction(
      BuildContext context, String msg, VoidCallback onPress,
      [Color textColor = primaryColor]) {
    final snackBar = SnackBar(
      content: Text(msg, style: TextStyle(color: textColor)),
      action: SnackBarAction(
        label: 'Active',
        onPressed: onPress,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

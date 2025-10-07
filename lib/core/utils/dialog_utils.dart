import 'package:flutter/material.dart';

import 'app_styles.dart';

class DialogUtils {
  static void showLoading({required BuildContext context, required String message}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(message,
                    style: AppStyles.bold16BlueLinerText,),
                )
              ],
            ),
          );
        });
  }

  static void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }

  static void showMessage({required BuildContext context, required String message, String? title , String? posActionName, Function? posAction, String? negActionName, Function? negAction}) {
    List<Widget> actions = [];
    if (posActionName != null) {
      actions.add(TextButton(
          onPressed: () {
            Navigator.pop(context);
            // if(posAction != null){
            //   posAction.call();
            // }
            posAction?.call();
          },
          child: Text(posActionName,
            style: AppStyles.bold16BlueLinerText,)));
    }
    if (negActionName != null) {
      actions.add(TextButton(
          onPressed: () {
            Navigator.pop(context);
            negAction?.call();
          },
          child: Text(negActionName,
              style: AppStyles.bold16BlueLinerText)));
    }
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(message,
              style: AppStyles.bold16BlueLinerText,),
            title: Text(
              title ?? '',
              style: AppStyles.bold16BlueLinerText,
            ),
            actions: actions,
          );
        });
  }
}

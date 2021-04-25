import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';

class ResultError extends StatelessWidget {
  final String title;

  const ResultError({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.cry),
            Column(
              children: [
                Text(
                  "Estude mais um pouco!",
                  style: AppTextStyles.heading40,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                      text: "\nInfelizmente você não",
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: "\nacertou nenhuma questão de ",
                            style: AppTextStyles.body),
                        TextSpan(
                            text: "\n$title.", style: AppTextStyles.bodyBold),
                      ]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.white(
                          label: "Voltar ao início",
                          onTap: () {
                            Navigator.pop(context);
                          }),
                    )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

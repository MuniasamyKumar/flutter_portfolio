import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/functions/launch_url.dart';
import 'package:flutter_portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Discover my Amazing \nArt Space!",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)
                        : Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                const MyBuildAnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      downloadResume();
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: const Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          const Text("I build "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("responsive web and mobile app.",
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText("complete Book My Show Clone app UI.",
          speed: const Duration(milliseconds: 60)),
      TyperAnimatedText("Voice Assistant app with ChatGPT and Dall E.",
          speed: const Duration(milliseconds: 60)),
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: "flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">")
    ]));
  }
}

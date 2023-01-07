import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class IntroScreenView extends StatelessWidget {
  IntroScreenView({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: OnBoard(
        pageController: _pageController,
        onSkip: () {
          // print('skipped');
        },
        onDone: () {
          // print('done tapped');
        },
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
          color: Colors.deepOrange,
          fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.15,
        ),
        descriptionStyles: TextStyle(
          fontSize: 16,
          color: Colors.brown.shade300,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: Colors.deepOrangeAccent,
          activeColor: Colors.deepOrange,
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        skipButton: TextButton(
          onPressed: () {
            // print('skipButton pressed');
          },
          child: const Text(
            "تخطي",
            style: TextStyle(color: Colors.white),
          ),
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => _onNextTap(state),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  state.isLastPage ? "تم" : "التالي",
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "جدول مواعيدك !",
    description:
        "جدول أعمال الصيانة لمنزلك أو منشأتك حسب إحتياجك من خدماتنا بالوقت اللي يناسبك",
    imgUrl: "assets/images/screen1.png",
  ),
  const OnBoardModel(
    title: "جميع خدمات الصيانه على بُعد لمسة ",
    description:
        "خياراتك لصيانة منزلك صارت متنوعة وتناسب احتياجاتك وسهولة بالطلب و سرعة بالتنفيذ",
    imgUrl: 'assets/images/screen2.png',
  ),
  const OnBoardModel(
    title: "إدفع بالطريقة اللي تريحك !",
    description:
        "خيارات متنوعة لدفع أسهل, تقدر تدفع اونلاين او عند الإستلام وتقدر تشحن المحفظه الألكترونية مسبقا",
    imgUrl: 'assets/images/screen2.png',
  ),
];

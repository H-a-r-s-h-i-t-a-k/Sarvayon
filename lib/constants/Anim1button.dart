import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimatedJump extends StatelessWidget {
  const AnimatedJump({
    super.key,
    required RiveAnimationController btnAnimationController,
    required this.press,
  }) : _btnAnimationController = btnAnimationController;

  final RiveAnimationController _btnAnimationController;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: 836,
        height: 166,
        child: Stack(
          children: [
            RiveAnimation.asset(
              // "asset/rive_assets/.riv",
              "asset/rive_assets/jump.riv",
              controllers: [_btnAnimationController],
              // fit: BoxFit.,
            ),
            Positioned.fill(
              top: 8,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.white,
                    size: 73.9,
                    // weight: 15.6,
                  ),
                  SizedBox(
                    height: 78,
                    width: 146,
                  ),
                  Text(
                    " let's Join in !",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

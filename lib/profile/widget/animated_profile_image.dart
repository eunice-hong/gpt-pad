import 'package:eunice_template/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimatedProfileImage extends StatefulWidget {
  const AnimatedProfileImage({super.key});

  @override
  State<AnimatedProfileImage> createState() => AnimatedProfileImageState();
}

class AnimatedProfileImageState extends State<AnimatedProfileImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  late final Animation<double> _scale = Tween<double>(
    begin: 1,
    end: 0.7,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
      reverseCurve: Curves.elasticIn,
    ),
  );

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE0D9F6),
            blurRadius: 100,
          ),
        ],
      ),
      width: 500,
      height: 500,
      child: Stack(
        children: [
          Center(
            child: Transform.scale(
              scale: _scale.value,
              child: Listener(
                onPointerDown: (PointerDownEvent event) {
                  _controller.forward();
                },
                onPointerUp: (PointerUpEvent event) {
                  _controller.reverse();
                  HapticFeedback.heavyImpact();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Assets.images.drawable.projectLogo.image(
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SlideFadeTransition extends StatefulWidget {
  const SlideFadeTransition(
      {Key? key,
      required this.child,
      this.offset = -1,
      this.curve = Curves.bounceInOut,
      this.animationDuration = const Duration(milliseconds: 2000)})
      : super(key: key);

  final Widget child;
  final double offset;
  final Curve curve;
  final Duration animationDuration;

  @override
  State<SlideFadeTransition> createState() => _SlideFadeTransitionState();
}

class _SlideFadeTransitionState extends State<SlideFadeTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animationSlide;

  late AnimationController _animationController;

  late Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    _animationSlide =
        Tween<Offset>(begin: Offset(0, widget.offset), end: const Offset(0, 0))
            .animate(CurvedAnimation(
      curve: widget.curve,
      parent: _animationController,
    ));

    _animationFade =
        Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
      curve: widget.curve,
      parent: _animationController,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}

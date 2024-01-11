import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new AnimationDemo()));
}

class AnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimationState();
}

class AnimationState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  //传入
  late Animation<double> _doubleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _doubleAnimation = new Tween(begin: 0.0, end: 100.0).animate(
        _animationController); //使用_animationController生成一个在2秒中从0-100之前的连续变化值
//      ..addListener(() {
//        print("------------------${_doubleAnimation.value}");
//        setState(() {
//          //改变状态
//          _textSize = _doubleAnimation.value;
//        });
//      })
//      ..addStatusListener((status) {
//        if (status == AnimationStatus.forward) {
//          print("------------------动画开始执行");
//        } else if (status == AnimationStatus.completed) {
//          print("------------------动画开始完成");
//          _animationController.reverse(); //动画执行完成后，让动画翻转，
//        } else if (status == AnimationStatus.dismissed) {
//          print("------------------动画消失");
//          _animationController.forward(); //动画消失后，重新开始
//        }
//      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("AnimationDemo"),
      ),
      body: Center(
          child: AnimationText(
            animation: _doubleAnimation,
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
//          onPressed: () {
//            onAnimationStart();
//          }),
        onPressed: onAnimationStart,
      ),
    );
  }

  onAnimationStart() {
    _animationController.forward(from: 0.0);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}

/**
 * 使用AnimatedWidget，直接把animation传递给Widget，在weidget中做处理，不用监听anmition的状态了
 */
class AnimationText extends AnimatedWidget {
  AnimationText({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Text(
      "我会变大",
      style: TextStyle(fontSize: animation.value),
    );
  }
}
//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/

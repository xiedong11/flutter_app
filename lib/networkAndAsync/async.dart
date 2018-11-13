import 'dart:async';

void main() {
  print(enterRestaurant());
  Future<String> waitForDinnerFuture = new Future(waitForDinner);

  Future<String> waitForDinnerFuture2 = waitForDinnerFuture;
  waitForDinnerFuture2.then((str){
    print(str);
  });

  waitForDinnerFuture.then((onValue) {
    print(onValue);
  });
  print(startChat());
  print(playPhone());
}

String enterRestaurant() {
  return "和朋友进入了一家餐馆";
}

String waitForDinner() {
  return "我们的菜来了，我要开始吃饭了";
}

String startChat() {
  return "我们朋友聊起家常";
}

String playPhone() {
  return "等了好好久了，我还是玩会手机吧";
}

//http://flutter.link/2018/04/12/Dart%E4%B8%AD%E7%9A%84%E5%BC%82%E6%AD%A5%E6%93%8D%E4%BD%9C/
//没完全理解
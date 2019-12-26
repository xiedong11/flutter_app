import 'package:flutter_app/pages/redux/action.dart';

/// 定义一个state
class ReduxState {
  int count;

  ReduxState.initState() : count = 0;
}



/// 定义reducer
ReduxState getReduce(ReduxState state, action) {
  if (action == Action.decrease) {
    state.count = state.count -1;
  } else if (action == Action.increase) {
    state.count = state.count + 1;
  }

  return state;
}

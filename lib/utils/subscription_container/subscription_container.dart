import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

@immutable
class SubscriptionContainer {
  final _subscriptions = <StreamSubscription>[];

  void add(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }

  void dispose() {
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    _subscriptions.clear();
  }
}

extension AppendSubscriptionContainer on StreamSubscription {
  void append(SubscriptionContainer container) => container.add(this);
}

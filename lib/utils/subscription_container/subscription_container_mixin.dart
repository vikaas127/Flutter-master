import 'package:flutter/foundation.dart';

import 'subscription_container.dart';

mixin SubscriptionContainerMixin {
  @protected
  final SubscriptionContainer subscriptionContainer = SubscriptionContainer();

  void dispose() {
    subscriptionContainer.dispose();
  }
}

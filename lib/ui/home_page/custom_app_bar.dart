import 'dart:ui';

import 'package:countdown_animation/countdown_animation.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final extendedAppBarHeight = MediaQuery.of(context).size.height * 0.45;
    final topPadding = MediaQuery.of(context).padding.top;

    final maxVisibleAreaHeight = extendedAppBarHeight + topPadding;

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      expandedHeight: extendedAppBarHeight,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 1,
            colors: <Color>[
              Color(0xff33CEFF),
              Color(0xff30AAFF),
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final headerHeight = kToolbarHeight + topPadding;

            final centerTitleOpacity = (constraints.maxHeight - headerHeight) /
                (maxVisibleAreaHeight - headerHeight);

            final headerFollowButtonOpacity = 1 - centerTitleOpacity;
            final appBarOpacity = constraints.maxHeight <= headerHeight + 10
                ? headerFollowButtonOpacity
                : 0.0;
            final titleOpacity =
                constraints.maxHeight <= extendedAppBarHeight - 40
                    ? 0.0
                    : centerTitleOpacity;
            final style = Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white);

            return Stack(children: <Widget>[
              Opacity(
                opacity: titleOpacity,
                child: IgnorePointer(
                  /// If [_CenterTitle] is transparent, it should not be touchable.
                  ignoring: centerTitleOpacity < 0.25,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: const EdgeInsets.all(36),
                          child: Text(
                            'Home',
                            style: style,
                          ))),
                ),
              ),
              Opacity(
                opacity: centerTitleOpacity,
                child: IgnorePointer(
                  /// If [_CenterTitle] is transparent, it should not be touchable.
                  ignoring: centerTitleOpacity < 0.25,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ScrollLane(
                        height: extendedAppBarHeight / 2,
                      )),
                ),
              ),
              SizedBox(
                height: extendedAppBarHeight / 2,
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Opacity(
                          opacity: centerTitleOpacity,
                          child: Text(
                            'Available Raw Material',
                            style: style,
                          ),
                        ))),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: topPadding),
                    Opacity(
                      opacity: appBarOpacity,
                      child: IgnorePointer(
                        ignoring: headerFollowButtonOpacity < 0.25,
                        child: const _TopTitle(),
                      ),
                    ),
                  ],
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}

class _TopTitle extends StatelessWidget {
  const _TopTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Available raw Material',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

class ScrollLane extends StatelessWidget {
  final double height;
  const ScrollLane({Key key, @required this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final titleStyle =
        Theme.of(context).textTheme.headline5.copyWith(color: Colors.white);
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: height / 2,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white,
                    height: height / 4,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: height / 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SizedBox(
                    width: 24,
                  );
                }
                return AnalyticsCard(
                  index: index,
                  height: height / 20,
                );
              },
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-1, -0.3),
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Available Raw Material',
                style: titleStyle,
              )),
        ),
      ],
    );
  }
}

class AnalyticsCard extends StatefulWidget {
  const AnalyticsCard({Key key, @required this.index, @required this.height})
      : super(key: key);
  final int index;
  final double height;
  @override
  _AnalyticsCardState createState() => _AnalyticsCardState();
}

class _AnalyticsCardState extends State<AnalyticsCard>
    with TickerProviderStateMixin {
  CountTriggerController countTriggerController;
  @override
  void initState() {
    countTriggerController = CountTriggerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .headline5
        .copyWith(fontWeight: FontWeight.bold);
    final subTitle = Theme.of(context)
        .textTheme
        .subtitle2
        .copyWith(fontWeight: FontWeight.bold);

    final width = MediaQuery.of(context).size.width * 0.6;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        margin: const EdgeInsets.only(bottom: 4, right: 4),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.grey.withOpacity(0.3)),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        width: width,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                width: width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        countTriggerController.trigger(widget.index);
                      },
                      child: Text(
                        'Material ${widget.index}',
                        style: subTitle,
                      ),
                    ),
                    Text(
                      '100 kg',
                      style: style,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: width / 2,
                  child: CountDownAnimation(
                    controller: countTriggerController,
                    initialCounterIndex: 1,
                    operation: Operation.Decrement,
                    size: double.infinity,
                    totalNumber: 10,
                    progressColor: lightBlue,
                    onChanged: (index) {},
                    backgroundColor: Colors.lightBlue,
                    strokeWidth: widget.height,
                    child: LayoutBuilder(
                      builder: (c, b) {
                        return Text(
                          '60%',
                          style: TextStyle(fontSize: b.maxHeight / 4),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

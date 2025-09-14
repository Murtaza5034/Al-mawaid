import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/thalinodetails_widget.dart';
import '/components/card10_rating_widget.dart';
import '/components/card26_wrap_cards_widget.dart';
import '/components/profilke_widget.dart';

// Focus widget keys for this walkthrough
final container4zihs6zo = GlobalKey();
final buttonHlchuj3o = GlobalKey();
final circleImageLp16mai4 = GlobalKey();
final listTile2u4cmng7 = GlobalKey();

/// full app navigation
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: container4zihs6zo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => ThalinodetailsWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonHlchuj3o,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => Card10RatingWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: circleImageLp16mai4,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => Card26WrapCardsWidget(),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: listTile2u4cmng7,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => ProfilkeWidget(),
          ),
        ],
      ),
    ];

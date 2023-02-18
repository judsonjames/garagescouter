import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../components/forms/increment_field.dart';

/// Page View widget that represents the "Tele-operated" period of the match
class MatchTeleopScreen extends StatefulWidget {
  const MatchTeleopScreen({super.key});

  @override
  State<MatchTeleopScreen> createState() => _MatchTeleopScreenState();
}

class _MatchTeleopScreenState extends State<MatchTeleopScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final double spaceBetween = 10;
  final double spaceOutside = 10;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: Column(children: [
      const Text("TELE-OPERATED"),
      IncrementFormBuilderField(
        name: "teleop_high_cubes",
        label: "High Cubes",
        max: 3,
        spaceBetween: spaceBetween,
      ),
      IncrementFormBuilderField(
        name: "teleop_high_cones",
        label: "High Cones",
        max: 6,
        spaceBetween: spaceBetween,
      ),
      IncrementFormBuilderField(
        name: "teleop_mid_cubes",
        label: "Mid Cubes",
        max: 3,
        spaceBetween: spaceBetween,
      ),
      IncrementFormBuilderField(
        name: "teleop_mid_cones",
        label: "Mid Cones",
        max: 6,
        spaceBetween: spaceBetween,
      ),
      IncrementFormBuilderField(
        name: "teleop_hybrid_cubes",
        label: "Hybrid Cubes",
        max: 9,
        spaceBetween: spaceBetween,
      ),
      IncrementFormBuilderField(
        name: "teleop_hybrid_cones",
        label: "Hybrid Cones",
        max: 9,
        spaceBetween: spaceBetween,
      ),
      FormBuilderCheckbox(
        name: "teleop_shuttle",
        title: const Text("Teleop Shuttle"),
        initialValue: false,
      ),
      FormBuilderCheckbox(
          name: "teleop_defend",
          title: const Text("Teleop Defend"),
          initialValue: false),
    ]));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:lance_box/app.dart';

import '../../../states/set_up_state.dart';
import '../../widgets/selection_button.dart';

class AccountSelectionSection extends StatelessWidget {
  const AccountSelectionSection({
    super.key,
    required this.setUpProfileState,
    required this.setUpProfileNotifier,
  });

  final SetUpStateModel setUpProfileState;
  final SetUpState setUpProfileNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionButton(
          text: "As a Business Owner",
          isSelected: setUpProfileState.selection == 0,
          onPressed: () => setUpProfileNotifier.selectBusinessOwner(),
        ),
        SizedBox(height: context.dynamicScreenHeight(15)),
        SelectionButton(
          text: "As an Individual/Freelancer",
          isSelected: setUpProfileState.selection == 1,
          onPressed: () => setUpProfileNotifier.selectFreelancer(),
        ),
      ],
    );
  }
}
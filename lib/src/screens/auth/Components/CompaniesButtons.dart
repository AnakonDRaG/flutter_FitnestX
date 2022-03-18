import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:flutter/widgets.dart';

class CompaniesButtons extends StatelessWidget {
  const CompaniesButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      children: const [
        CompanyButton(
          logoPath: LOGO_GOOGLE_SVG,
          onTap: null,
        ),
        CompanyButton(
          logoPath: LOGO_FACEBOOK_SVG,
          onTap: null,
        ),
      ],
    );
  }
}

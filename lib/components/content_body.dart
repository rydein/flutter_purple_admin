import 'package:flutter/material.dart';
import 'package:flutter_purple_admin/components/gradient_button.dart';
import 'package:flutter_purple_admin/components/outlined_button.dart';
import 'package:flutter_purple_admin/components/rounded_button.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 44),
        color: Color.fromRGBO(242, 237, 243, 1),
        child: Container(
          padding: const EdgeInsets.all(40),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GradientButtonsContent(),
              SizedBox(height: 24),
              RoundedButtonsContent(),
              SizedBox(height: 24),
              OutlinedButtonsContent(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientButtonsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gradient Buttons',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 10),
        Wrap(
          children: [
            GradientButton(
              label: 'Primary',
              color: GradientButtonColor.primary,
            ),
            GradientButton(
              label: 'Secondary',
              color: GradientButtonColor.secondary,
            ),
            GradientButton(
              label: 'Success',
              color: GradientButtonColor.success,
            ),
            GradientButton(
              label: 'Danger',
              color: GradientButtonColor.danger,
            ),
            GradientButton(
              label: 'Waiting',
              color: GradientButtonColor.waiting,
            ),
            GradientButton(
              label: 'Info',
              color: GradientButtonColor.info,
            ),
            GradientButton(
              label: 'Light',
              color: GradientButtonColor.light,
            ),
            GradientButton(
              label: 'Dark',
              color: GradientButtonColor.dark,
            ),
          ],
        ),
      ],
    );
  }
}

class RoundedButtonsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rounded Buttons',
          style: Theme.of(context).textTheme.headline6,
        ),
        Wrap(
          children: [
            RoundedButton(
              label: 'Primary',
              color: RoundedButtonColor.primary,
            ),
            RoundedButton(
              label: 'Secondary',
              color: RoundedButtonColor.secondary,
            ),
            RoundedButton(
              label: 'Success',
              color: RoundedButtonColor.success,
            ),
            RoundedButton(
              label: 'Danger',
              color: RoundedButtonColor.danger,
            ),
            RoundedButton(
              label: 'Waiting',
              color: RoundedButtonColor.waiting,
            ),
            RoundedButton(
              label: 'Info',
              color: RoundedButtonColor.info,
            ),
            RoundedButton(
              label: 'Light',
              color: RoundedButtonColor.light,
            ),
            RoundedButton(
              label: 'Dark',
              color: RoundedButtonColor.dark,
            ),
          ],
        ),
      ],
    );
  }
}

class OutlinedButtonsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Outlined Buttons',
          style: Theme.of(context).textTheme.headline6,
        ),
        Wrap(
          children: [
            PAOutlinedButton(
              label: 'Primary',
              color: PAOutlinedButtonColor.primary,
            ),
            PAOutlinedButton(
              label: 'Secondary',
              color: PAOutlinedButtonColor.secondary,
            ),
            PAOutlinedButton(
              label: 'Success',
              color: PAOutlinedButtonColor.success,
            ),
            PAOutlinedButton(
              label: 'Danger',
              color: PAOutlinedButtonColor.danger,
            ),
            PAOutlinedButton(
              label: 'Waiting',
              color: PAOutlinedButtonColor.waiting,
            ),
            PAOutlinedButton(
              label: 'Info',
              color: PAOutlinedButtonColor.info,
            ),
            PAOutlinedButton(
              label: 'Light',
              color: PAOutlinedButtonColor.light,
            ),
            PAOutlinedButton(
              label: 'Dark',
              color: PAOutlinedButtonColor.dark,
            ),
          ],
        ),
      ],
    );
  }
}

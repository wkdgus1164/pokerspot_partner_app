import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/common/theme/color.dart';

class SignupBusinessHeader extends StatelessWidget {
  const SignupBusinessHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      child: Text(
                        '1단계',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: lightColorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      color: lightColorScheme.primary,
                      height: 2,
                    ),
                  ],
                ),
              ),
              Center(
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 45,
                      alignment: Alignment.center,
                      child: Text(
                        '2단계',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.grey.shade400,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey.shade200,
          width: double.infinity,
          height: 1,
        ),
      ],
    );
  }
}

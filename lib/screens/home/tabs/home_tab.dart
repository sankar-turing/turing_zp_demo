import 'package:flutter/material.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
    required this.fcmToken,
  }) : super(key: key);

  final String fcmToken;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${context.loc.token}: ',
              ),
              SelectableText(
                fcmToken,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

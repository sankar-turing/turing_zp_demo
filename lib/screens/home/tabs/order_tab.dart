import 'package:flutter/material.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class OrderTab extends StatelessWidget {
  const OrderTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.loc.orders,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

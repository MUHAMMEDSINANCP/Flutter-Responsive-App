import 'package:flutter/cupertino.dart';

class SignupWidget extends StatelessWidget {
  final double? size;
  const SignupWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Create account",
          style: TextStyle(fontSize: (size! / 40)),
        ),
      ],
    );
  }
}

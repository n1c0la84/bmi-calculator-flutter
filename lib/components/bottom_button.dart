import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
	final VoidCallback onTap;
	final String buttonTitle;

	const BottomButton({super.key, required this.buttonTitle, required this.onTap});

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onTap,
			child: Container(
				child: Center(
					child: Text(
						buttonTitle,
						style: kLargeButtonTextStyle,
					),
				),
				color: kBottomContainerColor,
				margin: const EdgeInsets.only(top: 10.0),
				padding: const EdgeInsets.only(bottom: 20.0),
				width: double.infinity,
				height: kBottomContainerHeight,
			),
		);
	}
}
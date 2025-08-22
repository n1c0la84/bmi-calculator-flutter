import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
	final IconData icon;
	final VoidCallback onPressed;

	const RoundIconButton({super.key, required this.icon, required this.onPressed});

	@override
	Widget build(BuildContext context) {
		return RawMaterialButton(
			child: Icon(icon),
			onPressed: onPressed,
			constraints: const BoxConstraints.tightFor(
				width: 56.0,
				height: 56.0,
			),
			shape: const CircleBorder(),
			fillColor: const Color(0xff4c4f5e),
		);
	}
}

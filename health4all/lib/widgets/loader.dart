import "package:flutter/material.dart";

class Loader extends StatelessWidget {
  const Loader();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  CircularProgressIndicator(
        strokeWidth: 4,
      ),
    );
  }
}

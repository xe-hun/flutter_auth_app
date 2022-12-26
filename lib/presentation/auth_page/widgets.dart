import 'package:flutter/material.dart';

Widget _textField(
    {required String label,
    required TextEditingController textEditingController,
    bool? obscured,
    Widget? suffix}) {
  return Builder(builder: (context) {
    return TextField(
      obscureText: obscured ?? false,
      obscuringCharacter: '⬤',
      decoration: InputDecoration(
          suffixIcon: suffix,
          labelText: label,
          floatingLabelStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onTertiary),
          labelStyle: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Theme.of(context).colorScheme.onTertiary),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.auto),
      controller: textEditingController,
    );
  });
}

Widget buildTextField(
        {required TextEditingController textEditingController,
        required String label}) =>
    Builder(builder: (context) {
      return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: _textField(
              textEditingController: textEditingController, label: label));
    });

Widget buildPasswordField(
        {required TextEditingController textEditingController,
        required String label,
        required ValueNotifier<bool> textIsObscured,
        required Function() toggleObscured}) =>
    ValueListenableBuilder<bool>(
        valueListenable: textIsObscured,
        builder: (context, value, _) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: _textField(
                  suffix: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: toggleObscured,
                      child: const Text('view')),
                  textEditingController: textEditingController,
                  label: label,
                  obscured: value));
        });

Widget buildButton({required String label, required Function() onPressed}) {
  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Theme.of(context).primaryColor),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            label,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
      ),
    );
  });
}

Widget buildIconButton(
    {required Widget icon,
    required String label,
    required Function() onPressed}) {
  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Theme.of(context).colorScheme.secondary),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              IconTheme(
                  data: IconThemeData(
                      color: Theme.of(context).colorScheme.onSecondary),
                  child: icon),
              Expanded(
                child: Center(
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}

buildForgotPasswordPrompt({required Function() onPressed}) {
  return Builder(builder: (context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: onPressed,
          child: Text(
            'Forgot your password?',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).primaryColor),
          )),
    );
  });
}

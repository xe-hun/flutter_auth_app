import 'package:another_flushbar/flushbar.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/core/failures/value_failures.dart';

const noteBackground = AssetImage('assets/images/note_background.jpg');

Widget _textField(
    {required String label,
    required TextEditingController textEditingController,
    bool? obscured,
    Widget? suffix,
    required Either<ValueFailure, String> Function(String) validator}) {
  return Builder(builder: (context) {
    return TextFormField(
      validator: (value) => validator(value!).fold(
          (l) => l.when(
                invalidEmail: () => 'Please Enter a valid Email!',
                stringTooShort: (value) => '$value is too short!',
                empty: (value) => '$value can not be empty!',
              ),
          (r) => null),
      obscureText: obscured ?? false,
      obscuringCharacter: '⬤',
      decoration: InputDecoration(
          suffixIcon: suffix,
          labelText: label,
          errorStyle: TextStyle(
              fontSize: 15,
              color: Theme.of(context).colorScheme.error,
              fontWeight: FontWeight.w500),
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
    required String label,
    required Either<ValueFailure, String> Function(String) validator}) {
  return Builder(builder: (context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: _textField(
            validator: validator,
            textEditingController: textEditingController,
            label: label));
  });
}

Widget buildPasswordField(
        {required Either<ValueFailure, String> Function(String) validator,
        required TextEditingController textEditingController,
        required String label,
        required ValueNotifier<bool> textIsObscured,
        required Function() toggleObscured}) =>
    ValueListenableBuilder<bool>(
        valueListenable: textIsObscured,
        builder: (context, value, _) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: _textField(
                  validator: validator,
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

Flushbar? Function(String?) buildErrorFlushbar(
  BuildContext context,
) {
  return (message) {
    if (message == null) {
      return null;
    }
    return _flushBar(
      message: message,
      title: 'Error',
      icon: const Icon(Icons.warning_amber_rounded),
      backgroundColor: Theme.of(context).colorScheme.error,
    );
  };
}

Flushbar _flushBar(
    {required Color backgroundColor,
    required String message,
    required String title,
    required Icon icon}) {
  return Flushbar(
    title: title,
    message: message,
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    flushbarPosition: FlushbarPosition.TOP,
    icon: icon,
    backgroundColor: backgroundColor,
  );
}

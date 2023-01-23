# flutter_auth_app
A flutter mobile application showcasing authentication and remote data fetching.
 
# Features 
- would be updated as more features are added.
- user authentication using firebase
- google sigin
- dynamic link functionality

## Introduction
In this project I showcase the app structure necessary to build a scalable, robust and testable app, necessary packages from pub.dev were were used to achieve this feat.

Packages used Were:
 - **[Freezed](https://pub.dev/packages/freezed) :** Leveraging sealed classes for better robust flow.
 - **[Bloc](https://pub.dev/packages/flutter_bloc) :** State Management used for seperating Ui logic from Business Logic and for better work flow.
 - **[Injectable](https://pub.dev/packages/injectable) :** Used in conjunction with Getit package as a powerful dependency injectioni tool
 - **[AutoRoute](https://pub.dev/packages/auto_route) :** Handle routing and routing animations from page to page.
 - **[Isar](https://pub.dev/packages/isar) :** A highspeed database storage used in storing persistent data.
 - **[build runner](https://pub.dev/packages/build_runner) :** Most packages require code generation and are therefore dependent on build runner
 - **[Mockito](https://pub.dev/packages/mockito) :** For mocking third party dependencies when testin the app.
 - **[responsive_framework](https://pub.dev/packages/responsive_framework) :** For rescaling and resizing the app to fit different screen sizes

## Conclusion
 - The essence of this app was to showcase an app design, with scalability in mind, while using adequately powerful packages published on pub.dev to achieve this.
 - The app is thoroughly unit tested.

## Note
 - the dependency Isar does not support x86 emulators, Therefore use an x64 emulator to run the code. [Issue](https://github.com/isar/isar/issues/943)

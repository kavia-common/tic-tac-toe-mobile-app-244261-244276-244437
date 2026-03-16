# How to Publish a Flutter App to Google Play Store (2024)

This guide summarizes the up-to-date, official process to publish a Flutter app to the Google Play Store, specifically for Android.

## 1. Prepare Your App

- **Test thoroughly** on Android devices and emulators to ensure stability and performance.
- **Set a unique package name** in `android/app/build.gradle` (`applicationId`).
- **Update version info**: `versionCode` and `versionName` in `android/app/build.gradle`.
- **Update metadata and permissions** in `AndroidManifest.xml`.
- **Create an app icon** (512 × 512 px) and ensure all required assets are present.

## 2. App Signing

- Generate a keystore file, if you don't have one:
  ```
  keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-key-alias
  ```
- Update `android/app/build.gradle` with your keystore and signing configuration.
- Reference keystore credentials securely (never upload your keystore/private info to public repositories).

## 3. Build the App Bundle (AAB)

- From your project directory, use:
  ```
  flutter build appbundle --release
  ```
- This generates an `.aab` file in the `build/app/outputs/bundle/release/` directory.

## 4. Google Play Developer Account

- Register for a developer account at the [Google Play Console](https://play.google.com/console/about/) (one-time fee).
- Set up your account details and payment profile.

## 5. Prepare and Complete Store Listing

- **App title, short and full description**
- **Screenshots** (minimum 2, from actual device/emulator)
- **Feature Graphic** (1024 x 500 px)
- **Content rating** questionnaire
- **Privacy policy** if required by your app category
- **Pricing & distribution** settings

## 6. Upload the App to Play Console

- Create a new application in the Play Console.
- Upload your generated `.aab` file.
- Complete all listing sections, content rating, and policies.

## 7. Select Testing Tracks (Optional but Recommended)

- Use **Internal**, **Closed**, or **Open testing** tracks for staged rollout and testing before production.
  - Assign testers, upload builds, and collect feedback.

## 8. Submit for Review & Rollout

- Once all requirements are met, submit your app for review.
- Google Play will review your submission for compliance—typically takes a few hours to a week.
- After approval, your app is published and live!

## 9. Maintenance and Updates

- Update `versionCode` and `versionName` for each new release.
- Upload new AABs for updates, using the release or testing tracks as appropriate.

---

### API Level Requirements (as of 2024)
- **New apps**: Must target **Android 15 (API level 35)** starting August 31, 2025.
- **Existing apps**: Must target **Android 14 (API level 34)** or higher to remain available on newer devices.

**References:**
- [Flutter Official Android Deployment Guide](https://docs.flutter.dev/deployment/android)
- [Google Play Console Help](https://support.google.com/googleplay/android-developer/answer/11926878?hl=en)
- [Android Platform API Requirements](https://developer.android.com/google/play/requirements/target-sdk)


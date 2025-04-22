# Quick License Mobile Verifier

🚗🔍 A Flutter-based mobile application to verify driving licenses instantly via QR code scanning and digital signature validation.

## 📱 Features

- Scan QR codes from physical or digital licenses
- Validate license authenticity using ECDSA (P-256) digital signature
- Green signal for verified, Red for invalid
- Simple UI with instant animation feedback

## 🔐 Tech Stack

- **Flutter** (cross-platform UI)
- **Dart**
- **QR Code Scanner**
- **Elliptic Curve Cryptography (P-256 / ECDSA)**

## 🚀 Getting Started

```bash
git clone https://github.com/ashish769/quick-license-mobile-verifier.git
cd quick-license-mobile-verifier
flutter pub get
flutter run

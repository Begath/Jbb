#!/data/data/com.termux/files/usr/bin/bash
echo "[JBot] Setup starting..."
echo "Installing dependencies..."
pkg install -y flutter unzip
echo "Building project..."
flutter pub get
flutter build apk --release
echo "Build complete. APK located at:"
echo "build/app/outputs/flutter-apk/app-release.apk"
termux-open build/app/outputs/flutter-apk/app-release.apk

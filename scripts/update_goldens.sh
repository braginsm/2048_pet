defaults write NSGlobalDomain AppleFontSmoothing -integer 0
flutter test --update-goldens --tags=golden $1
defaults delete NSGlobalDomain AppleFontSmoothing
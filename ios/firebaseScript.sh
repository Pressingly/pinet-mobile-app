if [ "$CONFIGURATION" == "Debug-Dev" ] || [ "$CONFIGURATION" == "Release-Dev" ]; then
  cp Runner/Dev/GoogleService-Info.plist Runner/GoogleService-Info.plist
elif [ "$CONFIGURATION" == "Debug-Prod" ] || [ "$CONFIGURATION" == "Release-Prod" ]; then
  cp Runner/Prod/GoogleService-Info.plist Runner/GoogleService-Info.plist
fi


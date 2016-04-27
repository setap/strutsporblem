# Clean repository, DerivedData folder and simulator
git reset --hard
git clean -fd
rm -rf ~/Library/Developer/Xcode/DerivedData/StrutsProblem*
xcrun simctl erase all
# Unit test
xctool
-scheme StrutsProblem
-workspace StrutsProblem.xcworkspace
-destination "platform=iOS Simulator,name=iPhone 6,OS=9.3"
-sdk iphonesimulator
-reporter junit:test-results/TEST-UnitTests.xml
-reporter pretty
clean test
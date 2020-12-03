set -eo pipefail

xcodebuild	clean test\
			-workspace "Hello World.xcworkspace"\
			-scheme dev\
			-destination 'platform=iOS Simulator,name=iPhone 12 Pro'\
			-derivedDataPath build/derived-data\
			-enableCodeCoverage YES | xcpretty --report html
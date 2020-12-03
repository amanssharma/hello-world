set -eo pipefail

xcodebuild	clean test\
			-workspace "Hello World.xcworkspace"\
			-scheme qa\
			-destination 'platform=iOS Simulator,name=iPhone 12 Pro'\
			-derivedDataPath build/derived-data\
			-enableCodeCoverage YES | xcpretty --report html
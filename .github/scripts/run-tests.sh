set -eo pipefail
xcodebuild	clean test\
			-workspace "Hello World.xcworkspace"\
			-scheme $1\
			-destination 'platform=iOS Simulator,name=iPhone 12 Pro'\
			-derivedDataPath build/derived-data\
			-enableCodeCoverage YES | xcpretty
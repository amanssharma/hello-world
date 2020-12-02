set -eo pipefail
gem install slather
slather coverage --html --output-directory build/reports/coverage-reports --scheme dev --binary-basename "Hello World" --build-directory "build" --workspace "Hello World.xcworkspace" Hello\ World.xcodeproj
#! /bin/bash
set -e
function echoX {
echo -e "✅ PREBID TESTLOG: $@"
}

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $BASEDIR/PrebidMobile

echoX "clean previous build"
./gradlew clean

echoX "start unit tests"
./gradlew API1.0:testDebugUnitTest
#!/bin/bash
set -x
testrunUuid=$(orangebeard-cli -x start)
pabot --listener orangebeard_robotframework.listener  --variable orangebeard_testrun:"$testrunUuid" --console verbose .
orangebeard-cli -x finish -id $testrunUuid

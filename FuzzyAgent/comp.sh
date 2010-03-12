#!/bin/sh
protoc --proto_path=. --objc_out=Classes FuzzyAgent.proto 
protoc --proto_path=. --python_out=../Mutator FuzzyAgent.proto 

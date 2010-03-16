#!/bin/sh
# compress application.
/bin/mkdir $CONFIGURATION_BUILD_DIR/Payload
/bin/cp -R $CONFIGURATION_BUILD_DIR/FuzzyAgent.app $CONFIGURATION_BUILD_DIR/Payload
/bin/cp Images/Icon.png $CONFIGURATION_BUILD_DIR/iTunesArtwork
cd $CONFIGURATION_BUILD_DIR
# zip up the FuzzyAgent directory
/usr/bin/zip -r FuzzyAgent.ipa Payload iTunesArtwork

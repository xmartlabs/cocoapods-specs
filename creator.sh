#!/usr/bin/env bash
uuid=$(uuidgen)
tmpfolder="/tmp/$uuid"
mkdir $tmpfolder
git clone git@github.com:xmartlabs/SwiftyMatter.git $tmpfolder
rm "$tmpfolder/ProjectTemplate/Project-iOS/XLProjectName/Podfile.lock"
script="$tmpfolder/ProjectTemplate/shell.swift"
swift -target x86_64-apple-macosx10.11 $script
rm -rf $tmpfolder

#!/usr/bin/env zsh

# TCR-Xcode by Jon Reid, https://qualitycoding.org
# Copyright 2023 Jonathan M. Reid. https://github.com/jonreid/TCR-Xcode/blob/main/LICENSE.txt
# SPDX-License-Identifier: MIT

read -r -d '' applescript <<'EndOfScript'
   set commitMessage to text returned of (display dialog "Commit message:" default answer "" buttons {"Commit"} default button "Commit")
   return commitMessage
EndOfScript

commitMessage=$(osascript -e "$applescript")
if [[ -z $commitMessage ]]; then
   exit 1
fi

git commit -am "$commitMessage"

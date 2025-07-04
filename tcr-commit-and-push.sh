#!/usr/bin/env zsh

# TCR-Xcode by Jon Reid, https://qualitycoding.org
# Copyright 2023 Jonathan M. Reid. https://github.com/jonreid/TCR-Xcode/blob/main/LICENSE.txt
# SPDX-License-Identifier: MIT

statusResult=$(git status -u --porcelain)
if [[ -z $statusResult ]]; then
  exit 0
fi

read -r -d '' applescript <<'EndOfScript'
  set instructions to "(Leave empty to cancel)"
  set commitMessage to text returned of (display dialog instructions default answer "" with title "Commit message:" buttons {"Commit"} default button "Commit")
  return commitMessage
EndOfScript

commitMessage=$(osascript -e "$applescript")
if [[ -z $commitMessage ]]; then
  exit 1
fi

git add . && git commit -m "$commitMessage" && git push

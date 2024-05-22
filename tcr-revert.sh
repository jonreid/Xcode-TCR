#!/usr/bin/env zsh

# TCR-Xcode by Jon Reid, https://qualitycoding.org
# Copyright 2023 Jonathan M. Reid. https://github.com/jonreid/TCR-Xcode/blob/main/LICENSE.txt
# SPDX-License-Identifier: MIT

git checkout . && git clean -fd

read -r -d '' applescript <<'EndOfScript'
  display dialog "Reverted!" with icon 0 buttons {"OK"} default button "OK"
EndOfScript

osascript -e "$applescript"

# TCR for Xcode

TCR stands for "test && commit || revert," a challenging and fun development workflow. It goes like this:
- Make some changes.
- Run tests.
- If the tests pass, it commits your changes.
- If the tests fail, it reverts your changes.

**Note:** This works for Xcode projects and workspaces. It currently doesn't work for Swift packages.

## Contents

- [How to Set It Up](#how-to-set-it-up)
- [What It Does](#what-it-does)
- [Temporary Bypass](#temporary-bypass)
- [References](#references)

## How to Set It Up

Clone this repo. Then in Xcode, open Settings and go to the Behaviors tab.

Under "Testing Succeeds" scroll down until you see a "Run" option. Select the `tcr-commit.sh` script.

![Set behavior for Test Succeeds to tcr-commit.sh](images/succeeds.png)

Under "Testing Fails" set the "Run" to the `tcr-revert.sh` script.

![Set behavior for Test Fails to tcr-revert.sh](images/fails.png)

## What It Does

Upon a successful test run, the commit script shows a dialog asking you for a commit message. Enter your commit message and press enter, and it will commit your changes.

Upon a test failure, the revert script will revert your changes. It deletes any new files. (Any files ignored by your repo will remain.) And it shows you a dialog to letting you know it did its business.

## Temporary Bypass

To bypass TCR, deselect the Run script in the Testing Fails behaviors. This will keep any changes in place.

You can keep the Run script in place for Testing Succeeds. If you leave the commit message blank, it won't make a commit.

## References

- [test && commit || revert](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) original article by Kent Beck

## Author

Jon Reid is the author of _[iOS Unit Testing by Example](https://iosunittestingbyexample.com)._ His website is [Quality Coding](https://qualitycoding.org).

[![Mastodon Follow](https://img.shields.io/mastodon/follow/109765011064804734?domain=https%3A%2F%2Fiosdev.space
)](https://iosdev.space/@qcoding)

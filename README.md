# TCR for Xcode

TCR stands for "test && commit || revert," a challenging and fun development workflow. It goes like this:
- Make some changes.
- Run tests.
- If the tests pass, it commits your changes.
- If the tests fail, it reverts your changes.

See the original [test && commit || revert](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) article by Kent Beck.

## How to Set It Up

Clone this repo. Then in Xcode, open Settings and go to the Behaviors tab.

Under "Testing Succeeds" scroll down until you see a "Run" option. Select the `tcr-commit.sh` script.

![Set behavior for Test Succeeds to tcr-commit.sh](images/succeeds.png)

Under "Testing Fails" set the "Run" to the `tcr-revert.sh` script.

![Set behavior for Test Fails to tcr-revert.sh](images/fails.png)

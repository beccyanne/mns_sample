## Environment Setup

To get all the required GEMs, from the project root directory execute:
    
     $ bundle install

## Test execution

To run the tests execute:

	$ cucumber -r lib -r features

To run the tests and produce HTML report, execute:

	$ cucumber -r lib -r features -f pretty -f html -o <path>/name-of-test-report.html

BROWSER can be one of these values [firefox, chrome, safari]

Running without any value for BROWSER will result in test running on chrome browser by default
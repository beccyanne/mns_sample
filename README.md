## Environment Setup

Pre-requisite: Ruby version 2+ installed

To install all the required GEMs, from the project root directory execute:
    
     $ bundle install

## Test execution

To run the tests execute:

	$ cucumber

## Browser selection

You can choose the browser you wish to run by providing it's name to `BROWSER` env variable:

	`BROWSER=firefox cucmber`

The tests will run in chrome by default. Please note that you will need the browser driver installed and present in environment PATH.
jSpringBot Sample Office
=======

### Introduction

This project demonstrate how to use the `jspringbot-office` library. 

This sample project shows:

- Word Creation
    - Capture image from web page
    - insert captured image
    - insert text
    - insert hyper link
    - and save to a file

- Word Templates
    - How you can capture web page sections as image.
    - Replace it in a template word document.
    - And save as a new file

### Quick Start

Please follow the instructions to execute the test. 
Initial run will fetch all dependencies.

- Install `Maven 3` and `JDK 6` or up.
- Ensure to have the latest `Firefox` and `Chrome` browsers.
- Execute the following command to run test.
```
mvn clean integration-test
``` 
- From the console you'll be able to see the run overview. 
- Check out the saved word documents.
```
$/target/robotframework-reports/result.doc
$/target/robotframework-reports/created.doc
```
- To view the details, take a look at the generated `Report` and `Logs` from the browser.
```
Log:     $/target/robotframework-reports/log.html
Report:  $/target/robotframework-reports/report.html
```

### Copyright and license

Copyright 2015 jSpringBot

Code licensed under [Apache License v2.0](http://www.apache.org/licenses/LICENSE-2.0).

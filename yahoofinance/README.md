# Yahoo Finance-automation

## First Time Setup
### Software used
[Python 3.11](https://docs.python.org/2/)  
[Robot framework](https://robotframework.org/)

### Install Dependencies
Determine if Python is installed: In a terminal, run the following command
```
$ python --version
```

####Clone Repository  
```
$ cd <your_projects_root>
$ git clone https://github.com/viswa2705/yahoo-finance.git
$ cd yahoo-finance-automation
```
####Install requirements
```
$ pip install -r requirements.txt
```

####Install chrome and chromedriver  
* Windows
**Download ChromeDriver:**

   - Make sure to download the version that matches your Chrome browser version.
   - Add the ChromeDriver to your Python installed PATH.


## Running Tests
Run all tests locally
```
robot --test "YAHOO-CREATE-ACCOUNT: Create Yahoo Account"  tests\Test_Web_Yahoo_Finance.robot
```
 
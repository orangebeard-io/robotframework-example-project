# Sample tests to demo Listener

### Prerequisites:
- Python 3 installed
- Working from a Virtual environment (venv) is recommended
  
For RobotFramework's install guide, see: https://docs.robotframework.org/docs/getting_started/testing


### Dependency installation:
Inside your venv:
```
pip install -r requirements.txt
rfbrowser init   
```  

### Listener configuration:

- Get your listener token from: https://app.orangebeard.io/u/account/listener-token  
- Create orangebeard.json in project root:

```json
{
	"endpoint": "https://app.orangebeard.io/[ORGANIZATION]",
	"token": "[LISTENER TOKEN]"
    "project": "example-project",
	"testset": "RobotFramework demo",
	"description": "A run from Robot Framework",
	"attributes": [
		{
			"key": "Tool",
			"value": "RobotFramework"
		}
	]
}
```

__It's good practice__ to omit the token from the json file and get it from your env:

Windows cmd: 
```
set orangebeard_token=[LISTENER TOKEN]
```
Linux/Mac: 
```
export orangebeard_token=[LISTENER TOKEN]
```

### Running tests:
```
robot --listener orangebeard_robotframework.listener ./tests
```



# Sample tests to demo Listener
### Dependency installation:

```
pip install -r requirements.txt
rfbrowser init   
```

Create orangebeard.json in project root:
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

It's good practice to omit the token from the json file and get it from env:
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



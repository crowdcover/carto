carto
=====

Repository for Moabi REDD styles.

### Setting up
1. ```pip install -r requirements.txt```

### Creating a project
1. Create the TileMill project. For the name, stick to lowercase.
2. Commit and push that to Github.
3. When you are ready to deploy that project on the server run -
```
fab -H username@host create:<project-name>
```

### Updating a project
1. Make changes and push to Github.
2. And run - 
```
fab -H username@host update:<project-name>
```


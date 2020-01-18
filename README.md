# Create dev yeoman container

```
docker build . -t devyo
```

# Run dev yeoman container - and create a generator

```
docker run -v /Users/drew/code/yo/:/devyo -it devyo sh
```

## Creating your own generator

```
/devyo $ yo generator
```

## Working with an existing generator

Make locally accessable:
```
/devyo $ cd generator-devyo
/devyo $ npm link
```

Create new project from a generator:
```
/devyo $ mkdir new-folder && cd new-folder
/devyo $ go generator-devyo
```

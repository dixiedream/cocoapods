# SmanApp - cocoapod container #

This is a container for using cocoapods without the need to install it

### How do I get set up? ###
* Set up
```
docker build -t smanapp/cocoapods:1.0 .
```

* How to use
Cd into the project directory
```
docker run --rm -v `pwd`:/project -w /project smanapp/cocoapods:latest ${POD_COMMAND}
```

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin
alessandro.lucarini@smanapp.com
* Other community or team contact
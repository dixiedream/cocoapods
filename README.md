# SmanApp - cocoapod container #

This is a container for using cocoapods without the need to install it

### How do I get set up? ###
* Set up
```
./build-image.sh
```

* How to use
```
#cd project root
docker run --rm 
    -v $(PWD):/project 
    -v podSpecs:/home/cocoapods 
    smanapp/cocoapods:1.0 
    ${POD_COMMAND}
```

### Contacts ###
* Repo owner and admin: alessandro.lucarini@smanapp.com
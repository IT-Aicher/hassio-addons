# IT-Aicher Hass.IO Add-Ons: VORLAGE

> Ersteller: IT-Aicher (c) 2023<br>
> homeassistant@it-aicher.de


## About
This add-on has no functions!   
It only serves as a template for further add-ons and for an overview of various possible settings.   
<br>

## Configuration
Please have a look at the `config.yaml` file. Here are some configuration options listed and also described.   
<br>


## Overview of the file structure
	.
	├── CHANGELOG.md
	├── DOCS.md
	├── Dockerfile
	├── build.yaml
	├── config.yaml
	├── icon.png
	├── logo.png
	└── rootfs
	    └── entrypoint.sh
<br>

### File:  `CHANGELOG.md`
see: https://keepachangelog.com/en/1.0.0/
<br>

### File:  `DOCS.md`
this file ;)

for further infos about the Basic Syntax see: https://www.markdownguide.org/basic-syntax   
<br>

### File:  `Dockerfile`
This is where the base of the add-on is created.  
Install and configure packages e.g. from `apt` or `apk`.   
<br>

### File:  `build.yaml`
do not touch this - unless you know what you are doing!!   

This file defines the base image and its release version.  
Is not mandatory if in the `Dockerfile` the first lines (`BUILD FROM`) are changed to an official Docker Hub image.   
<br>

### File:  `config.yaml`
Should be self-explanatory - here you can configure your add-on and e.g. give the user the possibility to set variable settings via the HA-WebUI.   

*More info about creating version numbers follows below
<br>

### File:  `icon.png`
The icon that can be found in the overview.   
<br>

### File:  `logo.png`
Same as before, only in large on the add-on page.   
<br>

### Folder:  `rootfs`
All files under this folder will be copied to the container / add-on during installation.   
<br>

### File:  `rootfs/entrypoint.sh`
The file `entrypoint.sh` is executed when the add-on is started and starts e.g. the installed services.   
<br>

<br>


## Version numbering
	4.1.8-0465
	│ │ │  └────   Buildnummer  		en: build	(=usually indicates the progress of the development work in individual steps)
	│ │ └───────   Revisionsnummer 		en: patch	(=mostly contains bug fixes)
	│ └─────────   Nebenversionsnummer 	en: minor	(=mostly denotes the functional extension of the program)
	└───────────   Hauptversionsnummer 	en: major	(=usually indicates extremely significant change to the program)

<br>
---   
<br>


## To-Do: 

> https://github.com/home-assistant/addons/blob/master/dhcp_server/data/run.sh#L10-L13


# materialize
Material browser and organizer built in QT

# Abstract overview

This is a cross-platform QT application for organizing textures, specifically textures with different maps.  

1. Textures are grouped in folders with a special manifest YAML file
2. The application scans a directory/directories for YAML manifest files
3. The application builds a master manifest file with minimal information (Title, category, tags, location of original YAML file)
4. When trying to be accessed, the original YAML will be loaded, and from there the application will load images and other information.

This might seem a little redundant, and it is.  This is the best solution I can come up with at the moment.  
There is a restriction, however.  If everything is centralized in one file, all the info about particular materials
cannot be distributed with textures.

# Licensing

It's GPL, sorry!  The limitations of QT force this to be released under a restrictive license :(

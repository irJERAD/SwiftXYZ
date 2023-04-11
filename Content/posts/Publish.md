---
date: 2023-04-10 14:54
description: A collection of tips for using Publish to create Swift powered websites
tags: swift, publish, sundell, websites, tips
isDraft: false
---

# Publish 

Publish is a static-site generating tool powered by Swift. It was created by John Sundell. This allows me to create an manage a static-site - in this case my blog and iOS portfolio - using Swift.  

The following are some tips, how-to's, and pointers kept at arms reach for reference while building this site.

# Tips for Using Publish

## Images  

### Local Storage  

Images - and other source files I want to ship to be built with the site - are to be stored in the `/Resources` directory. For this purpose I have created a `Resources/images/..` directory to store all images to be loaded by the site. 

### Accessing  

References to image locations with start with at the `/image` directory.   

**Example**  

For example:  
- To display an image on any markdown page use the following familiar structure:  
`(image text)[/images/image_name.png]`    

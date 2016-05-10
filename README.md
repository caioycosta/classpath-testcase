# classpath-testcase
Small code to reproduce an issue I am having.

It has since been solved. What happened was the "-jar" switch on java invocation will ignore all classpath settings 
and use only the ones from the manifest in the .jar file.

Oracle, you could at least give a warning so that we knew the -cp switch was being ignored instead of silently failing.

To compile and run, simply run "make" from the project folder.

Needed packages: 
* java JDK (I've tested only with Java 7 though)
* GNU make


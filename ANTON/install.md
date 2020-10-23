# COSE DI ANTON
## ANTON
###### ANTON0antonblippi
######ssaassassasssasa65433323211aaaaaaaaaAAADXXCDFDFDFDFDDDDDFRTTTTR5 RRRTTRGGGGGGGGGGGGGGGGGGGGGGGGGGZZZZZZZZZZZZZZZZZZZUUUUUUUUUUUUUUUUIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIPPPPIUPPPPIIIIIIIIIIIIHHHHGGGDFDDDSSSSSSSSSSSVZÖUNTVIOÜNRTHHHFFFFFFFFZZZZZZZGJZHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHZZZUGUFGFFGF6
 sawwsawwsawwwsawwws
### View the Java alternatives.
     
    update-alternatives --config java
    
### check the Java version.
    
    java -version
    
### Specify the path to use when running Java.

    update-alternatives --set java /usr/lib/jvm/zulu8/bin/java

### install
    sudo apt update
    sudo apt install openjdk-14-jre-headless
    
### java_home
    sudo gedit /etc/environment
    [Add the copied path to this file at the end, as follows.]
    JAVA_HOME=”/usr/lib/jvm/java-14-openjdk-amd64”
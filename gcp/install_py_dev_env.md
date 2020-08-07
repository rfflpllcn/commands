# Python dev env on gcp

#### see https://github.com/GoogleCloudPlatform
#### create project and vm, install python
1. create project
2. create vm instance, select region (europe-west6) and zone
3. launch SSH session
    4. sudo apt-get update
    5. sudo apt-get install git
    6. sudo apt-get install python3-setuptools python3-dev build-essential  
       *On Linux, make sure you have the right version of Python pre-installed, 
       and the basic developer toolset available. 
       On Debian-like systems, the following makes sure of that*
    7. install pip:  
        curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py  
        sudo python3 get-pip.py
    8. verify installation:  
        python --version  
        pip3 --version  
        
#### Configure the VM to run application software

1. git clone https://github.com/GoogleCloudPlatform/training-data-analyst
2. ln -s ~/training-data-analyst/courses/developingapps/v1.2/python/devenv ~/devenv
3. cd ~/devenv/
4. sudo pip3 install -r requirements.txt
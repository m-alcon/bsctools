# BSC Tools
## Container management
To download and build the container:
```console
$ ./scripts/build.sh
```
When the container is stopped and you want to start it:
```console
$ ./scripts/start.sh
```
When the container is running and you are not in its command line:
```console
$ ./scripts/enter.sh
```
To stop the container:
```console
$ ./scripts/stop.sh
```

## Usage
The `workspace` folder is the one linked with the host machine. Only changes inside the folder will be saved (without modifying the Docker image). We recommend to work within this directory. 

Once you have your application compiled, launch your program with the script `extrae.sh` located in the `workspace` folder. 
To stop the container:
```console
$ ./extrae.sh your_program
```
The *extrae* traces will be saved inside the `traces` folder. To visualize this traces, the container also includes the *paraver* tool. 
```console
$ paraver
```
## Possible errors
### Paraver
> `Error: Unable to initialize gtk, is DISPLAY set properly?`<br>
> Execute the command `xhost +` in the host machine.

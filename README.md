# BSC Tools
We provide two Docker images for architectures *x86-64* and *arm64v8* that have installed the BSC tools **extrae**. Only *x86-64* includes **paraver**, and only *arm64v8* has installed *CUDA*.
## Container management
To download and build the container for *x86-64*:
```console
$ ./scripts/build_x86.sh
```
To download and build the container for *arm64v8*:
```console
$ ./scripts/build_arm.sh
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
The **extrae** traces will be saved inside the `traces` folder. To visualize this traces, the container for *x86-64* also includes the **paraver** tool. 
```console
$ paraver
```
## Possible errors
> When executing **paraver**, `Error: Unable to initialize gtk, is DISPLAY set properly?`<br>
> * Execute the command `xhost +` in the host machine.

> The container does not have internet connection.<br>
> * Remove the wrong-created container:
> ```console
> $ docker rm bsc_tools
> ```
> * Modify the `scripts/build.sh` file, uncommenting `--dns DNS_of_the_host_machine` and adding the DNS of the host machine:
> ```bash
>     --name bsc_tools                    \
>	  --dns DNS_of_the_host_machine		  \
>     -e DISPLAY=$DISPLAY                 \
> ```
> * Rebuild the container.

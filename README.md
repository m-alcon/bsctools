# BSC Tools
## Usage
The `workspace` folder is the one linked with the host machine. Only changes inside the folder will be saved (without modifying the Docker image). We recommend to work on this directory. 

Once you have your application compiled, launch your program with the script `./extrae.sh your_program`. The *extrae* traces will be saved inside the `traces` folder. To visualize this traces, the image also includes the *paraver* tool, start the program with `paraver`.

## Possible errors
### Paraver
`Error: Unable to initialize gtk, is DISPLAY set properly?`. Solution: execute the command `xhost +` in the host machine.

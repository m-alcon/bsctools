# BSC Tools
## Usage
The `workspace` folder is the one linked with the host machine. Only changes inside the folder will be saved (without modifying the Docker image). We recommend to work within this directory. 

Once you have your application compiled, launch your program with the script `./extrae.sh your_program`. The *extrae* traces will be saved inside the `traces` folder. To visualize this traces, the container also includes the *paraver* tool. Start the program with `paraver`.

## Possible errors
### Paraver
> `Error: Unable to initialize gtk, is DISPLAY set properly?`<br>
> Execute the command `xhost +` in the host machine.

ls -a # transform the simple list into a detailed table:
ls --all # transform the simple list into a detailed table:
ls -l # List the contents of a directory in long format
ls -h # It is used to make file sizes easy for a human to read.
ls -l -a -h # It is the "complete package" for inspecting a directory.
ls -lah # It is the "complete package" for inspecting a directory.
mkdir -- -rf # It creates a directory literally named -rf
rmdir -- -rf # It removes the directory literally named -rf.
-- depth # Create a shallow clone with a history truncated to the specified number of commits. Implies
        # --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches.
          # If you want to clone submodules shallowly, also pass --shallow-submodules.
# We use /(the comand you want to search) to see what it means
# n to go down
# N to go up
chmod +x script.sh # todos pueden ejecutarlo
chmod u+x script.sh # solo el dueño puede ejecitralo
chmod o-r secreto.txt # quita la lectura de "others"
chmod u+rw.go-rwx privado # dueño lee/escribe y nadie mas puede hacerlo
sudo echo "hola" > /etc/archivo_protegido # It doesn´t work correctly because sudo doesn´t apply to redirection (>)
sudo echo "hola" | sudo tee /etc/archivo_protegido > /dev/null # write to a protected file using sudo correctly
sudo echo "hola" | sudo tee /etc/archivo_protegido # write "hola" on a protected achive using admin permission

# Clase 23/4/2026
sudo sh -c 'echo "chao" >> /etc/archivo_protegido' # Add the word "chao" to the end of a protected system file using administrator privileges
cat /etc/archivo_protegido # Display the contents of the protected file directly on your screen.
sudo -i # Abre una sesión interactiva como superusuario (root), convirtiendo tu terminal en una consola de administrador total.
exit # Close the current terminal session or exit administrator mode to return to your normal user account.
sudo su- # It makes you a superuser (root) by starting a clean session with the full administrator environment.
sudo su # It makes you a superuser (root) but keeps, by default, the environment variables of your normal user.
echo "$HOME" # expand the variable
echo '$HOME' # print literal "$HOME"

echo '#!/bin/sh' > hola.sh # Create a new file called hola.sh and write the "shebang" on its first line, which tells the system to run it as a shell script.
echo 'echo "Hola desde mi primer script"' >> hola.sh # Add an instruction to the hola.sh file so that, when executed, it prints the message "Hello from my first script" in the terminal.
cat hola.sh # Display on the screen the code you just wrote inside the hola.sh file.
./hola.sh # Try running the script hola.sh as a standalone program in your current folder.
ls -l hola.sh # It displays detailed information about the hola.sh file, allowing you to see who owns it and what read, write, or execute permissions it has.
chmod +x hola.sh # Convert the hola.sh file into an executable program, giving the system permission to run the code it contains.
ls -l hola.sh # It displays detailed information about the hola.sh file, allowing you to see who owns it and what read, write, or execute permissions it has.
./hola.sh # Run the script and display the final result: the message "Hello from my first script" printed on your terminal.
touch prueba.txt # Create an empty file called test.txt or, if it already exists, update its last modified date without changing the content.
chmod 600 prueba.txt # Change the file permissions so that only you can read and edit it, prohibiting any access to other users.
ls -l prueba.txt # Display the details of the test.txt file to confirm that the permissions were applied correctly and only you now have access.
chmod 755 prueba.txt # Cambia los permisos para que tú tengas control total sobre el archivo, mientras que el resto de los usuarios solo puedan leerlo y ejecutarlo.
ls -l prueba.txt # Relist the file details to confirm that it now has public read and execute permissions.
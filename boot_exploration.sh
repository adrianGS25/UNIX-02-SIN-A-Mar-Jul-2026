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
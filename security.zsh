# 1. Update package list and install ACL tools
apt update && apt install acl -y # Updates package index and installs Access Control List utility

# 2. Set default permissions for new files
umask 027 # Sets the default file creation mask to restrict permissions for 'others'

# 3. Fix ownership and clean extended permissions (ACLs)
chown -R $(whoami) . # Recursively changes the owner of the current directory to the current user
setfacl -bnR . # Recursively removes all extended ACL entries in the current directory

# 4. Verify results
umask # Displays the current active umask value
ls -l # Lists files in long format to verify ownership and permissions
.
*   **Resetea permisos**: `setfacl -bnR .` elimina cualquier regla de permisos extraña que pudiera estar bloqueando tus archivos.
touch archivo # create an archive
whoami # shows the name of the user of the actual  session
echo "Hola" > archivo # create a new file
ls -l archivo # Give us the permissions
useradd -m -s /usr/bin/zsh luna # create a new user
chown luna archivo # Changes the owner of the file named "archivo" to the user "luna".
groups # Displays the list of groups the current user belongs to
groupadd grupo_test # Creates a new group named "grupo_test"
groups # Displays groups again to verify the creation of the new group
touch comun # Creates an empty file named "comun"
ls -l comun # Shows the current permissions and ownership of the file "comun"
usermod -a -G grupo_test luna # Adds user "luna" to "grupo_test" without removing other groups
chgrp grupo_test comun # Changes the group ownership of the file "comun" to "grupo_test"
ls -l comun # Verifies that the group for "comun" has been updated to "grupo_test"
chown luna:grupo_test archivo # Changes both the owner to "luna" and the group to "grupo_test" for the file "archivo"
ls -l archivo # Displays the detailed permissions and ownership to verify the changes
mkdir -p proyecto/sub # Creates the directory 'proyecto' and its subdirectory 'sub' at once
touch proyecto/readme proyecto/sub/datos # Creates 'readme' in the main folder and 'datos' in the subfolder
chown -R luna:grupo_test proyecto # Recursively changes owner to 'luna' and group to 'grupo_test' for the entire tree
ls -lR proyecto # Recursively lists all files and folders showing their new owner and group

# clase 14-5-2026
cat /etc/passwd | head -10 # see all the users system
id # user id numeric, principal group (primary group), secundary groups
id -u # User ID
id -g # Group principal ID
id -G # All the gropus
cat /etc/passwd | grep root       # Grep filter the next word we give it
groupadd desarrolladores          # Create a simple group 
groupadd -g 2000 operaciones      # Create a simple group
groupadd --system servicios_web   # System group 
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs # See the range of GIDs on the system

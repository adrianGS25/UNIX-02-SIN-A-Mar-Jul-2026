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

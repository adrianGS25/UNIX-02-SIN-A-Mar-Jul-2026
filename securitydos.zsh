id # see the main group
id -gn # only the name of the principal group
ls -la # to see what is the main group of the user
touch ~/test_grupo_heredado.txt # creates a file and see what group inherits
ls -la ~/test_grupo_heredado.txt # main group of the user
echo "Grupo actual: $(id -gn)" # se the actual group
touch ~/antes_de_newgrp.txt # create a new file before newgrp
ls -ls ~/antes_de_newgrp.txt # create a new file before newgrp
groupadd desarrolladores # create the group desarrolladores
newgrp desarrolladores # chenge to group desarrolladores
echo "Nuevo grupo activo: $(id -gn)"
# create an archive inside the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt
# the group now is "desarrolladores"
mkdir-p ~/proyecto_dev/src # create a directory
 ls -ls ~/
# proyecto_dev/ tiene grupo'desarrolladores'
# exit of the subshell of newgrp
exit
# verify that we return to the original group
id -gn
echo "Grupo restaurado: $(id -gn)"
# create a group ehith password
sudo groupadd grupo_restringido
sudo gpasswd grupo_restringido
# the system will ask a password for the group
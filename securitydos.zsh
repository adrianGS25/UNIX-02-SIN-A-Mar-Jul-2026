id # see the main group
id -gn # only the name of the principal group
ls -la # to see what is the main group of the user
touch ~/test_grupo_heredado.txt # creates a file and see what group inherits
ls -la ~/test_grupo_heredado.txt # main group of the user
echo "Grupo actual: $(id -gn)" # se the actual group
touch ~/antes_de_newgrp.txt # create a new file before newgrp
ls -ls ~/antes_de_newgrp.txt # create a new file before newgrp

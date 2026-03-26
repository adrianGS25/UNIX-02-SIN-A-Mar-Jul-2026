uname -a # Da info del ordenador
which gpg # ubicacion del binario del ordenador
gpg --version # me da la version e informacion adicional
gpg --full-generate-key # con esto genero la llave publica y privada
# 7EC2C36E917D6D0B
 gpg --armor --export-secret-keys 7EC2C36E917D6D0B # Exporta clave privada del ID
 gpg --armor --export adriangarciasnchez@gmail.com  > mi_llave_publica.asc # Exporta mi llave publica
 gpg --import micompa.asc  llave-publica.asc # Importa la llave de mi compa
 echo "que te importa">doc_no_cifrado.txt # Se crea un archivo con el mensaje
 gpg --output doc_cifrado.txt --encrypt --recipient davidsvaca07@gmail.com doc_no_cifrado.txt # Cifra el archivo para que la persona que tiene la llave pueda leerlo
 gpg --decrypt doc_cifrado1.txt # descifra una archivo
 gpg --clearsign doc_cifrado1.txt # Este comando creo un archivo txt.asc

    1  git branch
    2  ls
    3  ls evaluation/
    4  ls evaluation/kepler/
    5  mv evaluation/kepler/docs evaluation/kepler/registros
    6  mkdir evaluation/kepler/plantillas
    7  git add .
    8  git commit -m "Fix problema 1: estructura de directorios corregida"
    9  mv evaluation/kepler/sensores.log evaluation/kepler/registros/sensores.log
   10  mv evaluation/kepler/ajustes.old evaluation/kepler/ajustes.conf
   11  ls evaluation/kepler/
   12  ls evaluation/kepler/registros/
   13  git add .
   14  git commit -m "Fix problema 2: archivos movidos y renombrados"
   15  git push origin eval_p2_1_g2
   16  ls
   17  history
   18  cd registros/
   19  cd evaluation/kepler/
   20  chmod 600 registros/sensores.log
   21  ls -l registros/sensores.log
   22  git add .
   23  git commit -m "Fix problema 3: permisos numericos en sensores.log"
   24  git add registros/sensores.log
   25  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   26  git add .
   27  git commit -m "Fix problema 3: permisos simbolicos corregidos"
   28  ls -l runner.sh ajustes.conf
   29  git config core.filemode true
   30  git add .
   31  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   32  echo "# permiso 600" >> registros/sensores.log
   33  git add registros/sensores.log
   34  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   35  git push origin eval_p2_1_g2
   36  chmod u+x runner.sh
   37  chmod o-w ajustes.conf
   38  echo "# fix 4" >> runner.sh
   39  echo "# fix 4" >> ajustes.conf
   40  ls -l runner.sh ajustes.conf
   41  chmod u+x runner.sh
   42  chmod o-w ajustes.conf
   43  echo "# fix 4" >> runner.sh
   44  echo "# fix 4" >> ajustes.conf
   45  ls -l runner.sh ajustes.conf
   46  echo "# sync" >> runner.sh
   47  echo "# sync" >> ajustes.conf
   48  echo "# sync" >> registros/sensores.log
   49  git add .
   50  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   51  git push origin eval_p2_1_g2
   52  chmod u+s runner.sh
   53  ls -l runner.sh
   54  echo "# suid activo" >> runner.sh
   55  git add runner.sh
   56  git commit -m "Fix problema 5: SUID activado en runner.sh"
   57  git push origin eval_p2_1_g2
   58  chmod +t /tmp/kepler_zone
   59  sudo mkdir -p /tmp/kepler_zone
   60  sudo chmod 777 /tmp/kepler_zone
   61  sudo chmod +t /tmp/kepler_zone
   62  ls -ld /tmp/kepler_zone
   63  git commit --allow-empty -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
   64  git push origin eval_p2_1_g2
   65  gpg --batch --generate-key <<EOF
Key-Type: RSA
Key-Length: 2048
Name-Real: vega
Name-Email: vega@kepler.lab
Expire-Date: 0
%no-protection
%commit
EOF

   66  gpg --encrypt --recipient vega@kepler.lab registros/sensores.log
   67  ls registros/sensores.log.gpg
   68  git add registros/sensores.log.gpg
   69  git commit -m "Fix problema 7: llave GPG generada y sensores.log cifrado"
   70  git push origin eval_p2_1_g2
   71  gpg --clearsign --local-user vega@kepler.lab ajustes.conf
   72  ls ajustes.conf.asc.
   73  ls ajustes.conf.asc
   74  gpg --detach-sign --local-user vega@kepler.lab --output runner.sh.sig runner.sh
   75  gpg --verify runner.sh.sig runner.sh
   76  git add ajustes.conf.asc runner.sh.sig
   77  git commit -m "Fix problema 8: firmas GPG corregidas"
   78  git push origin eval_p2_1_g2
   79  history
   80  history > history.sh

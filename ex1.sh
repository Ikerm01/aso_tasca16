
# Introduiex el nom de la carpeta que vols comprimir per parametres si es correcte sortira el nom de la carpeta i OK ja que hem posat -v per verbose i hem fet que si es correcte imprimeixi OK, per altra banda si hi cap mena de error ho envia a /dev/null pern o mostrar res
tar -czvf $1$(date +%F).tar.gz $1 2> /dev/null && echo OK

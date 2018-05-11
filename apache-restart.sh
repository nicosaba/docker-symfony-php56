docker ps | grep $1 | cut -c -12 | xargs -L 1 -I{} sh -c 'echo Reiniciando: {};docker exec {} service apache2 restart;echo "ok";'
#docker ps | grep $1 | cut -c -12 | xargs -L 1 -I{} sh -c 'docker exec {} service apache2 stop; docker exec {} service apache2 start; echo {};'


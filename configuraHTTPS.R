# script en github::test03 con la explicación de la activación del
# credencial helper para el acceso automático a github desde windows de acuerdo
# con el Cap 10 de HappygitwithR via HTTPS (github recommended)
# 
# en windows:
# 
# Verificar cual es el credential helper del SO abriendo una sesión en la Terminal
# 
# (1)    git config --show-origin --get credential.helper
# 
# dependiendo del resultado:
# 
# ya sea file:C:/Program Files/Git/mingw64/etc/gitconfig manager, o
# file:C:/Program Files/Git/mingw64/etc/gitconfig wincred, el siguiente paso
# de configuración usará la última palabra (manager o wincred) en la definición
# del ayudante de credenciales del caso (usualmente en Windows es wincred)
# 
# (2)    git config --global credential.helper wincred
# 
# Debemos de tener un repo de prueba
# saber su ruta de acceso, p.e. d:/githubrepos/prueba01
# saber el url del repo en github, p.e. https://github.com/gdelac/prueba01
# verificar que el repo remoto esté configurado como tal:
# 
# (3)      git remote -v
# 
# la respuesta son dos líneas que confirman que fetch y push apuntan al repo
# en github:
#       origin  https://github.com/gdelac/prueba01 (fetch)
#       origin  https://github.com/gdelac/prueba01 (push)
# 
# confirmamos que el repo local es la rama 'master' bajo control de github;
# si no hay conflictos, el comando:
# 
# (4)    git branch -vv
# 
# debe arrojar una respuesta parecida a la siguiente:
# 
#  master 92c6971 [origin/master] configuracion del acceso via HTTPS
# 
# Para sembrar las credenciales debemos realizar el proceso de actualización
# del repo remoto en github, de la siguiente manera:
# 
# (5) En RStudio, crear o editar un archivo existente (puede ser el README.md o
# un script de R existente o nuevo), guardarlo y luego, como es usual,
# en la pestaña Git, señalar o habilitar la columna Staged, pulsar el
# botón Commit, acompletar la descripción de la actualización y pulsar el 
# botón Commit de nuevo, cerrar la ventana y después pulsar el botón con la
# flecha verde hacia arriba (Push) y verificar que no haya error.
# 
# Este procedimiento podría generar un diálogo para proporcionar la contraseña
# de github; debería ser la última vez que la requiera. En lo sucesivo, toda
# la actividad relacionada con el repo remoto (Github) será automática, sin
# el requerimiento de las credenciales de acceso desde el equipo en el que
# hicimos la activación del manejo de credenciales.
# 
# editando la configuración HTTPS en MVac10@work con las facilidades de RStudio.
# ... pregunto id (email) y psswrd por última vez
#
# editando de nuevo para verificar al credential helper de Win8.1 (manager)
# Hecho...!!! ya no preguntó nada. OK.
#
# Para Linux
# editando la configuración HTTPS en MVac11 (LinuxAMD-a8) desde RStudio
# .... repetimos el paso (2) con la siguiente instrucción:
#
#           git config --global credential.helper 'cache --timeout=10000000'
#
# verificamos (3) y (4)
#
#           git remote -v
# y
#           git branch -vv
#
# el paso (5) guardando estas adiciones al texto...
# ... preguntó el id y el psswrd (se supone que la última vez).
# editando de nuevo para verificar al credential helper de Linux
# 
# Hecho...!!! ya no preguntó nada. OK.
#
# Estamos el la Mac (OS X v10.11.6 El Capitan)...
# verificamos (3) y (4)
#
#           git remote -v
# y
#           git branch -vv
#
# Probamos la exitencia del manejador de credenciales con el sigiente comando:
#
#           gdelac$ git credential-osxkeychain
#
# que responde con la siguiente línea:
#
#           usage: git credential-osxkeychain <get|store|erase>
#
# entonces configuramos:
#
#           git config --global credential.helper osxkeychain
#
# el paso (5) guardando estas adiciones al texto...
# ... preguntó el id y el psswrd (se supone que la última vez).
# el paso (5) guardando estas adiciones al texto...
# ... preguntó el id y el psswrd (se supone que la última vez).
# editando de nuevo para verificar al credential helper de Mac
# 
# el paso (5) guardando estas adiciones al texto...
# ... preguntó el id y el psswrd (se supone que la última vez).
# editando de nuevo para verificar al credential helper de Linux
# 
# Hecho...!!! ya no preguntó nada. OK.
#
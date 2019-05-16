# script en github::test03 con la explicación de la activación del
# credencial helper para el acceso automático a github desde windows de acuerdo
# con el Cap 10 de HappygitwithR via HTTPS (github recommended)
# 
# en windows:
# 
# Verificar cual es el credential helper del SO abriendo una sesión en la Terminal
# 
#     git config --show-origin --get credential.helper
# 
# dependiendo del resultado:
# 
# ya sea file:C:/Program Files/Git/mingw64/etc/gitconfig manager, o
# file:C:/Program Files/Git/mingw64/etc/gitconfig wincred, el siguiente paso
# de configuración usará la última palabra (manager o wincred) en la definición
# del ayudante de credenciales del caso (usualmente en Windows es wincred)
# 
#     git config --global credential.helper wincred
# 
# Debemos de tener un repo de prueba
# saber su ruta de acceso, p.e. d:/githubrepos/prueba01
# saber el url del repo en github, p.e. https://github.com/gdelac/prueba01
# verificar que el repo remoto esté configurado como tal:
#       git remote -v
# 
# la respuesta son dos líneas que confirman que fetch y push apuntan al repo
# en github:
#       origin  https://github.com/gdelac/prueba01 (fetch)
#       origin  https://github.com/gdelac/prueba01 (push)
# 
# confirmamos que el repo local es la rama 'master' bajo control de github;
# si no hay conflictos, el comando:
# 
#     git branch -vv
# 
# debe arrojar una respuesta parecida a la siguiente:
# 
#  master 92c6971 [origin/master] configuracion del acceso via HTTPS
# 
# Para sembrar las credenciales debemos realizar el proceso de actualización
# del repo remoto en github, de la siguiente manera:
# 
# En RStudio, crear o editar un archivo existente (puede ser el README.md o
# un script de R existente o nuevo), guardarlo como es usual y luego, como es
# usual, en la pestaña Git, señalar o habilitar la columna Staged, pulsar el
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
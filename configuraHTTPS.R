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
# 
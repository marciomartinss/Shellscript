#!/usr/bin/env bash

####==========================================================================================####

#	Author: Marcio Martins
#	Maintenance: Marcio Martins

#	Version: v1.0.0
#	Description: Este programa tem por finalidade criar diretorios, grupos e usuarios alocando-os em seus respectivos grupos e diretorios. 

###===========================================================================================####

###====================================== Criar Diretorios ===================================####

echo "Criando Diretorios..."

mkdir /publico /adm /ven /sec

###======================================== Criar Grupos =====================================####

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

###======================================= Criar Usuarios ====================================####

echo "Criando Usuarios..."

useradd carlos -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd maria -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd joao -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd debora -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd sebastiana -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd roberto -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd josefina -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd amanda -ms /bin/bash -p "$(openssl passwd -crypt senha123)"
useradd rogerio -ms /bin/bash -p "$(openssl passwd -crypt senha123)"

###============================= Atribuindo Permissoes a Diretorios ==========================####

echo "Atribuindo Permissoes..."

#		Modificando o Dono e Grupo dos Diretorios	#
chown -R root:root /publico
chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

#		Atribuindo permissoes de Acesso			#
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#		Adicionar Usuarios em seus Grupos		#

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


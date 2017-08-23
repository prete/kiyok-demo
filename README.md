# Kiyok demo

## Configuracion de ambiente (01:30 hs)
- [x] VM Ubuntu
- [x] Ruby & Rails (https://github.com/rvm/ubuntu_rvm)
- [x] MySQL

 `sudo apt-get update`
 `sudo apt-get install mysql-server`
 `sudo mysql_secure_installation`
 `sudo apt-get install phpmyadmin php-mbstring php-gettext`
 `sudo phpenmod mcrypt`
 `sudo phpenmod mbstring`
 `sudo systemctl restart apache2`

## Desarrollo  (~02:00hs)
- [x] Crear repo/proyecto

 `git clone https://github.com/prete/kiyok-demo.git`
- [x] Crear una nueva Aplicacion "Kiyok"

`rails new .`
 `sudo apt-get install libmysqlclient-dev`
 `gem install mysql2`
 `Gemfile > gem 'mysql2'`
- [x] Crear CRUD paises (countries)
    - [x] Crear pais
    - [x] Borrar pais
    - [ ] Modificar pais
- [x] Crear CRUD provincias (provinces)
    - [x] Crear provincia
    - [x] Borrar provincia
    - [ ] Modificar provincia
- [ ] Popup/Dialog alta de alta de pais desde provincias.

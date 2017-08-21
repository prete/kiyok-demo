# Kiyok demo

##Configuracion de ambiente (1:30 hs)
- [x] VM Ubuntu
- [x] Ruby & Rails 
	https://github.com/rvm/ubuntu_rvm
- [x] MySQL
        sudo apt-get update
        sudo apt-get install mysql-server
        sudo mysql_secure_installation
        sudo apt-get install phpmyadmin php-mbstring php-gettext
        sudo phpenmod mcrypt
        sudo phpenmod mbstring
        sudo systemctl restart apache2

##Desarrollo
- [x] Crear repo/proyecto
        git clone https://github.com/prete/kiyok-demo.git
- [x] Crear una nueva Aplicacion "Kiyok"
        rails new .
        sudo apt-get install libmysqlclient-dev
        gem install mysql2
        Gemfile > gem 'mysql2'
- [ ] Crear CRUD paises (countries)
- [ ] Crear CRUD provincias (provinces)
- [ ] Popup/Dialog alta de alta de pais desde provincias.
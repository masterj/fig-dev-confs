#git clone git@bitbucket.org:mimazoo/buksl-api.git api

#cd api

#!/bin/bash

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

composer install

touch api/bootstrap.php.cache
cd auth
ln -s ../api/bootstrap.php.cache bootstrap.php.cache  
cd ..
ln -s ./api/bootstrap.php.cache bootstrap.php.cache  


#ln -sfn /var/www/cache/api apps/api/cache
#ln -sfn /var/www/logs/api apps/api/logs

php apps/api/console doctrine:reset --env=dev

mkdir -p apps/api/cache/ apps/api/logs  apps/auth/cache/ apps/auth/logs

sudo setfacl -R -m u:www-data:rwx -m u:`whoami`:rwx apps/api/cache apps/api/cache/logs
sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx apps/api/cache apps/api/cache/logs

sudo setfacl -R -m u:www-data:rwx -m u:`whoami`:rwx apps/auth/cache apps/auth/cache/logs
sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx apps/auth/cache apps/auth/cache/logs

#allow cross origin dodat v apache config.
#Za apache glej provision script v devboxu


#Important!   v apps/config/common_parameters.yml nujno uredi domeno!



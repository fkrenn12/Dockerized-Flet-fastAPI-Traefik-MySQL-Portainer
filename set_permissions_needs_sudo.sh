# This is from the old project but can be a template
# MUST be edited
#makeraccess_develop
find /home/makeraccess_develop/makeraccess_develop -type d -exec chmod 770 {} \;
find /home/makeraccess_develop/makeraccess_develop -type f -exec chmod 660 {} \;
chown -R makeraccess_develop:makeraccess_develop /home/makeraccess_develop

#html
# gnix and php are running at user 'nobody'
find /home/makeraccess_develop/makeraccess_develop/html -type d -exec chmod 770 {} \;
find /home/makeraccess_develop/makeraccess_develop/html -type f -exec chmod 660 {} \;
chown -R nobody:makeraccess_develop /home/makeraccess_develop/makeraccess_develop/html
chown -R nobody:makeraccess_develop /home/makeraccess_develop/makeraccess_develop/nginx-php-config

# static files
# gnix needs 'www-data'
#chown -R www-data:makeraccess_develop /home/makeraccess_develop/makeraccess_develop/djangoVersuchsProject/staticfiles
#find /home/makeraccess_develop/makeraccess_develop/djangoVersuchsProject/staticfiles -type d -exec chmod 777 {} \;
#find /home/makeraccess_develop/makeraccess_develop/djangoVersuchsProject/staticfiles -type f -exec chmod 666 {} \;

# das sind zuviele  freigaben !!
#chown -R makeraccess_develop:www-data  /home/makeraccess_develop/makeraccess_develop
#find /home/makeraccess_develop/makeraccess_develop/makeraccess_develop -type d -exec chmod 770 {} \;
#find /home/makeraccess_develop/makeraccess_develop/makeraccess_develop -type f -exec chmod 660 {} \;


chmod 770  /home/makeraccess_develop/makeraccess_develop/start.sh
chmod 770  /home/makeraccess_develop/makeraccess_develop/stop.sh
chmod 770  /home/makeraccess_develop/makeraccess_develop/rebuild_and_start.sh

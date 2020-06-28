 #!/bin/bash

WEB_PATH='/var/www/yaoyao/'
PROJECT_PATH='/home/coding/yaoyao'
PROJECT_DIST_PATH = '/home/coding/yaoyao/dist'

# WEB_USERGROUP='root'

# echo "Start deployment"
# cd $WEB_PATH
# echo "pulling source code..."
cd $PROJECT_PATH
git checkout . 
git pull origin master
npm i 
npm run build

cd $WEB_PATH
rm -r dist

mv $PROJECT_DIST_PATH $WEB_PATH
echo "Finished."

# git reset --hard origin/master
# git clean -f
# git pull
# git checkout master
# echo "changing permissions..."
# chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH





# install.sh
git clone https://github.com/wilsonmar/pwa-theme-woocommerce
cd pwa-theme-woocommerce

npm install
npm start
   # auto open http://localhost:3000/

#### Heroku

# https://dashboard.heroku.com/apps
# New, Create New App, "pwa-react-node", Create App
# NOT Connect to GitHub. Authorize Heroku. 

heroku login
# Create a new Git repository
#Initialize a git repository in a new or existing directory

heroku git:remote -a pwa-react-node
	# set git remote heroku to https://git.heroku.com/pwa-react-node.git

# Deploy your application
# Commit your code to the repository and deploy it to Heroku using Git.

git add .
git commit -am "make it better"
git push heroku master
# Existing Git repository
# For existing repositories, simply add the heroku remote

heroku git:remote -a pwa-react-node

git remote -v
   # heroku	https://git.heroku.com/pwa-react-node.git (fetch)
   # heroku	https://git.heroku.com/pwa-react-node.git (push)
   # origin	git@github.com:wilsonmar/pwa-theme-woocommerce (fetch)
   # origin	git@github.com:wilsonmar/pwa-theme-woocommerce (push)

open https://pwa-react-node.herokuapp.com/

exit

#### GCP

# See https://medium.com/google-cloud/deploying-a-node-js-app-on-google-cloud-8419de45e5dc

# https://cloud.google.com/nodejs/
npm install --save @google-cloud/storage 

# GCP Project: jetbloom-pwareact-node
   # Assigned: starting-account-2sn1bf9lqx89.
   # Downlaod private key: jetbloom-pwareact-node-9c6c833f9aec.json in ~

# Create app.yaml based on https://cloud.google.com/appengine/docs/flexible/nodejs/configuring-your-app-with-app-yaml

# Sample: https://github.com/googleapis/nodejs-storage/blob/fb6a7fd779061da9d885b7ac89992acde1191b54/samples/files.js

# Needs app.yml for Google

https://cloud.google.com/shell/docs/features#web_preview

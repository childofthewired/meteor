##FROM quay.io/app-sre/ubi8-nodejs-14
FROM registry.access.redhat.com/ubi8/nodejs-14

## ############## Change npm default directory ####################################
##    For Details: 
##     http://npm.github.io/installation-setup-docs/installing/a-note-on-permissions.html
## ################################################################################
# ENV NPM_CONFIG_PREFIX=$HOME/meteor_build/.npm-global

WORKDIR $APP_ROOT
RUN git clone https://github.com/meteor/meteor.git
WORKDIR $APPROOT/meteor/
EXPOSE 3000

CMD ["meteor, --production"]

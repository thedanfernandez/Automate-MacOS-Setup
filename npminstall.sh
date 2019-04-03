#!/bin/bash

#   Before running, ensure npminstall.sh has execute set
# > chmod +x npminstall.sh
# > "sudo ./npminstall.sh"
#   Note: must run as sudo for -g (global flag) 

# Install 
npm install -g express          # Express JS frameowkr
npm install -g less             # Less CLI for CSS Less files
npm install -g mocha            # Unit test framework
npm install -g nodemon          # Watch / restart on changes
npm install -g ndb              # Chrome dev tools for Node
npm install -g vue              # Vue.js framework
npm install -g vue-router       # Vue routing
npm install -g vue-devtools     # Browser dev tools
npm install -g vue-CLI          # VueJS Project scaffolding
npm install -g yo               # Yeoman scaffolding tool


# Yo generators / project scaffolding
npm install -g generator-azure-node     # Azure NodeJs projects
npm install -g generator-code           # Visual Studio Code Projects
npm install -g generator-mocha
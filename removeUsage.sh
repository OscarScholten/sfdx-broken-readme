#!/bin/bash

node -e "fs = require('fs'); fs.writeFileSync('oclif.manifest.json', JSON.stringify(JSON.parse(fs.readFileSync('oclif.manifest.json')), null, 4));"

sed -i '/"usage":/d' oclif.manifest.json

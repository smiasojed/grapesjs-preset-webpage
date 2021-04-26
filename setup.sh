#!/bin/bash

git clone git@github.com:artf/grapesjs-preset-webpage.git
git clone git@github.com:smiasojed/grapesjs-component-promoclock.git

pushd grapesjs-preset-webpage
 
patch -i ../plugin-promoclock-added.patch package.json 
patch -i ../plugin-promoclock-enabled.patch src/index.js


npm i
npm i grapesjs --no-save
popd

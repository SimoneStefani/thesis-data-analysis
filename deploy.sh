#!/bin/bash
set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

  cd /home/science
  ls -la
else
  echo "Not deploying, since this branch isn't master."
fi

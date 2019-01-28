#!/bin/bash
apk update
apk upgrade
apk add --no-cache git
apk add build-base gcc wget diffutils perl
apk add curl
git clone https://github.com/mdhiggins/sickbeard_mp4_automator.git /config/scripts/MP4_Automator/tmp
mv /config/scripts/MP4_Automator/tmp/* /config/scripts/MP4_Automator/
rm -rf /config/scripts/MP4_Automator/tmp
git unstage
apk add --no-cache py-setuptools py-pip python-dev libffi-dev gcc musl-dev openssl-dev
pip install --upgrade PIP
pip install requests
pip install requests[security]
pip install requests-cache
pip install babelfish
pip install "guessit<2"
pip install "subliminal<2"
pip install qtfaststart
# As per https://github.com/mdhiggins/sickbeard_mp4_automator/issues/643
pip uninstall -y stevedore
pip install stevedore==1.19.1
#Build ffmpeg
cd /config
. /config/ffmpeg-build/launch-webinstall.sh
#Set script file permissions
chmod 775 -R /config/scripts

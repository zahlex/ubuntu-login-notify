#!/bin/sh
[ "$PAM_TYPE" = "open_session" ] || exit 0
curl https://api.prowlapp.com/publicapi/add \
-F apikey=$INSERT_API_KEY_HERE \
-F application="Server Login Monitoring" \
-F description="Login as '$PAM_USER' on '`uname -n`' via '$PAM_SERVICE' from '${PAM_RHOST:-localhost}' at `date`."

# Inspiration: https://blog.stalkr.net/2010/11/login-notifications-pamexec-scripting.html

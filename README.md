# Ubuntu login notify
Receive a push notification on your phone every time someone logs into your server.

Currently prepared for the iOS-only app [Prowl](https://www.prowlapp.com). However, adapting to an Android solution like [NotifyMyAndroid](https://www.notifymyandroid.com) should be quite easy.

Instructions:

- Install cURL and check time zone:<br>
```apt install curl && dpkg-reconfigure tzdata```

- Copy login-notify.sh to a suitable place, I chose /root/ and make it executable:<br>```chmod +x login-notify.sh```

- [Grab your API key](https://www.prowlapp.com/api_settings.php) and paste it into login-notify.sh

- Add the following line to /etc/pam.d/common-session and /etc/pam.d/sudo<br>
```session optional pam_exec.so /root/login-notify.sh```

- Make sure you double check the path to this script in the line you just pasted.

- Receive lots of notifications.

Thanks to StalkR for the great inspiration:<br>
https://blog.stalkr.net/2010/11/login-notifications-pamexec-scripting.html

License: MIT

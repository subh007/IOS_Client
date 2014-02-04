IOS_Client
==========

This is the client program for the downloading the link in remote machine (machine who will run the python server written to download the link).


How it works:
============
```
+++++++++++             download link           ++++++++++++++
|  client  |  ---- (www.host.com/xyz.pdf) ----> | python ser |
++++++++++++                                    +------------+
            <----(acknowledgement donwload)---
                          complete
```

* same client is also available in android.

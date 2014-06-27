#Install Swift-Replication server
In this github, you can see how to setup a Server with swift and replication in other server.


## Beginning

For beginning you need to install git for clone this repository

```bash
apt-get install git-core
```

And when git is installed, you need to clone the repository :


```bash
git clone https://github.com/fclement21/swift-replication.git
```

## Usage

After that, you need to give the access to execute the file installswift.sh


```bash
chmod +x swift-main/files/installswift.sh
```
And now, you need to launch the script :

```bash
sudo swift-main/files/installswift.sh
```
At the end of the script, you need to hit CTRL+C for dont display the log. 

At this point OpenStack Swift is running.
And you can test :

```bash
swift -A http://127.0.0.1:8080/auth/v1.0 -U swift:authot -K authot stat   
```

or

```bash
curl -v  -H  'X-Storage-User: swift:authot' -H 'X-Storage-Pass:authot' http://urlofyourserver:8080/auth/v1.0  
```

Try uploading a file:

```bash
swift -A http://127.0.0.1:8080/auth/v1.0 -U swift:authot -K authot upload swift swift.txt
swift.txt
```

OR 

```bash
curl -X PUT -i -H "X-Auth-Token: TOKEN" -T Desktop/test.txt  http://url:8080/v1/AUTH_swift/name-container/test.txt
```

That's it!

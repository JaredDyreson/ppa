# Tuffix PPA

An Ubuntu repository for the Tuffix project.
The master branch will reflect what is currently on the system.
This will allow for version control and ease of use for deployment.

## Installation

For students:

```bash
wget -O - https://www.tuffix.xyz/repo/KEY.gpg | sudo apt-key add -
echo "deb https://www.tuffix.xyz/repo focal main" > /etc/apt/sources.list.d/internal.list 
```

For system administrators:


## Sources

- [Github version](https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html)
- [Medium article](https://medium.com/sqooba/create-your-own-custom-and-authenticated-apt-repository-1e4a4cf0b864)
- [The article that saved this endeavor](http://blog.jonliv.es/blog/2011/04/26/creating-your-own-signed-apt-repository-and-debian-packages/)
- [How to generate a GPG Key](https://askubuntu.com/questions/1019793/how-to-solve-gpg-invalid-option-full-generate-key)
- [How to setup the NGINX webserver](https://www.youtube.com/watch?v=OWAqilIVNgE)

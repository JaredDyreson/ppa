# tuffix-ppa

Ubuntu PPA for the CSUF Tuffix project.

# Sources

- [Directory structure and script](https://github.com/assafmo/ppa)
- [Original Article](https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html)

# Installation (should be done in the postinst script)


```bash
curl -SsL https://jareddyreson.github.io/ppa/ubuntu/KEY.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/tuffix.list https://jareddyreson.github.io/ppa/ubuntu/tuffix.list
sudo apt update
sudo apt install tuffix
```

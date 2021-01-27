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


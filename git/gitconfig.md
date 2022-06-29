# Config name and email
```sh
git config --global user.email "you@example.com"
```
```sh
git config --global user.name "Your Name"
```
# Generate [SSH key](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
# [Add Keys](https://github.com/settings/keys)
# Testing your SSH connection
```sh
ssh -T git@github.com
```

# Setup SSH in WSL Ubuntu terminal for github
- Confirm git is installed
    `which git`
    - if not, then:
      `sudo apt install git`
- Generate a new key: `ssh-keygen -t ed25519 -C <email@address.com>`
- You'll receive a prompt to confirm location as well as create a filename. You can press enter to leave as default.
- Next prompt is to create a passphrase to encrypt your private key, but mandatory but recommended
- Press enter after creating passphrase (or not), you'll see a message similar to this:
<img width="944" height="465" alt="image" src="https://github.com/user-attachments/assets/f314d768-0493-4c2f-9f06-2e7ee31a1a18" />

- 

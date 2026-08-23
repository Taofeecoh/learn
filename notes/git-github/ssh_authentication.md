# Setup SSH in WSL Ubuntu terminal for github
- Confirm git is installed
    `which git`
    - if not, then:
      `sudo apt install git`
- Generate a new key: `ssh-keygen -t ed25519 -C <email@address.com>`
- You'll receive a prompt to confirm location as well as create a filename. You can press enter to leave as default.
- Next prompt is to create a passphrase to encrypt your private key, but mandatory but recommended
- Press enter after creating a passphrase (or not), you'll see a message similar to this:
  
    <img width="944" height="465" alt="image" src="https://github.com/user-attachments/assets/f314d768-0493-4c2f-9f06-2e7ee31a1a18" />

- Confirm the key by : `ls ~/.ssh`, you should see `id_ed25519 (private key` and `id_ed25519.pub (public key)` depending on what name you created the private key with.
- Open the public key: `cat ~/.ssh/id_ed25529.pub` and copy without any line or whitespace to your clipboard
- Log into your github account,
    - Navigate to your profile picture
    - Click on it. Under the `Access`, click on `SSH and GPG Keys`
    - Click `new SSH key`
    - Fill the sections with a preferred title for the key, paste the copied public key.
    - Click add new key.

 - Confirm authentication to github with `ssh -T git@github.com`



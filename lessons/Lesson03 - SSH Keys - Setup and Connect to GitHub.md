# Lesson 03: SSH Keys - Setup and Connect to GitHub

## What this lesson covers

Authenticating with GitHub without typing a password every time.

### Intuition to build
- The lock and key analogy: public key goes on GitHub (the lock), private key stays on your machine (the key)
- Why HTTPS prompts for credentials but SSH does not
- This is a one-time setup that unlocks all future lessons involving push/pull

### What to include
- Generate an SSH key pair with `ssh-keygen`
- Where the keys live (`~/.ssh/`)
- Adding the public key to GitHub (Settings -> SSH keys)
- Testing the connection: `ssh -T git@github.com`
- The difference between SSH and HTTPS remote URLs

### Why it's lesson 03
Students will need to push/pull starting from lesson 22 - doing this setup early means no auth friction later.

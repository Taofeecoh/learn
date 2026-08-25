## Users and Groups
### Users: A person or process account
### Group: A collection of users with shared rights or access
### Root: The superuser or admin with no restricted access

----

### User Management
```
As a user on a machine, you need another user to access some of the files you've been working with on the same machine but they don't have an `account`. How do you go about this?
```

By adding a new user to the machine and assigning the minimum permission needed for them to operate on the machine.
## `sudo adduser` or `sudo useradd`?

By `sudo adduser <user-name>`, you'll be creating a new user and also assigning them to a group, assign them a password and other biodata on creation

### Workflow of user management
- adduser (detailed)  or useradd (no details)
- add attributes to non-detailed user: `sudo passwd user`; `sudo usermod user --shell path/to/shell`
- sudo (super user do)
- su (switch user)
- listing users: `/etc/passwd`
- `user@password@user_id@user_group@home_directory-or-default_directory@default_shell`


---
## File permission
- Type of users : users (u) , groups (g) , others (o)
- Levels of file permission : r, w, x
- Types of permission: + / -

## Changing Permissions
- chmod user(u) + write(w)
  - `+/-`
- Octal Mode (Numeric)
  - `4:read`, `2:wriite`, `1:execute`
- 3 digits : user|group|others
 
<img width="427" height="296" alt="image" src="https://github.com/user-attachments/assets/2e0d988c-36c0-4c2c-a67e-1956e9398176" />






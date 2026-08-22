## Users and Groups
### Users: A person or process account
### Group: A collection of users with shared rights or access
### Root: The superuser or admin with no restricted access

----
### Workflow of user management
- adduser (detailed)  or useradd (no details)
- add attributes to non-detailed user: `sudo passwd user`; `sudo usermod user --shell path/to/shell`
- sudo (super user do)
- su (switch user)
- listing users: `/etc/passwd`
- `user@password@user_id@user_group@home_directory-or-default_directory@default_shell`


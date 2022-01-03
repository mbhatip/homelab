1. sudo su guest
2. make ssh-keygen, copy public key to authorized_keys, copy private to ots.fyi
2. change password, copy to ots.fyi
3. send link to guest, make them copy key into file, have them download winscp, filezilla, some client for sftp
4. server is memohat.xyz, port is 11037, advanced settings for private key, username is guest
4. Or just use password
5. mount --bind /file/to/share /sftp/data
6. They can get the data from data folder and write data back in the write folder
7. complete process (they can do screen or tmux on cli if they wish)
8. Confirm it is done, ssh-keygen and overwrite public key to authorized_keys
8. Or change the password to new generated one
9. ps aux | grep sshd and pstree -p | grep sshd to figure out process if still happening, kill it
10. DONE!!

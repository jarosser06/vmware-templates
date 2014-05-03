# update sudoers - can't do this in autoinst.xml
echo -e "\nupdate sudoers ..."
echo -e "aggieops ALL=(ALL) NOPASSWD: ALL\n" >> /etc/sudoers

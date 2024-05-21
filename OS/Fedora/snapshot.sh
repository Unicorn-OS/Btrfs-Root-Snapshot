init(){
  sudo mkdir /mnt/root
  sudo mount /dev/sda3 /mnt/root/
  Snapshot()
  sudo umount /mnt/root
  sudo rmd /mnt/root
}

init(){
  sudo mkdir /mnt/root
  sudo mount /dev/sda3 /mnt/root/
  Snapshot()
  sudo umount /mnt/root
  sudo rmd /mnt/root
}

makeArchive(){
  sudo btrfs sub create .bac 
}

Snapshot(){
  sudo btrfs sub snap -r home .bac/home.original
  sudo btrfs sub snap -r root .bac/root.original
}

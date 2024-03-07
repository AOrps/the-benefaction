find . -maxdepth 1 -type f -executable -regex './qemu-system.*' -exec cp {} /usr/bin/{} \;

cat <<'EOF' > /etc/apt/sources.list
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb http://mirrors.cernet.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
# deb-src http://mirrors.cernet.edu.cn/debian/ bookworm main contrib non-free non-free-firmware

deb http://mirrors.cernet.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware
# deb-src http://mirrors.cernet.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware

deb http://mirrors.cernet.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware
# deb-src http://mirrors.cernet.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware

# 以下安全更新软件源包含了官方源与镜像站配置，如有需要可自行修改注释切换
deb http://mirrors.cernet.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware
# deb-src http://mirrors.cernet.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware

# deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
# # deb-src http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
EOF

# remove /etc/apt/sources.list.d/debian.sources
rm /etc/apt/sources.list.d/debian.sources

apt update

apt install apt-transport-https ca-certificates -y

cat <<'EOF' > /etc/apt/sources.list
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.cernet.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
# deb-src https://mirrors.cernet.edu.cn/debian/ bookworm main contrib non-free non-free-firmware

deb https://mirrors.cernet.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware
# deb-src https://mirrors.cernet.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware

deb https://mirrors.cernet.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware
# deb-src https://mirrors.cernet.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware

# 以下安全更新软件源包含了官方源与镜像站配置，如有需要可自行修改注释切换
deb https://mirrors.cernet.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware
# deb-src https://mirrors.cernet.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware

# deb https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
# # deb-src https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
EOF

apt update

apt install smbclient -y

apt autopurge -y

apt clean

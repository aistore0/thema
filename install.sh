!/bin/bash

# Color
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e ""
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                                                                  ${NC}"
  echo -e "${BLUE}                      AUTO INSTALLER THEMA V2                  ${NC}"
  echo -e "${BLUE}                          © MADE BY FAIZ STORE                 ${NC}"
  echo -e "${RED}                                                                      ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e ""
  echo -e "script ini di buat untuk mempermudah penginstalasian thema pterodactyle,"
  echo -e "dilarang keras untuk memperjual belikan."
  echo -e ""
  echo -e "TIKTOK :"
  echo -e "@anakbiasa.com"
  echo -e "𝗖𝗥𝗘𝗗𝗜𝗧𝗦 :"
  echo -e "@FaizStore"
  sleep 4
  clear
}

#Update and install jq
install_jq() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                      UPDATE & INSTALL JQ                        ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sudo apt update && sudo apt install -y jq
  if [ $? -eq 0 ]; then
    echo -e "                                                       "
    echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
    echo -e "${GREEN}                         INSTALL JQ BERHASIL                   ${NC}"
    echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  else
    echo -e "                                                       "
    echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
    echo -e "${RED}                       INSTALL JQ GAGAL                         ${NC}"
    echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
    exit 1
  fi
  echo -e "                                                       "
  sleep 1
  clear
}
#Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                            LICENSY BY FAIZ.                          ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  echo -e "${YELLOW}MASUKAN AKSES TOKEN :${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "FaizNoComment" ]; then
    echo -e "${GREEN}AKSES BERHASIL${NC}}"
  else
    echo -e "${GREEN}WADUH GATAU KEY? BELI DLU${NC}"
    echo -e "${YELLOW}TELEGRAM : @alwaysFaizKuy${NC}"
    echo -e "${YELLOW}WHATSAPP : 6285383056042${NC}"
    echo -e "${YELLOW}HARGA TOKEN : 10K FREE UPDATE JIKA ADA TOKEN BARU${NC}"
    echo -e "${YELLOW}©FaizStore${NC}"
    exit 1
  fi
  clear
}

# Install theme
install_theme() {
  while true; do
    echo -e "                                                       "
    echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
    echo -e "${BLUE}                               SELECT THEME                     ${NC}"
    echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
    echo -e "                                                       "
    echo -e "PILIH THEME YANG INGIN DI INSTALL"
    echo "1. stellar"
    echo "2. billing"
    echo "3. enigma"
    echo "4. Elysium"
    echo "5. nebula"
    echo "x. kembali"
    echo -e "masukan pilihan (1/2/3/4/5/x) :"
    read -r SELECT_THEME
    case "$SELECT_THEME" in
      1)
        THEME_URL=$(echo -e "https://github.com/aistore0/thema/raw/main/C2.zip")
        break
        ;;
      2)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x31\x2E\x7A\x69\x70")
        break
        ;;
      3)
        THEME_URL=$(echo -e "https://github.com/aistore0/thema/raw/main/C3.zip")
        break
        ;;
        4)
        THEME_URL=$(echo -e "https://github.com/aistore0/thema/raw/main/C4.zip")
        break
        ;;
        5)
        THEME_URL=$(echo -e "https://github.com/aistore0/thema/raw/main/C5.zip")
        break
        ;; 
      x)
        return
        ;;
      *)
        echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
  
if [ -e /root/pterodactyl ]; then
    sudo rm -rf /root/pterodactyl
  fi
  wget -q "$THEME_URL"
  sudo unzip -o "$(basename "$THEME_URL")"
  
if [ "$SELECT_THEME" -eq 1 ]; then
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                              INSTALLASI THEMA                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                                   "
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/C2.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                              INSTALL SUCCESS                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e ""
  sleep 2
  clear
  exit 0

elif [ "$SELECT_THEME" -eq 2 ]; then
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                             INSTALLASI THEMA                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan billing:install stable
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/C1.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                              INSTALL SUCCESS                   ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  return

elif [ "$SELECT_THEME" -eq 3 ]; then
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                              INSTALLASI THEMA                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                                   "

    # Menanyakan informasi kepada pengguna untuk tema Enigma
    echo -e "${YELLOW}Masukkan link wa contoh https://wa.me/6285383056042 : ${NC}"
    read LINK_WA
    echo -e "${YELLOW}Masukkan link group contoh https://chat.whatsapp.com/Xxx : ${NC}"
    read LINK_GROUP
    echo -e "${YELLOW}Masukkan link channel contoh https://whatsapp.com/channel/xxx: ${NC}"
    read LINK_CHNL

    # Mengganti placeholder dengan nilai dari pengguna
    sudo sed -i "s|LINK_WA|$LINK_WA|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_GROUP|$LINK_GROUP|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_CHNL|$LINK_CHNL|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    

  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/C3.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                               INSTALL SUCCESS                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e ""
  sleep 2
  clear
  exit 0
  
  elif [ "$SELECT_THEME" -eq 4 ]; then
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                             INSTALLASI THEMA                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                                   "

        sudo cp -rfT /root/pterodactyl /var/www/pterodactyl

        # Mengekstrak file ZIP dengan opsi untuk menggantikan file tanpa konfirmasi
        
        # Menjalankan perintah
        sudo mkdir -p /etc/apt/keyrings

        # Menyimpan output dan tidak meminta konfirmasi
        curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg || true

        # Menambahkan repository
        echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

        # Update dan install nodejs
        sudo apt update
        sudo apt install -y nodejs
        apt install npm
        npm i -g yarn
        cd /var/www/pterodactyl
        yarn
        yarn build:production
        php artisan migrate
        php artisan view:clear
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                               INSTALL SUCCESS                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e ""
  sleep 2
  clear
  exit 0
  
  elif [ "$SELECT_THEME" -eq 5 ]; then
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                           INSTALLASI THEMA                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                                   "

    # Menanyakan informasi kepada pengguna untuk tema Enigma
    sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
    cd /var/www/pterodactyl && blueprint -install nebula
    cd /var/www/pterodactyl && rm -r nebula.blueprint
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                            INSTALL SUCCESS                  ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e ""
  sleep 5
else
  echo ""
  echo "Pilihan tidak valid. silahkan pilih 1/2/3."
fi
}


# Uninstall theme
uninstall_theme() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                              DELETE THEME                    ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  bash <(curl https://raw.githubusercontent.com/aistore0/thema/main/repair.sh)
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                          DELETE THEME SUKSES                ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}
install_themeSteeler() {
#!/bin/bash

echo -e "                                                       "
echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
echo -e "${BLUE}                     INSTALLASI THEMA                  ${NC}"
echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
echo -e "                                                                   "

# Unduh file tema
wget -O /root/C2.zip https://github.com/aistore0/thema/raw/main/C2.zip

# Ekstrak file tema
unzip /root/C2.zip -d /root/pterodactyl

# Salin tema ke direktori Pterodactyl
sudo cp -rfT /root/pterodactyl /var/www/pterodactyl

# Instal Node.js dan Yarn
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm i -g yarn

# Instal dependensi dan build tema
cd /var/www/pterodactyl
yarn add react-feather
php artisan migrate
yarn build:production
php artisan view:clear

# Hapus file dan direktori sementara
sudo rm /root/C2.zip
sudo rm -rf /root/pterodactyl

echo -e "                                                       "
echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
echo -e "${GREEN}                      INSTALL SUCCESS                  ${NC}"
echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
echo -e ""
sleep 2
clear
exit 0

}
create_node() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                       CREATE NODE                        ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  #!/bin/bash
#!/bin/bash

# Minta input dari pengguna
read -p "Masukkan nama lokasi: " location_name
read -p "Masukkan deskripsi lokasi: " location_description
read -p "Masukkan domain: " domain
read -p "Masukkan nama node: " node_name
read -p "Masukkan RAM (dalam MB): " ram
read -p "Masukkan jumlah maksimum disk space (dalam MB): " disk_space
read -p "Masukkan Locid: " locid

# Ubah ke direktori pterodactyl
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:location:make <<EOF
$location_name
$location_description
EOF

# Membuat node baru
php artisan p:node:make <<EOF
$node_name
$location_description
$locid
https
$domain
yes
no
no
$ram
$ram
$disk_space
$disk_space
100
8080
2022
/var/lib/pterodactyl/volumes
EOF

  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}           CREATE NODE & LOCATION SUKSES                ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
uninstall_panel() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                       UNINSTALL PANEL                    ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
read -p "UninstallPanel y/n " ypanel
read -p "UninstallWings y/n " ywings
read -p "Input y/n " y1
read -p "Input y/n " y2

bash <(curl -s https://pterodactyl-installer.se) <<EOF
6
ypanel
ywings
y1
y2
EOF


  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                    UNINSTALL PANEL SUKSES                ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
configure_wings() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                       CONFIGURE WINGS                    ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  #!/bin/bash

# Minta input token dari pengguna
read -p "Masukkan token Configure menjalankan wings: " wings

eval "$wings"
# Menjalankan perintah systemctl start wings
sudo systemctl start wings

  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                    CONFIGURE WINGS SUKSES                ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
hackback_panel() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${BLUE}                       HACK BACK PANEL                    ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  # Minta input dari pengguna
read -p "Masukkan Username Panel: " user
read -p "password login " psswdhb
  #!/bin/bash
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:user:make <<EOF
yes
hackback@aistore.my.id
$user
$user
$user
$psswdhb
EOF
  echo -e "                                                       "
  echo -e "${YELLOW}    =========================================    ${NC}"
  echo -e "${GREEN}                    AKUN TELAH DI ADD                ${NC}"
  echo -e "${YELLOW}    =========================================    ${NC}"
  echo -e "                                                       "
  sleep 2
  
  exit 0
}
ubahpw_vps() {
  echo -e "                                                       "
  echo -e "${YELLOW}    ========================================    ${NC}"
  echo -e "${GREEN}                       UBAH PASSWORD VPS          ${NC}"
  echo -e "${YELLOW}    ========================================    ${NC}"
  echo -e "                                                       "
read -p "Masukkan Pw Baru: " pw
read -p "Masukkan Ulang Pw Baru " pw

passwd <<EOF
$pw
$pw

EOF


  echo -e "                                                       "
  echo -e "${YELLOW}    ========================================    ${NC}"
  echo -e "${GREEN}                    GANTI PW VPS SUKSES            ${NC}"
  echo -e "${YELLOW}    ========================================    ${NC}"
  echo -e "                                                       "
  sleep 2
  
  exit 0
}
auto_installer() {
  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}               AUTO INSTALL PANEL + WINGS              ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
read -p "Masukkan Nama " nama
read -p "Masukkan Password " pw
read -p "Masukkan Subdomain " subdo
read -p "Masukkan NodeSubdomain " nodesubdo

bash <(curl -s https://pterodactyl-installer.se) <<EOF
2
\n
\n
pw
Asia/Jakarta
admin@aistore.my.id
admin@aistore.my.id
nama
nama
nama
pw
subdo
y
y
y
y
yes
A
y
y
y
subdo
y
user
pw
y
nodesubdo
y
admin@aistore.my.id
y
EOF


  echo -e "                                                       "
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "${GREEN}                     AUTO INSTALL SUKSE                ${NC}"
  echo -e "${YELLOW}≪━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━≫${NC}"
  echo -e "                                                       "
  sleep 2
  
  exit 0
}
# Main script
display_welcome
install_jq
check_token

while true; do
  clear
  echo -e "BERIKUT LIST INSTALL :"
  echo "1. Install theme"
  echo "2. Uninstall theme"
  echo "3. Configure Wings"
  echo "4. Create Node"
  echo "5. Uninstall Panel"
  echo "6. Stellar Theme"
  echo "7. Hack Back Panel"
  echo "8. Ubah Pw Vps"
  echo "9. Auto Install Panel"
  echo "x. Exit"
  echo -e "Masukkan pilihan 1/2/x:"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_theme
      ;;
    2)
      uninstall_theme
      ;;
      3)
      configure_wings
      ;;
      4)
      create_node
      ;;
      5)
      uninstall_panel
      ;;
      6)
      install_themeSteeler
      ;;
      7)
      hackback_panel
      ;;
      8)
      ubahpw_vps
      ;;
      9)
      auto_installer
      ;;
    x)
      echo "Keluar dari skrip."
      exit 0
      ;;
    *)
      echo "Pilihan tidak valid, silahkan coba lagi."
      ;;
  esac
done
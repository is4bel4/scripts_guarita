# OpenWRT QEMU Launcher

![OpenWRT](https://openwrt.org/_media/logo.png)

[🇧🇷 Versão em Português](#português) | [🇬🇧 English Version](#english)

<a name="english"></a>
## 🇬🇧 English

### 📝 Description
Bash script to automate OpenWRT initialization in QEMU. This script simplifies the process of running OpenWRT in a virtualized environment, including dependency checks and necessary configurations.

### ⭐ Features
- ✅ Automatic QEMU verification and installation
- 🖥️ Support for multiple operating systems (Arch Linux, Debian/Ubuntu, Alpine Linux, macOS)
- 🔒 Security and permission checks
- 🌐 Automatically configured virtual network interface
- 📋 Clear post-boot configuration instructions

### 📋 Prerequisites
- Linux or macOS operating system
- Administrator (root) privileges
- x86_64 compatible OpenWRT image

### 📥 Getting the OpenWRT Image
1. Visit [OpenWRT 23.05.1 x86/64](https://archive.openwrt.org/releases/23.05.1/targets/x86/64/)
2. Download the file `openwrt-23.05.1-x86-64-generic-ext4-combined.img.gz`
3. Extract the file:
```bash
gunzip openwrt-23.05.1-x86-64-generic-ext4-combined.img.gz
```

### 🚀 Installation
1. Clone this repository:
```bash
git clone git@github.com:is4bel4/scripts_guarita.git
```
2. Make the script executable:
```bash
cd scripts_guarita
chmod +x start_openwrt.sh
```

### 💻 Usage
Run the script as root, specifying the OpenWRT image path:
```bash
sudo ./start_openwrt.sh [IMAGE_PATH]
```
or simply:
```bash
sudo ./start_openwrt.sh
```
and input the image path when prompted.

### ⚙️ Post-boot Instructions
1. To configure the default route (if needed):
```bash
ip route add default via 10.0.2.2 dev eth1
```
2. Test connectivity:
```bash
ping 8.8.8.8
```

### ❌ To Exit
Press `Ctrl+A`, followed by `X`

---

<a name="português"></a>
## 🇧🇷 Português

### 📝 Descrição
Script em bash para automatizar a inicialização do OpenWRT no QEMU. Este script simplifica o processo de execução do OpenWRT em um ambiente virtualizado, incluindo verificações de dependências e configurações necessárias.

### ⭐ Características
- ✅ Verificação automática e instalação do QEMU
- 🖥️ Suporte a múltiplos sistemas operacionais (Arch Linux, Debian/Ubuntu, Alpine Linux, macOS)
- 🔒 Verificações de segurança e permissões
- 🌐 Interface de rede virtualizada configurada automaticamente
- 📋 Instruções claras para configuração pós-inicialização

### 📋 Pré-requisitos
- Sistema operacional Linux ou macOS
- Privilégios de administrador (root)
- Imagem do OpenWRT compatível com x86_64

### 📥 Obtendo a Imagem do OpenWRT
1. Acesse [OpenWRT 23.05.1 x86/64](https://archive.openwrt.org/releases/23.05.1/targets/x86/64/)
2. Baixe o arquivo `openwrt-23.05.1-x86-64-generic-ext4-combined.img.gz`
3. Extraia o arquivo:
```bash
gunzip openwrt-23.05.1-x86-64-generic-ext4-combined.img.gz
```

### 🚀 Instalação
1. Clone este repositório:
```bash
git clone git@github.com:is4bel4/scripts_guarita.git
```
2. Torne o script executável:
```bash
cd scripts_guarita
chmod +x start_openwrt.sh
```

### 💻 Uso
Execute o script como root, especificando o caminho da imagem do OpenWRT:
```bash
sudo ./start_openwrt.sh [CAMINHO_DA_IMAGEM]
```
ou simplesmente:
```bash
sudo ./start_openwrt.sh
```
e insira o caminho da imagem quando solicitado.

### ⚙️ Instruções pós-inicialização
1. Para configurar a rota padrão (se necessário):
```bash
ip route add default via 10.0.2.2 dev eth1
```
2. Teste a conectividade:
```bash
ping 8.8.8.8
```

### ❌ Para sair
Pressione `Ctrl+A`, seguido de `X`

---

<p align="center">
Made with ❤️ by <a href="https://github.com/is4bel4">Is4bel4</a>
</p>
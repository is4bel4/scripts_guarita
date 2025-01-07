# 🌐 Network Management Scripts

![OpenWRT](https://openwrt.org/_media/logo.png)

[🇧🇷 Versão em Português](#português) | [🇬🇧 English Version](#english)

<a name="english"></a>
## 🇬🇧 English  

### 📝 General Description
This repository contains scripts for managing internet access, including blocking and unblocking social networks, blocking adult content, and resetting firewall rules using `nftables`.

### ⭐ Features
- ✅ Blocks internet access, except for specific services like WhatsApp.
- 🚫 Blocks social networks and adult content.
- 🖥️ Resets firewall rules and restores internet access.
- 📋 Simple and easy-to-use Bash scripts.

### 📋 Prerequisites
- Linux or macOS operating system
- Administrator (root) privileges
- `nftables` installed and configured

### 🚀 Installation
1. Clone this repository:
   ```bash
   git clone git@github.com:is4bel4/scripts_guarita.git
   ```
2. Navigate into the project directory:
   ```bash
   cd scripts_guarita
   ```

### 💻 Usage

#### 1. 🚫 Internet Blocking

This script blocks internet access, except for specific services like WhatsApp.

**How to use:**
1. Make the script executable:
   ```bash
   chmod +x bloqueio.sh
   ```
2. Run the script as administrator:
   ```bash
   sudo ./bloqueio.sh
   ```

---

#### 2. 🔓 Unblocking

This script unblocks internet access and automatically blocks access to adult websites.

**How to use:**
1. Make the script executable:
   ```bash
   chmod +x desbloqueio.sh
   ```
2. Run the script as administrator:
   ```bash
   sudo ./desbloqueio.sh
   ```

---

#### 3. 🔄 Network Reset

This script resets `nftables` rules, completely allowing internet access.

**How to use:**
1. Make the script executable:
   ```bash
   chmod +x reset.sh
   ```
2. Run the script as administrator:
   ```bash
   sudo ./reset.sh
   ```

### ⚙️ Post-usage Instructions
- After running the scripts, verify your network settings and adjust IP rules as needed.

### ❌ To Exit
- Simply stop the script execution with `Ctrl+C` or exit your terminal session.

---

<a name="português"></a>
## 🇧🇷 Português  

### 📝 Descrição
Este repositório contém scripts para o gerenciamento de acessos à internet, como bloqueio e desbloqueio de redes sociais, bloqueio de conteúdo adulto e redefinição de regras de firewall utilizando o `nftables`.

### ⭐ Características
- ✅ Bloqueia o acesso à internet, exceto para serviços específicos como o WhatsApp.
- 🚫 Bloqueia redes sociais e conteúdo adulto.
- 🖥️ Redefine regras de firewall e restaura o acesso à internet.
- 📋 Scripts em Bash simples e fáceis de usar.

### 📋 Pré-requisitos
- Sistema operacional Linux ou macOS
- Privilégios de administrador (root)
- `nftables` instalado e configurado

### 🚀 Instalação
1. Clone este repositório:
   ```bash
   git clone git@github.com:is4bel4/scripts_guarita.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd scripts_guarita
   ```

### 💻 Uso

#### 1. 🚫 Bloqueio da Internet

Este script bloqueia o acesso à internet, exceto para serviços específicos como o WhatsApp.

**Como usar:**
1. Torne o script executável:
   ```bash
   chmod +x bloqueio.sh
   ```
2. Execute o script como administrador:
   ```bash
   sudo ./bloqueio.sh
   ```

---

#### 2. 🔓 Desbloqueio

Este script desbloqueia o acesso à internet e implementa um bloqueio automático para sites pornográficos.

**Como usar:**
1. Torne o script executável:
   ```bash
   chmod +x desbloqueio.sh
   ```
2. Execute o script como administrador:
   ```bash
   sudo ./desbloqueio.sh
   ```

---

#### 3. 🔄 Reset da Rede

Este script redefine as regras do `nftables`, liberando completamente o acesso à internet.

**Como usar:**
1. Torne o script executável:
   ```bash
   chmod +x reset.sh
   ```
2. Execute o script como administrador:
   ```bash
   sudo ./reset.sh
   ```

### ⚙️ Instruções pós-uso
- Após rodar os scripts, verifique as configurações de rede e ajuste as regras de IP conforme necessário.

### ❌ Para sair
- Basta interromper a execução do script com `Ctrl+C` ou sair da sessão do terminal.

---

<p align="center">
Made with ❤️ by <a href="https://github.com/is4bel4">Is4bel4</a>
</p>
#!/bin/bash

# Script de inicialização do OpenWRT no QEMU
# Autor: PunkLua
# Data: 03/01/2025

# Verifica se está rodando como root
if [ "$EUID" -ne 0 ]; then
    echo "Por favor, execute como root (sudo)"
    exit 1
fi

# Verifica se o QEMU está instalado, baseado no OS
if ! command -v qemu-system-x86_64 &> /dev/null; then
    echo "QEMU não está instalado. Instalando..."
    if [[ -f /etc/arch-release ]]; then
        pacman -S --noconfirm qemu
    elif [[ "$OSTYPE" == "linux-gnu" ]]; then
        apt-get update
        apt-get install -y qemu-system-x86
    elif [[ "$OSTYPE" == "linux-musl" ]]; then
        apk add qemu-system-x86
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install qemu
    else
        echo "Sistema operacional não suportado para instalação do QEMU"
        exit 1
    fi
fi

# Verifica se o caminho da imagem do OpenWRT foi passado como argumento
if [ $# -eq 1 ]; then
    IMAGE_PATH="$1"
else
    read -p "Insira o caminho da imagem do OpenWRT: " IMAGE_PATH
fi

# Verifica se a imagem existe
if [ ! -f "$IMAGE_PATH" ]; then
    echo "Imagem do OpenWRT não encontrada em $IMAGE_PATH"
    exit 1
fi

# Função para iniciar o OpenWRT
start_openwrt() {
    echo "Iniciando OpenWRT..."
    qemu-system-x86_64 \
    -m 256M \
    -net nic,model=virtio \
    -net user \
    -net nic,model=virtio \
    -net user \
    -drive file="$IMAGE_PATH",format=raw \
    -nographic
}

# Instruções para o usuário
echo "OpenWRT será iniciado no QEMU"
echo "Para sair: pressione Ctrl+A, depois X"
echo "Após iniciar, execute:"
echo "- ip route add default via 10.0.2.2 dev eth1 (se necessário)"
echo "- ping 8.8.8.8 (para testar conectividade)"
echo ""
echo "Iniciando em 5 segundos..."
sleep 5

# Inicia o OpenWRT
start_openwrt
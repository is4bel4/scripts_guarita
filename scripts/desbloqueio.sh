#!/bin/sh

if [ "$EUID" -ne 0 ]; then
    echo "Por favor, execute como admin"
    exit
fi

backup_regras() {
    nft list ruleset > /tmp/nft_backup_$(date +%Y%m%d_%H%M%S).rules
    echo "Backup das regras atual criado"
}

# Função para desbloquear redes sociais
desbloquear_redes() {
    # Limpa regras existentes
    nft flush ruleset
    
    # Cria nova tabela e regras com política padrão ACCEPT
    nft add table inet filter
    nft add chain inet filter input { type filter hook input priority 0 \; policy accept \; }
    nft add chain inet filter output { type filter hook output priority 0 \; policy accept \; }
    nft add chain inet filter forward { type filter hook forward priority 0 \; policy accept \; }
}    

# Função para bloquear pornografia
bloquear_pornografia() {
    # Lista de IPs de sites pornográficos
    nft add rule inet filter output ip daddr 66.254.114.0/24 drop  # pornhub
    nft add rule inet filter output ip daddr 185.88.181.0/24 drop  # xvideos
    nft add rule inet filter output ip daddr 104.18.0.0/16 drop    # xnxx
    nft add rule inet filter output ip daddr 104.16.0.0/16 drop    # outros sites adultos
    echo "Sites pornográficos bloqueados!"
}
backup_regras
desbloquear_redes
bloquear_pornografia

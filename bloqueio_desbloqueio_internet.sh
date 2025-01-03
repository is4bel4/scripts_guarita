#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    echo "Por favor querida, execute como admin"
    exit
fi
backup_regras() {
    nft list ruleset > /tmp/nft_backup_$(date +%Y%m%d_%H%M%S).rules
    echo "Backup das regras atual criado"
}
# Função para bloquear internet
bloquear_internet() {
    # Limpa regras existentes
    nft flush ruleset
    
    # Cria nova tabela e regras
    nft add table inet filter
    nft add chain inet filter input { type filter hook input priority 0 \; policy drop \; }
    nft add chain inet filter output { type filter hook output priority 0 \; policy drop \; }
    nft add chain inet filter forward { type filter hook forward priority 0 \; policy drop \; }
    
    # Permite acesso local (importante!)
    nft add rule inet filter input iif lo accept
    nft add rule inet filter output oif lo accept
    
    echo "Internet bloqueada!"
}

# Função para desbloquear internet
desbloquear_internet() {
    nft flush ruleset
    nft add table inet filter
    nft add chain inet filter input { type filter hook input priority 0 \; policy accept \; }
    nft add chain inet filter output { type filter hook output priority 0 \; policy accept \; }
    nft add chain inet filter forward { type filter hook forward priority 0 \; policy accept \; }
    echo "Internet desbloqueada!"
}
#!/bin/sh

if [ "$EUID" -ne 0 ]; then
    echo "Por favor, execute como admin"
    exit
fi

backup_regras() {
    nft list ruleset > /tmp/nft_backup_$(date +%Y%m%d_%H%M%S).rules
    echo "Backup das regras atual criado"
}

# Função para bloquear redes sociais
bloquear_redes() {
    # Limpa regras existentes
    nft flush ruleset
    
    # Cria nova tabela e regras
    nft add table inet filter
    nft add chain inet filter input { type filter hook input priority 0 \; policy drop \; }
    nft add chain inet filter output { type filter hook output priority 0 \; policy drop \; }
    nft add chain inet filter forward { type filter hook forward priority 0 \; policy drop \; }
    
    # Permite acesso local
    nft add rule inet filter input iif lo accept
    nft add rule inet filter output oif lo accept
    
    # Libera WhatsApp (sempre)
    nft add rule inet filter output ip daddr 157.240.0.0/16 accept
    nft add rule inet filter output ip daddr 31.13.0.0/16 accept
    nft add rule inet filter input ip saddr 157.240.0.0/16 accept
    nft add rule inet filter input ip saddr 31.13.0.0/16 accept

    
    echo "Internet bloqueada! Whatsapp liberado!"
}
backup_regras
bloquear_redes
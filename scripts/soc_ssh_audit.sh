#!/bin/bash
# ==============================================================================
# Nome: soc_ssh_audit.sh
# Descrição: Analisa logs do sistema em busca de tentativas falhas de login SSH
# Autor: Igor Damasio
# ==============================================================================

LOG_FILE="/var/log/auth.log"

echo "=================================================="
echo "SOC N1 - RELATÓRIO DE AUDITORIA SSH"
echo "Data do Relatório: $(date '+%Y-%m-%d %H:%M:%S')"
echo "=================================================="
echo ""

# Verifica se o arquivo de log existe no sistema
if [ ! -f "$LOG_FILE" ]; then
    echo "[!] Arquivo $LOG_FILE não encontrado. Tentando extrair do journalctl..."
    journalctl -u ssh --since "24 hours ago" | grep "Failed password" > /tmp/ssh_failed_temp.log
    LOG_FILE="/tmp/ssh_failed_temp.log"
fi

# Contagem total de falhas
TOTAL_FAILED=$(grep -c "Failed password" "$LOG_FILE" 2>/dev/null)
echo "► Total de tentativas falhas encontradas: $TOTAL_FAILED"
echo ""

if [ "$TOTAL_FAILED" -gt 0 ]; then
    echo "Top 5 IPs atacantes (Endereços que mais tentaram autenticar):"
    echo "--------------------------------------------------------"
    grep "Failed password" "$LOG_FILE" | awk '{
        for(i=1;i<=NF;i++) if ($i=="from") print $(i+1)
    }' | sort | uniq -c | sort -nr | head -n 5
    echo "--------------------------------------------------------"
else
    echo "Nenhuma tentativa de força bruta detectada no período."
fi

# Limpeza de arquivo temporário se gerado
[ -f /tmp/ssh_failed_temp.log ] && rm /tmp/ssh_failed_temp.log

echo ""
echo "=================================================="

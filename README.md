# Portfólio de Cibersegurança - Blue Team & SOC

Bem-vindo ao meu portfólio de Cibersegurança! Este repositório é dedicado a documentar meus laboratórios práticos, automações em Shell Script, análises de logs e resoluções de casos no contexto de **Defesa Cibernética e Operações de SOC (Nível 1)**.

----------------------------------------------------------------------------------------------------------------------------

## Sobre Mim
* **Formação:** Tecnólogo em Segurança da Informação.
* **Base Técnica:** Formação técnica em Redes de Computadores, Sistemas Operacionais e Manutenção pelo IFBA.
* **Foco Profissional:** Operações de SOC, Resposta a Incidentes, Monitoramento (SIEM/EDR), Hardening e Segurança de Redes.
* **Plataformas de Prática:** LetsDefend, TryHackMe e Laboratórios Locais no VirtualBox.

----------------------------------------------------------------------------------------------------------------------------

## Laboratórios Práticos (Homelab)

### [Lab 01] Segurança de Perímetro e Proteção de Rede (Cisco ASA)
* **Categoria:** Segurança de Perímetro e Arquitetura de Redes
* **Ambiente de Simulação:** Cisco Packet Tracer
* **Ferramentas Utilizadas:** Cisco ASA 5506-X, Roteadores Cisco 2911, Switches, Servidores e Endpoints.
* **Descrição do Projeto:**
  * Modelagem e implementação de arquitetura de rede corporativa segmentada utilizando o firewall de borda Cisco ASA.
  * Configuração de interfaces e definição de zonas de segurança (Inside, Outside e DMZ).
  * Criação e validação de Políticas de Controle de Acesso (ACLs) para inspeção e bloqueio de tráfego não autorizado.
* **Principais Aprendizados:**
  * Entendimento prático do fluxo de pacotes através de um firewall estado da arte (Stateful Firewall).
  * Aplicação de regras de NAT (Network Address Translation) e filtragem de tráfego de entrada e saída.

----------------------------------------------------------------------------------------------------------------------------

### [Lab 02] Infraestrutura Defensiva Multicamada: Firewall, IDS/IPS, WAF e SIEM
* **Categoria:** Monitoramento, SIEM & Detecção de Intrusão
* **Ambiente de Virtualização:** Oracle VirtualBox
* **Ferramentas Utilizadas:** pfSense (Firewall), Snort (IDS/IPS), Web Application Firewall (WAF), Graylog (SIEM/Log Management), Debian Linux.
* **Descrição do Projeto:**
  * Construção de uma arquitetura defensiva em profundidade (*Defense-in-Depth*) conectando múltiplas máquinas virtuais em rede interna isolada.
  * Implementação do **pfSense** como gateway e firewall de borda integrando o módulo **Snort** para detecção e prevenção de intrusões (IDS/IPS).
  * Configuração de um **WAF** dedicado para proteção da camada de aplicação contra ataques web.
  * Centralização e consolidação de logs de eventos de toda a infraestrutura em um servidor **Graylog** (SIEM).
* **Principais Aprendizados:**
  * Leitura, parseamento e análise de logs em tempo real centralizados no Graylog.
  * Ajuste de regras de assinaturas no Snort para identificação de tráfego anômalo e tentativas de exploração.
  * Entendimento prático de como logs de rede e de aplicação se correlacionam durante um incidente.

----------------------------------------------------------------------------------------------------------------------------

### [Lab 03] Administração Linux, Gestão de Permissões e Automação (Shell Scripting)
* **Categoria:** Administração de Sistemas & Automação para Segurança
* **Ambiente de Virtualização:** Oracle VirtualBox
* **Ferramentas Utilizadas:** Ubuntu Linux, Bash / Shell Scripting, CLI (Linter, GNU Coreutils).
* **Descrição do Projeto:**
  * Configuração de ambiente de testes e estudos em distribuição Linux baseada em Debian (Ubuntu).
  * Gestão avançada de sistema de arquivos, usuários, grupos e permissões de segurança (`chmod`, `chown`, heranças de acesso).
  * Desenvolvimento de scripts em Bash (`log_system.sh`, `formulas.sh`, `certificacao.sh`) para automação de rotinas de auditoria, verificação de integridade e coleta de dados do sistema.
* **Principais Aprendizados:**
  * Manipulação avançada do terminal Linux e utilitários de texto (`grep`, `awk`, `nano`) para auditoria interna.
  * Criação de automações executáveis em Shell Script para otimizar tarefas repetitivas de análise de logs e relatórios operacionais.

----------------------------------------------------------------------------------------------------------------------------

## ## Scripts e Automação (Bash / Shell Scripting)

| Script | Categoria | Descrição |
| :--- | :--- | :--- |
| [`soc_ssh_audit.sh`](scripts/soc_ssh_audit.sh) | **Análise de Logs** | Varre logs do sistema em busca de falhas de autenticação SSH e identifica IPs realizando ataques de força bruta. |
| [`soc_triage.sh`](scripts/soc_triage.sh) | **Resposta a Incidentes** | Coleta artefatos em tempo real (conexões de rede ativas, portas abertas, processos e usuários) para triagem rápida de alertas. |

----------------------------------------------------------------------------------------------------------------------------

## Resoluções de Casos e Investigações (Write-ups)

* **LetsDefend - Incident Investigation:** — *Investigação de alerta de phishing e isolamento de endpoint.*
* **TryHackMe - SOC Level 1:** — *Análise de tráfego de rede utilizando Wireshark.*

----------------------------------------------------------------------------------------------------------------------------

## Contato & Conexões
* **LinkedIn:** 
* **Email:** igor.damasio52@gmail.com

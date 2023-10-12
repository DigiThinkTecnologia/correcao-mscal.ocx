# Correção erro MSCAL.OCX - Windows 10/11

Este script foi desenvolvido para corrigir a ausência do arquivo `MSCAL.OCX` no Windows 10/11,adicionando o arquivo na origem e fazendo automaticamente o seu registro no sistema operacional.  
As recentes atualizações do Windows Defender têm removido o arquivo da pasta C:\Windows\SysWOW64.  
Alguns programas legados (por exemplo, aplicações em VB6, office 2003 entre outros)  utilizam esse arquivo que por sua vez contém bibliotecas  necessárias para exibir componentes de formulários na tela.

## 🚀 Como Usar
1. Clone o repositório ou baixe o ZIP.
2. Extraia os arquivos para um diretório de sua escolha.
3. Execute o script `correcao-mscal.bat` como administrador.
4. Acompanhe as instruções na tela.

## 🔍 O Que o Script Faz

1. Desativa o Windows Defender.
2. Copia o arquivo `MSCAL.OCX` para `C:\Windows\SysWOW64`.
3. Confirma a existência do arquivo.
4. Registra o arquivo OCX usando `regsvr32`.
5. Verifica se o arquivo foi registrado com sucesso.
6. Adiciona uma exceção para o arquivo no Windows Defender.
7. Reativa o Windows Defender.

## ⚠️ Considerações

- É importante ter privilégios de administrador ao executar o script.
- O script foi testado e funciona em determinadas versões do Windows. Se você encontrar problemas em outras versões, por favor, abra uma issue.
- Desative temporariamente outros softwares antivírus que não sejam o Windows Defender para garantir a execução correta do script.

## 🤝 Contribuições

Sinta-se à vontade para contribuir com melhorias ou correções para este script. Todas as contribuições são bem-vindas!

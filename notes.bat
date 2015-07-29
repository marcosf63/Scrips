@ECHO OFF
REM Ler o Notes ini  e vefirica a versao do notes

REM mapea o drive m para a pasta VersaoNOtes no suporte da DRFSOB e manda a saida para null.txt
net use m: \\10.53.52.6\suporte$\VersaoNotes > null.txt

REM Define o caminho do notes ini na máquina do usuário
SET caminho=%USERPROFILE%\AppData\Local\Lotus\Notes\Data\notes.ini

REM Procura e versao do notes do notes.ini e grava no notes.txt versao e nome da maquina
findstr "^FaultRecovery_Build=.*" %caminho% >> m:\notes.txt && echo %ComputerName% >> m:\notes.txt

REM delta null txt.
del null.txt

CDIS users vypis do excelu
Excel s aktuálním výpisem uživatelù a oprávnìní do projektu CDIS je zde:

H:\orga\DQAI\_shared\CDIS\CDISUsers.xlsx


Pro aktualizaci se používá SQL dotaz který je ve dvou Power Shell skriptech:

SQL DB:
servername e4tprvdbprod.e4t.skoda.vwg
database: CDIS
Table: CDISUsers
Vzdálenou plochou se pøipojit do REDNET 192.168.1.61 (DQATPRVREDAD na PRS5) a v c:\data\cdis jsou 2 scripty

1) spustit Powershell zalozuzivatele.ps1 as administrator, výsledek zkopírovat a vložit do SQL bìžící na e4tprvdbprod.e4t.skoda.vwg a spustit query v databazi CDIS - to založí uživatele

2) spustit Powershell UpdateUzivatele.ps1 as administrator, výsledek zkopírovat a vložit do SQL bìžící na e4tprvdbprod.e4t.skoda.vwg a spustit query v databazi CDIS - to uživatelùm pøiøadí pøíslušnost ke skupinám - pozor zde vypustit skupinu CDIS_ALL


Excelový sešit:

1) Otevøít Excelový dokument H:\orga\DQAI\_shared\CDIS\CDISUsers.xlsx

2) pøejít na list DB (nebo List2) a kliknout doprostøed tabulky s uživateli pravým tlaèítkem myši

3) zvolit obnovit - Povolit hlášky ohlednì pøipojení k DB

V pøípadì, že nefunguje zdroj dat, udìlat nový, na server a databazi viz výše a dat SQL ze souboru C:\data\CDIS\SQL.txt na serveru DQATPRVREDAD 
4) dále vyfiltrovat jen sloupec enabled na hodnotu True

5) Zkopírovat sloupce A2 (Name) až po sloupec superior do listu Celek

6) Uložit
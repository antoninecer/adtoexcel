CDIS users vypis do excelu
Excel s aktu�ln�m v�pisem u�ivatel� a opr�vn�n� do projektu CDIS je zde:

H:\orga\DQAI\_shared\CDIS\CDISUsers.xlsx


Pro aktualizaci se pou��v� SQL dotaz kter� je ve dvou Power Shell skriptech:

SQL DB:
servername e4tprvdbprod.e4t.skoda.vwg
database: CDIS
Table: CDISUsers
Vzd�lenou plochou se p�ipojit do REDNET 192.168.1.61 (DQATPRVREDAD na PRS5) a v c:\data\cdis jsou 2 scripty

1) spustit Powershell zalozuzivatele.ps1 as administrator, v�sledek zkop�rovat a vlo�it do SQL b��c� na e4tprvdbprod.e4t.skoda.vwg a spustit query v databazi CDIS - to zalo�� u�ivatele

2) spustit Powershell UpdateUzivatele.ps1 as administrator, v�sledek zkop�rovat a vlo�it do SQL b��c� na e4tprvdbprod.e4t.skoda.vwg a spustit query v databazi CDIS - to u�ivatel�m p�i�ad� p��slu�nost ke skupin�m - pozor zde vypustit skupinu CDIS_ALL


Excelov� se�it:

1) Otev��t Excelov� dokument H:\orga\DQAI\_shared\CDIS\CDISUsers.xlsx

2) p�ej�t na list DB (nebo List2) a kliknout doprost�ed tabulky s u�ivateli prav�m tla��tkem my�i

3) zvolit obnovit - Povolit hl�ky ohledn� p�ipojen� k DB

V p��pad�, �e nefunguje zdroj dat, ud�lat nov�, na server a databazi viz v��e a dat SQL ze souboru C:\data\CDIS\SQL.txt na serveru DQATPRVREDAD 
4) d�le vyfiltrovat jen sloupec enabled na hodnotu True

5) Zkop�rovat sloupce A2 (Name) a� po sloupec superior do listu Celek

6) Ulo�it
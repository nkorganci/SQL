*** https://www.postgresqltutorial.com/psql-commands/

1- PSQL ile PostgreSQL'e bağlanmak.
psql -U <kullanıcı_adı>
2- Kullanıcıya ait şifreyi girdikten sonra varsayılan veritabanı postgres'e bağlanıyor.
postgres=#
3- Bulunan veritabanlarını listelemek için:
\l veya \list
4- Bizim örneğimizde dvdrental veritabanına bağlanacağız.
\c dvdrental veya \connect dvdrental
5- Bağlanılan dvdrental veritabanında bulunan tabloları listelemek için:
\dt
6- Herhangi bir tablonun sütunlarını ve tablo detaylarını görmek için:
\d <tablo_adı>


1-\dt--> shows tables
2-\d actor --> shows columns at table
3-\c dvdrental --> connect to database
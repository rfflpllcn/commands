create database bookstorerp;
create user rp@localhost identified by 521978;
grant all on bookstorerp.* to "rp"@"localhost";
flush privileges;

sudo mysql -u rp -p bookstorerp < bookDB.sql

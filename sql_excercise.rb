require 'sqlite3'

if File.exists?("maindata.db")
  File.delete("maindata.db")
end

db= SQLite3::Database.new("maindata.db")
db.execute <<-SQL
  create table users(
  id integer primary key,
  email varchar,
  password varchar);
 SQL

 db.execute("insert into users(email, password) values(?, ?)", ["bob@gmail.com", "pas231"]);
 db.execute("insert into users(email, password) values(?, ?)", ["anb@gmail.com", "pts231"]);
 db.execute("insert into users(email, password) values(?, ?)", ["trob@gmail.com", "gjas231"]);
 db.execute("insert into users(email, password) values(?, ?)", ["bhtb@gmail.com", "cdbbas231"]);
 db.execute("insert into users(email, password) values(?, ?)", ["tybob@gmail.com", "hhas231"]);
 db.execute("insert into users(email, password) values(?, ?)", ["ujbob@gmail.com", "rfas231"]);
 
my_array= db.execute ("SELECT * FROM USERS;")
puts my_array
 
 
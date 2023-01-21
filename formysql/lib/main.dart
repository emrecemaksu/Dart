import 'dart:async';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  //My SQL Bağlantısı
  var conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'androaic_dbEmre1',
    db: 'androai_formysql1',
    password: 'Sifre.123'
  ));

  // Tablo Yaratma
  await conn.query(
      'CREATE TABLE users (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255), email varchar(255), age int)');

  // Tabloya Data ekleme
  var result = await conn.query(
      'insert into users (name, email, age) values (?, ?, ?)',
      ['Bob', 'bob@bob.com', 25]);
  print('Inserted row id=${result.insertId}');

  // Verileri parametreleriyle birlikte çekme
  var results = await conn.query(
      'select name, email, age from users where id = ?', [result.insertId]);
  for (var row in results) {
    print('Name: ${row[0]}, email: ${row[1]} age: ${row[2]}');
  }

  // Veriyi güncelleme
  await conn.query('update users set age=? where name=?', [26, 'Bob']);

  // Güncellenen veriyi tekrar çekme.
  var results2 = await conn.query(
      'select name, email, age from users where id = ?', [result.insertId]);
  for (var row in results2) {
    print('Name: ${row[0]}, email: ${row[1]} age: ${row[2]}');
  }

  // Bağlantıyı kapatma.
  await conn.close();
}
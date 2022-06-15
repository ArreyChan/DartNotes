// import 'lib/Mysql.dart';
import 'lib/MsSql.dart';

main() {
  // Mysql mysql=new Mysql('xxxxxx');

  // mysql.add('1243214');

  MsSql mssql = new MsSql();
  mssql.uri = '127.0.0.1';

  mssql.add('errui');
}

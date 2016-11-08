class Star
{
 int Hab;
 String name;
 float distance;
 float Xg, Yg, Zg;
 float size;
  
  Star(TableRow row)
  {
    Hab = row.getInt(1);
    name = row.getString(2);
    distance = row.getFloat(11);
    Xg = row.getFloat(12);
    Yg = row.getFloat(13);
    Zg = row.getFloat(14);
    size = row.getFloat(15);
  }
  
}
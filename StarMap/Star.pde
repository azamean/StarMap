class Star
{
 int Hab;
 String name;
 float distance;
 float Xg, Yg, Zg;
 float size;
  
  Star(TableRow row)
  {
    Hab = row.getInt(2);
    name = row.getString(3);
    distance = row.getFloat(12);
    Xg = row.getFloat(13);
    Yg = row.getFloat(14);
    Zg = row.getFloat(15);
    size = row.getFloat(16);
  }
  
}
//Student number: C15519493
//Student name: Marcus O'Byrne

ArrayList<Star> data = new ArrayList<Star>();

void setup()
{
  size(800,800);
  loadData();
  printStars();
}

void loadData()
{
  data.clear();
  
  Table t = loadTable("HabHYG15ly.csv");
  for(int i = 0; i < t.getRowCount(); i++)
  {
    TableRow row = t.getRow(i);
    Star stars = new Star(row);
    data.add(stars);
  }
  
}

void printStars()
{
   for(Star stars:data)
  {
    print("Habitable: " + stars.Hab + " Star name: " + 
    stars.name + " Distance: " + stars.distance + " Co-ords: X: " + 
    stars.Xg+" Y: " +stars.Yg+" Z: " + stars.Zg+ " Size: " + stars.size);
    print("\n");
  }
  
}

void draw()
{
 
  
}
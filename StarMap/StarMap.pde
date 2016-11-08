//Student number: C15519493
//Student name: Marcus O'Byrne

ArrayList<Star> data = new ArrayList<Star>();

void setup()
{
  size(800,800);
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

void draw()
{
  
  
}
//Student number: C15519493
//Student name: Marcus O'Byrne

ArrayList<Star> data = new ArrayList<Star>();
int border = 50;

void setup()
{
  background(0);
  size(800,800);
  loadData();
  printStars();
  drawGrid();
}
void draw()
{
 
 
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
void drawGrid()
{
  stroke(123,38,140);
 for(int i = 0; i < width; i++) line(i*border, 50, i*border, (height - 50)); 
 for(int i = 0; i < height; i++) line(50, i*border, width - 50, i*border);
  
  float num = -5;
  float pos = 0;
 for(int i = 0; i < 11; i++)
 {
   pos = pos + 65;
   fill(123,38,140);
   text(num, pos, 20);   
   num = num + 1;
 }
 num = -5;
 pos = 0;
  for(int i = 0; i < 11; i++)
 {
   pos = pos + 65;
   fill(123,38,140);
   text(num, 10, pos);   
   num = num + 1;
 }
}
//Student number: C15519493
//Student name: Marcus O'Byrne


//Declare ArrayList of type Star
ArrayList<Star> data = new ArrayList<Star>();
int border = 50;

//Setup 
void setup()
{
  background(0); //Set BG to black
  size(800,800); //Initialise screen
  loadData(); //Call loadData method
  printStars(); //Call printStars method
  drawGrid(); //Draw the grid
  drawStars(); //Draw stars 
}
void draw()
{
 
 
}

void loadData()
{
  data.clear();
  
  Table t = loadTable("HabHYG15ly.csv"); //Load table from .csv file
  for(int i = 0; i < t.getRowCount(); i++) //Iterate through tablerow method adding specified fields
  {
    TableRow row = t.getRow(i);
    Star stars = new Star(row);
    data.add(stars); //add to arraylist
  }
  
}

void printStars()
{
   for(Star stars:data) //foreach loop
  { //Print the contents of arraylist to screen
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

void drawStars()
 {

   
   stroke(100,100,100);
   strokeWeight(10);

     /* One attempt at trying...
         Table t = loadTable("HabHYG15ly.csv");
         
          for(int i = 0; i < t.getRowCount(); i++)
          {
            TableRow row = t.getRow(i);
            Star stars = new Star(row);
            data.add(stars);
            point(stars.Xg, stars.Yg);
          }
     */
   /* Second failed attempt to print stars
     Table t = loadTable("HabHYG15ly.csv");
     for(int i= 0; i <data.size(); i++)
     {
       stroke(100,100,100);
       strokeWeight(10);
       TableRow row = t.getRow(i);
       Star stars = new Star(row);
       point(stars.Xg, stars.Yg);
     }
   */
   
     /* Still couldn't get it to work in time, sorry
      int l = data.size();
     float[] x = new float[l];
     
     for (int i = 0; i < l; i++) {
        x[i] = stars.get(Xg).floatValue();
      }
  */
 }
 

 
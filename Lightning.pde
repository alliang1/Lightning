int startX = (int)(Math.random()*80)+230;
int startY = 0;
int endX = (int)(Math.random()*10)+250;
int endY = 460;
int yeet = 0;

void setup()
{
  size(500,500);
  strokeWeight(3);
  background(#989898);
}
void draw()
{
  //println(mouseX,mouseY);
  //yellow color
  int col = (int)(Math.random()*255)+150;
  stroke(col,col,0);
 
  //thingy
  while (endY <= 460){
    endY = startY + (int)(Math.random()*15);
    endX = startX + (int)(Math.random()*18)-9;
    
  //kinda guides the lightning thing 
    if (endY > 300 && endX > 300){
      endX = startX + (int)(Math.random()*19)-19;}
    else if (endY > 300 && endX < 200){
      endX = startX + (int)(Math.random()*19)+19;}  
    else if (endY > 450 && endX > 260){
      endX = startX + (int)(Math.random()*19)-25;}
    else if (endY > 450 && endX < 240){
      endX = startX + (int)(Math.random()*19)+19;}       
      
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    
   
   
  }
  //copper
  fill(#F2731D);
  noStroke();
  ellipse(250,470,30,30);
  rect(245,480,10,20);
  fill(255);
  ellipse(255,460,5,5);
  noFill();
  stroke(255);
  arc(248,470,20,20,PI,3*PI/2);
  
 //clouds
 noStroke();
 
 fill(#E5E5E5);
 ellipse(250,50,250,150);
 ellipse(400,30,250,150);
 ellipse(100,30,250,150);
 ellipse(500,40,100,150);
 fill(#F7F7F7);
 ellipse(250,50,250,110);
 ellipse(400,30,250,110);
 ellipse(100,30,250,110);
 ellipse(500,40,100,110);
}
void mousePressed()
{
int counter = (int)(Math.random()*15);
startX = (int)(Math.random()*80)+230;
startY = 0;
endX = (int)(Math.random()*10)+250;
endY = 460;
//lightning flash kinda
if (counter == 3)
  background(#D6D6D6);



////to not have too much lines on screen
yeet = yeet + 1;
if (yeet > 6 ){
  fill(#989898);
  noStroke();
  rect(0,0,500,500);
  yeet = 0;}
System.out.println(yeet + " " + counter);
}


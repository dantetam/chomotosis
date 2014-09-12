 //Ofri Harlev, AP Comp Sci 1,mods 6/7
 //http://ofri-schoolwork.webs.com/chomotosis.html
 Bacteria[] bob;
 double biasL=3.01;
 double biasS=2.99;
void setup()
{
  frameRate(200);
  size(600,600);
  smooth();
  background(0);
  noStroke();
 bob = new Bacteria[1000];
  for(int i=0;i<bob.length;i++)
  {
    bob[i]=new Bacteria();
  }
}
void draw()
{
  fill(0,0,0,2);
  rect(0,0,600,600);
  for(int i=0;i<bob.length;i++)
  {
  bob[i].move();
  bob[i].place();
  }

}

class Bacteria
{
  float x;
  float y;
  int r;
  int g;
  int b;
  
  Bacteria()
  {
    x=300;
    y=300;
    r=(int)(Math.random()*256);
    g=(int)(Math.random()*256);
    b=(int)(Math.random()*256);
    
  }
  
  void move()
  {
    if(mouseX<=x)
    x+=((Math.random())*6-biasL);
    else
    x+=((Math.random())*6-biasS);
    //println(x);
    if(mouseY<=y)
    y+=((Math.random())*6-biasL);
    else
    y+=((Math.random())*6-biasS);
  }
  void place()
  {
    fill(r,g,b);
    ellipse(x,y,10,10);
  }
}
  void changeBiasUp()
  {
    biasL+=0.1;
    biasS-=0.1;
  }
  void changeBiasDown()
  {
    biasL-=0.1;
    biasS+=0.1;    
  }


void mousePressed()
{
  if(mouseButton==LEFT)
  changeBiasUp();
  else
  changeBiasDown();
}

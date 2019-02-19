public void setup()
{
  size(600, 600);
}
int lenSize = 600;
int lenSize2 = 150;
int lensMax = lenSize / 60;
public void draw()
{
  background(0);
  sierpinski(0, 600, lenSize, lensMax);
  //sierpinski(0, 600, lenSize2, lenSize2 / 15);
  lenSize++;
  if(lenSize >= 1200){
    lenSize = 600;
  }
  if(lenSize2 >= 300){
    lenSize2 = 150;
  }
  lenSize++;
  if(lenSize >= 1200){
    lenSize = 600;
  }
  if(lenSize2 >= 300){
    lenSize2 = 150;
  }
  lenSize++;
  if(lenSize >= 1200){
    lenSize = 600;
  }
  if(lenSize2 >= 300){
    lenSize2 = 150;
  }
  lenSize++;
  lenSize2++;
  //println(lenSize);
  if(lenSize >= 1200){
    lenSize = 600;
  }
  if(lenSize2 >= 300){
    lenSize2 = 150;
  }
}
public void mouseDragged()//optional
{

}
public void sierpinski(double x, double y, double len, double lensMax) 
{
  if(len <= lensMax){  
    triangle((float)x, (float)y, (float)(x + len), (float)y, (float)(x + len / 2), (float)(y - len));
  }else{
    sierpinski(x, y, len / 2, lensMax);
    sierpinski(x + len / 2, y, len / 2, lensMax);
    sierpinski(x + len / 4, y - len / 2, len / 2, lensMax);
  }
}

public void setup()
{
  size(600, 600);
}
int lenSize = 600;
int lenSize2 = 150;
int lensMax = lenSize / 26;
public void draw()
{
  background(0);
  sierpinski(0, 600, lenSize, lensMax);
  lenSize++;
  if(lenSize == 1200){
    lenSize = 600;
  }
  background(0);
  sierpinski(0, 600, lenSize, lensMax);
  lenSize++;
  if(lenSize == 1200){
    lenSize = 600;
  }
  background(0);
  sierpinski(0, 600, lenSize, lensMax);
  lenSize++;
  println(lenSize);
  if(lenSize == 1200){
    lenSize = 600;
  }
}
public void mouseDragged()//optional
{

}
public void sierpinski(double x, double y, double len, double lensMax) {
  if(x > 600 || y  > 600){
  }
  else if(len <= lensMax){
    fill(255,255,255);
    triangle((float)x, (float)y, (float)(x + len), (float)y, (float)(x + len / 2), (float)(y - len));
  }else{
    sierpinski(x, y, len / 2, lensMax);
    sierpinski(x + len / 2, y, len / 2, lensMax);
    sierpinski(x + len / 4, y - len / 2, len / 2, lensMax);
  }
}
public class Tri{
  color myColor;
  public Tri(int r, int g, int b){
    myColor = color(r,g,b);
  }
  public color getColor(){
    return myColor;
  }
  public void setColor(color colo){
    myColor = colo;
  }
}

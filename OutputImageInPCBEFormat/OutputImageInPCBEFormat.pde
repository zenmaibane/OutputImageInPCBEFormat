final Layer Layer0 =new Layer(color(255, 255, 255), new int[] {0}); //<>//
final Layer Layer1 =new Layer(color(255, 0, 0), new int[] {1});
final Layer Layer2 =new Layer(color(0, 255, 0), new int[] {2});
final Layer Layer3 =new Layer(color(255, 255, 0), new int[] {3});
final Layer Layer4 =new Layer(color(255, 0, 255), new int[] {4});
final Layer Layer5 =new Layer(color(0, 255, 255), new int[] {5});
final Layer Layer6 =new Layer(color(0, 0, 255), new int[] {6}); 
final Layer Layer7 =new Layer(color(192, 0, 0), new int[] {7}); 
final Layer Layer8 =new Layer(color(0, 192, 0), new int[] {8}); 
final Layer Layer9 = new Layer(color(0, 0, 192), new int[] {9});
final Layer Layer10 = new Layer(color(192, 192, 0), new int[] {10});
final Layer Layer11 = new Layer(color(192, 0, 192), new int[] {11});
final Layer Layer12 = new Layer(color(0, 192, 192), new int[] {12});
final Layer Layer13 = new Layer(color(128, 128, 0), new int[] {13});
final Layer Layer14 = new Layer(color(128, 0, 128), new int[] {14});
final Layer Layer15 = new Layer(color(0, 128, 128), new int[] {15});
final Layer Layer16 =new Layer(color(255, 192, 0), new int[] {1, 8});
final Layer Layer17 =new Layer(color(255, 0, 192), new int[] {1, 9});
final Layer Layer18 =new Layer(color(255, 192, 192), new int[] {1, 12});
final Layer Layer19 =new Layer(color(255, 128, 0), new int[] {1, 13});
final Layer Layer20 =new Layer(color(255, 0, 128), new int[] {1, 14});
final Layer Layer21 =new Layer(color(255, 128, 128), new int[] {1, 15});
final Layer Layer22 =new Layer(color(192, 255, 0), new int[] {2, 7}); 
final Layer Layer23 =new Layer(color(0, 255, 192), new int[] {2, 9}); 
final Layer Layer24 =new Layer(color(192, 255, 192), new int[] {2, 11}); 
final Layer Layer25 =new Layer(color(128, 255, 0), new int[] {2, 13}); 
final Layer Layer26 =new Layer(color(128, 255, 128), new int[] {2, 14}); 
final Layer Layer27 =new Layer(color(0, 255, 128), new int[] {2, 15}); 
final Layer Layer28 =new Layer(color(255, 255, 192), new int[] {2, 1, 9}); 
final Layer Layer29 =new Layer(color(255, 255, 128), new int[] {2, 1, 14}); 
final Layer Layer30 = new Layer(color(192, 0, 255), new int[] {3, 17});
final Layer Layer31 = new Layer(color(0, 192, 255), new int[] {3, 8});
final Layer Layer32 =new Layer(color(192, 192, 255), new int[] {3, 10});
final Layer Layer33 =new Layer(color(128, 128, 255), new int[] {3, 13});
final Layer Layer34 =new Layer(color(128, 0, 255), new int[] {3, 14});
final Layer Layer35 =new Layer(color(0, 128, 255), new int[] {3, 15});
final Layer Layer36 =new Layer(color(255, 192, 255), new int[] {3, 1, 8});
final Layer Layer37 =new Layer(color(255, 128, 255), new int[] {3, 1, 13});
final Layer Layer38 = new Layer(color(192, 255, 255), new int[] {3, 2, 7});
final Layer Layer39 = new Layer(color(128, 255, 255), new int[] {3, 2, 13});
final Layer Layer40 = new Layer(color(192, 192, 192), new int[] {7, 12});
final Layer Layer41 = new Layer(color(192, 128, 128), new int[] {7, 15});
final Layer Layer42 = new Layer(color(192, 255, 128), new int[] {7, 2, 15});
final Layer Layer43 =new Layer(color(192, 128, 255), new int[] {7, 3, 15}); 
final Layer Layer44 = new Layer(color(128, 192, 128), new int[] {8, 14});
final Layer Layer45 = new Layer(color(255, 192, 128), new int[] {8, 1, 14});
final Layer Layer46 = new Layer(color(128, 192, 255), new int[] {8, 3, 14});
final Layer Layer47 = new Layer(color(128, 128, 192), new int[] {9, 13});
final Layer Layer48 = new Layer(color(128, 255, 192), new int[] {9, 1, 13});
final Layer Layer49 = new Layer(color(128, 255, 192), new int[] {9, 2, 13});
final Layer LayerNull =new Layer(color(0, 0, 0), null); 
final Layer[] Layers = {Layer0, Layer1, Layer2, Layer3, Layer4, Layer5, Layer6, Layer7, Layer8, Layer9, Layer10, Layer11, Layer12, Layer13, Layer14, Layer15, 
  Layer16, Layer17, Layer18, Layer19, Layer20, Layer21, Layer22, Layer23, Layer24, Layer25, Layer26, Layer27, Layer28, Layer29, Layer30, Layer31, 
  Layer32, Layer33, Layer34, Layer35, Layer36, Layer37, Layer38, Layer39, Layer40, Layer41, Layer42, Layer43, Layer44, Layer45, Layer46, Layer47, 
  Layer48, Layer49, LayerNull};

PImage img_in;
PrintWriter lay0, lay1, lay2, lay3, lay4, lay5, lay6, lay7, lay8, lay9, lay10, lay11, lay12, lay13, lay14, lay15;
PrintWriter[] laygrb = {lay0, lay1, lay2, lay3, lay4, lay5, lay6, lay7, lay8, lay9, lay10, lay11, lay12, lay13, lay14, lay15};
String header, footer;
int[][] colorInfo;

boolean canOutputColor = false; 

public void settings() {
  header = "G71*G90*G75*D02*%ASAXBY*OFA0B0*MOMM*FSLAX43Y43*IPPOS*%%ADD11C,1.000*%G54D11*";
  for (int i = 0; i<laygrb.length; i++) {
    laygrb[i] = createWriter("lay"+i+".grb");
    laygrb[i].println(header);
  }
  footer = "M02*";
  img_in = loadImage("target.png");
  colorInfo = new int[img_in.height][img_in.width];
  noLoop();
}
public void draw() {
  img_in.loadPixels();
  for ( int y = 0; y < img_in.height; y++)
  {
    for ( int x = 0; x < img_in.width; x++)
    {
      int pos = x + y*img_in.width;
      colorInfo[y][x] = getcolorLayer(img_in.pixels[pos]);
    }
  }

  for (int y = 0; y < img_in.height; y++)
  {
    for (int x = 0; x < img_in.width; )
    { 
      int tempX = x;
      int[] writeLayer = Layers[colorInfo[y][x]].getLayers();
      if (writeLayer != null) {
        for (int i = 0; i<writeLayer.length; i++) {
          x= tempX;
          laygrb[writeLayer[i]].println("G01X"+x+"000Y"+(img_in.height-y)+"000D02*");
          while (x != img_in.width-1 && colorInfo[y][x] == colorInfo[y][x+1]) {
            x++;
          }
          x++;
          laygrb[writeLayer[i]].println("X"+x+"000Y"+(img_in.height-y)+"000D01*");
        }
      } else {
        while (x != img_in.width-1 && colorInfo[y][x] == colorInfo[y][x+1]) {
          x++;
        }
        x++;
      }
    }
  }
  for (int i = 0; i < laygrb.length; i++) {
    laygrb[i].println(footer);
    laygrb[i].flush();
    laygrb[i].close();
  }
  exit();
}

public int getcolorLayer(color col) {
  int red = (int)red(col);
  int green = (int)green(col);
  int blue = (int)blue(col);
  int layerNum = 0;
  if (canOutputColor) {
    int colorDistance = 999999999;
    for (int i = 0; i < Layers.length; i++) {
      int tempDistance = (int)((red - red(Layers[i].getCol())) * (red - red(Layers[i].getCol())) +
        (green - green(Layers[i].getCol())) * (green - green(Layers[i].getCol())) +
        (blue - blue(Layers[i].getCol())) * (blue - blue(Layers[i].getCol())));
      if (colorDistance > tempDistance) {
        colorDistance = tempDistance;
        layerNum = i;
      }
    }
  }else{
    if(red >= 40 && green >= 40 && blue >=40){
      layerNum = 50;
    }else{
      layerNum = 8;
    }
  }
  return  layerNum;
}
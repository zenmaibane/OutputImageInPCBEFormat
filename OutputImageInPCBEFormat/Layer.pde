public class Layer{
  int[] Layers;
  color col;
  Layer(color col,int[] Layers){
    this.col = col;
    this.Layers = Layers;
  }
   public int[] getLayers(){
     return Layers;
   }
   public color getCol(){
     return col;
   }
}
class Circulo{
    float h;
    float k;
    float dx, dy;
    float radio;
    int id;
    PFont fuente;
    boolean sigue;
    boolean mover;
    
    Circulo(float a, float b,float c,int d){
        ellipseMode(CENTER);
        h = a;
        k =b;
        radio = c;
        id = d;
        mover = false;
        dx = 0;
        dy = 0;
        sigue = false;
    }
    
    void dibujar(){
      fill(255);
       ellipse(h,k,2*radio, 2*radio);
       fill(0);
       text(""+id,h-7,k+7);
    }
    
    void dibujar(int color2){
      fill(color2);
       ellipse(h,k,2*radio, 2*radio);
       fill(0);
       text(""+id,h-7,k+7);
    }
    
    boolean isAdentro(float a, float b){
         float d = dist(h,k,a,b);
         if(d <= radio)
             return true;
          else
             return false;   
    }     
    
    boolean isCrash(Circulo a){
         float d = dist(h,k,a.h,a.k);
         float l = d - radio - a.radio;
         if(l <=0){
            return true;
         }
         else{
            return false;
         }
    }
    
    void moverXP(){
      if(sigue){
          if(h < width)
            h++;
          else
            h = 0;
        }
    }
    
}

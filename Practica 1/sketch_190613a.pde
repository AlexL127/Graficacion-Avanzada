import java.util.*;
PFont fuente;
Circulo Circulos[];
int id=0;

void setup(){
    Circulos = new Circulo[20]; 
    size(600,600);
    
    for(int i = 0; i < 20; i++){
      Circulos[i] = new Circulo(random(1,width),random(1,height),random(10,40),i);
    }
}

void draw(){
    background(0);
     for(int i = 0; i < 20; i++){
       Circulos[i].dibujar();
     }
}

void mousePressed(){ 
  
     for(int i = 19; i >= 0; i--){
         if(Circulos[i].isAdentro(mouseX,mouseY)){
           Circulos[i].mover = true;
           Circulos[i].dx = mouseX - Circulos[i].h;
           Circulos[i].dy = mouseY - Circulos[i].k;
           id = i;
           break;
         }
     }
}

void mouseDragged(){
    for(int i = 19; i > -1; i--){
          if(Circulos[i].isAdentro(mouseX, mouseY) && i == id){
                Circulos[i].h = mouseX - Circulos[i].dx;
                Circulos[i].k = mouseY - Circulos[i].dy;
               
          }
    }
}

class plataformas{
  float x;
  float y;
  float g;
  float l;
  float C;
  float vel;
  float limite=0;
  boolean spawn=true;
  float limites_x=110; //Limites para el spawn de las barras  
  float limite_y_arriba=height-300;
  float limite_y_abajo=200;  
   plataformas(){
    x=random(350,1280);
    y=random(-720,-120);
    g=random(50,100);
    l=random(20,30); 
  }
  
  void spawn_point(){
   fill (255); 
    rect(x,y,g,l);
    }
 //------------------------------------------------------- 
  void move(){
    x-=3;
    if (x<=limite){
     x=1290;
     y=random(-780,-120);
    }
  }
  

  
}

















class suelo{
  float x;
  float y;
  float g;
  float l=-150;
  suelo(float xt, float yt, float gt, float lt){
    x=xt;
    y=yt;
    g=gt;
    l=lt; 
  }  
  
  void spawn(){
    fill(255);
    rect(x,y,g,l);
    
    
  }
  
}





class Dreamer{
 float x;
 float y;
 float g;
 float l;
 float vel;
 boolean tecla=true; //para que el salto se haga una sola vez
 float salto=0;
 float base=0;
 boolean y_inicial=false; //guarda las coordenadas de y al saltar
 boolean abajo=false;
 Dreamer(float xt, float yt){
   x=xt;
   y=yt;
   
   
 }
 
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime); 
   translate(x,y);   
   S4P.drawSprites();        
    
     if (keyCode==RIGHT || keyCode==LEFT){    
  
       if (abs(y)-55<=150){  //Límtes del suelo
        y=-150;    
       }    
       if (x>width+55){
        x=-55; 
       }
       
       if(keyCode==RIGHT){
        x+=3;
       }
       if(keyCode==LEFT){
        x-=3;
       }   
       if(keyCode==UP){
        y-=3;
       }
       if(keyCode==DOWN){
        y+=3;
       }        
       
     }
     if(keyCode==BACKSPACE){
       print("s");
       if(tecla==true){
         while(y_inicial==false){
           salto=y-250; //altura del salto
           base=y; //limite inferior del salto
           y_inicial=true;
         }
         if (abajo==false){
             if(abs(y)<abs(salto)){
               y-=6;
             }
             else{
               abajo=true;
             }
         }
         if(abajo==true){
           if(abs(y)>=abs(base)){
             y+=6;
             if(y==base){
               y_inicial=false;
               print("d");
             }
           }
           else {
             print("ss");
             abajo=false;
             tecla=false; //no salta más
           }         
         }
       }
       if(keyPressed==true){
        tecla=true; 
       }
     }
   }
 
 
}

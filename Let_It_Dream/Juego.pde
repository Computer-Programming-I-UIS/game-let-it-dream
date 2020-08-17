class plataformas{
  float x;
  float y;
  float g;
  float l;
  float C;
  float vel;
  boolean spawn=true;
  float limites_x=110; //Limites para el spawn de las barras  
  float limite_y_arriba=height-300;
  float limite_y_abajo=200;  
  plataformas(float xt, float yt, float gt, float lt){
    x=xt;
    y=yt;
    g=gt;
    l=lt; 
  }
  
  void spawn_point(){
    if (spawn==true){           //Para la velocidad y posiciones de las plataformas
      vel=random(5,10);
      x=width+limites_x;
      y=-random(limite_y_abajo,limite_y_arriba);
      spawn=false;
    }
    fill(255);
    rect(x,y,g,l);
  }  
 //------------------------------------------------------- 
  void mov(){
    x-=vel;
    
    if (x<-limites_x){
     spawn=true;       
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
        x-=3;
       }
       if(keyCode==DOWN){
        x+=3;
       }        
       
     }
     
     if(keyCode==BACKSPACE){
       y-=4;
       x+=2;
       
       
       
     }
   }
 
 
}

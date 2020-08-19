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
    fill(0);
    rect(x,y,g,l);
    
    
  }
  
}





class Dreamer{
 float x;
 float y;
 float g;
 float l;
 float vel=3; //USSAR
 boolean tecla=true; //para que el salto se haga una sola vez
 float salto=0;
 float base=0;
 boolean y_inicial=false; //guarda las coordenadas de y al saltar
 boolean abajo=false;
 float a,b,c,d;
 Dreamer(float xt, float yt){
   x=xt;
   y=yt;

   
   
 }
 
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);    
    pushMatrix();  
    translate(x,y);
    Nix.draw();
    popMatrix();
//---------------------------------Mov

     if (keyCode==RIGHT || keyCode==LEFT){    

       if (abs(y)-55<=150){  //Límtes del suelo
        y=-80;    
       }    
       if (x>width+55){  //Límites de la pantalla horizontal TAL VEZ SE DEBA QUITAR
        x=-55; 
       }
       
       if(keyCode==RIGHT){
        x+=vel;
       }
       if(keyCode==LEFT){
        x-=vel;
       }   
       if(keyCode==UP){
        y-=vel;
       }
       if(keyCode==DOWN){
        y+=vel;
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


class Monster{
 float x;
 float y;
 float vel=0.2;
 float ref_y; ///referencia con el personaje
 float ref_x; 
 boolean arriba = false;
 Monster(float xt, float yt){
   x=xt;
   y=yt;
 }
 void move(){
   
//Movimiento del dragón por la pantalla
   if(arriba == false){
     if(abs(y)>=120){ //Límite inferior del dragón    
       y+=random(2,4);         
     }
     else{
       arriba=true;
     }
   }
   if (arriba==true){
     if(abs(y)<=height-40){ //Límite superior del dragón
       y-=random(2,4);
     }
     else{
       arriba=false;
     }
   }
   //Cuando el personaje se acerca
   ref_x=Entidad.x;
   ref_y=Entidad.y;
   if(ref_x-(x)<=250){
     //print('l');
     if(abs(y)>abs(ref_y)+30){
        y-=ref_y*vel; 
     }
     if(abs(y)<abs(ref_y)-30){
        y+=ref_y*vel;  
     }   
   
     
     
   }

 }
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);    
    pushMatrix();  
    translate(x,y);
    Norman.draw();
    popMatrix();     

 }
  
  
}


//CLASE DE PRUEBA ------ BORRAR
class enemigo{
 float x;
 float y;
 enemigo(float xt, float yt){
   x=xt;
   y=yt;
 }
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);    
   pushMatrix();  
   translate(x,y);
   Sombra.draw();
   popMatrix();     
   sprites.S4P.rebound(Nix,Sombra);
   sprites.S4P.collisionAreasVisible = true;   
   print(Nix.pp_collision(Nix));  
   


 }
  
}

//-----------------------------PLATAFORMAS-------------------------------------

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



//-----------------------------SUELO-------------------------------------

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

//-----------------------------JUGADOR-------------------------------------

class Dreamer{
 float x; 
 float y; 
 float vel=20; 
 boolean tecla=true; //para que el salto se haga una sola vez
 float base_x=0;
 float base_y=0; 
 float X;
 int i=0; //Para guardar los estados de salto
 boolean JUMP=false; //guarda las coordenadas de y al saltar
 boolean abajo=false;
 boolean moverse_derecha,moverse_izquierda;
 boolean pulsar=false;
 Dreamer(float xt, float yt){
   x=xt;
   y=yt;
 }
 //-------------------------------------
 void mover_arriba(){
   y-=4;
 } 
 void mover_abajo(){
   y+=4;
 } 
 //-----------------------------------------
 void mover_derecha(){
   x+=vel;
 }
 void mover_izquierda(){
   x-=vel;
 } 
 
 void saltar(){
     if(JUMP==true){
       
       x+=3;
       X+=3;
       //print('L');
       if(i<1){
         
         base_x=x;
         X=1;
         base_y=y;
         i++;
       }
       if(x<base_x+100){
         if(abs(y)<abs(base_y-100)){
           y=(-(X*X)-80);
         }
       }
       else{
         while(abs(round(y))>=abs(base_y)){
           y+=1;
         }
         JUMP=false;
       }
     }
 }
 
  
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);    
    pushMatrix();  
    translate(x,y);
    Nix.draw(); 
    popMatrix();
    
  //Limites del personaje                             QUITAR ESTOS COMENTARIOS
  /*
   if (abs(y)-55<=150){  //Límtes del suelo  REVISAR
     y=-80;    
   } */    
   if (x>width+55){  //Límites de la pantalla horizontal TAL VEZ SE DEBA QUITAR
     x=500; 
   }      
 }
 
 void lose(){
   if(x<=Dragon.x){
     inicial.modo=4;
     inicial.pantalla_inicial_game_over=true;
     x=300;
   }
 }
 
 void key_move (){
   if(pulsar!=false){
     switch (key){
         case 'D' :
           Entidad.mover_derecha(); 
         break;
         case 'd' :
           Entidad.mover_derecha(); 
         break;        
        
         case 'A':
           Entidad.mover_izquierda(); 
         break;
         case 'a':
           Entidad.mover_izquierda();
         break;        
        
         case 'W':
           //JUMP=true;
           //i=0;
           Entidad.mover_arriba();
         break;
         case 'w':
           //JUMP=true;
           //i=0;
           Entidad.mover_arriba();
         break;

         case 'S':
           Entidad.mover_abajo();
         break;
         case 's':
           Entidad.mover_abajo();
         break;
                
         default:
         break;       
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
   sprites.S4P.rebound(Nix,Sombra);
   sprites.S4P.collisionAreasVisible = true;   
   //print(Nix.pp_collision(Norman));     
   popMatrix();     
 }  
}


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
 int sentido=5;
 float vel_x=4;
 float vel_y=8;
 boolean tecla=true; //para que el salto se haga una sola vez
 float base_x=0;
 float base_y=0; 
 //float X;
 int i=0; //Para guardar los estados de salto
 boolean JUMP_RIGHT=false; //guarda las coordenadas de y al saltar
 boolean JUMP_LEFT=false; //guarda las coordenadas de y al saltar
 boolean abajo=false;
 boolean fall=true;
 boolean moverse_derecha,moverse_izquierda;
 boolean pulsar=false;
 Dreamer(float xt, float yt){
   x=xt;
   y=yt;
 }
 //-------------------------------------
 void mover_arriba(){
   y-=vel_y;
 } 
 void mover_abajo(){
   y+=vel_y;
 } 
 //-----------------------------------------
 void mover_derecha(){
   x+=vel_x;
 }
 void mover_izquierda(){
   x-=vel_x;
 } 
 
 void saltar(){
   if(fall==true){
     if(abs(y)>=82){
       //y+=vel_y;
     }
   }
     if(JUMP_RIGHT==true){      
       x+=vel_x;
       if(i<1){
         base_x=x;
         base_y=y;
         i++;
       }
       if(x<base_x+100){
         if(abs(y)<abs(base_y-500)){
           y-=vel_y+6;
         }
       }
       else{
         JUMP_RIGHT=false;
         i--;
       }
     }
     
     if(JUMP_LEFT==true){      
       x-=vel_x;
       if(i<1){      
         base_x=x;
         base_y=y;
         i++;
       }
       if(x>base_x-100){
         if(abs(y)<abs(base_y-500)){
           y-=vel_y+6;
         }
       }
       else{
         JUMP_LEFT=false;
         i--;
       }
     }     
     
 }
 
  
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);    
    pushMatrix();  
    translate(x,y);
    switch(sentido){
      case 1:
      Nix_izquierda.draw();
      break;
      
      case 2:
      Nix.draw();
      break;
      
      case 3:
      Nix_salto.draw();
      break;
      
      case 4:
      Nix_Base_Left.draw();
      break;
      
      case 5:
      Nix_Base_Right.draw();
      break;      
      
      default:
      break;
    }
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
     x=300;
   }
 }
 
 void key_move (){
   if(pulsar!=false){
     switch (key){
         case 'D' :
           sentido=2;
           Entidad.mover_derecha(); 
         break;
         case 'd' :
           sentido=2;
           Entidad.mover_derecha(); 
         break;        
        
         case 'A':
           sentido=1;
           Entidad.mover_izquierda(); 
         break;
         case 'a':
           sentido=1;
           Entidad.mover_izquierda();
         break;        
        
         case 'W':
         if(sentido==2 || sentido==5){
           sentido=3;
           JUMP_RIGHT=true;
         }
         if(sentido==1 || sentido==4){
           sentido=3;
           JUMP_LEFT=true;
         }  
           i=0;
           //Entidad.mover_arriba();
         break;
         case 'w':
         /*
         if(sentido==2 || sentido==5){
           sentido=3;
           JUMP_RIGHT=true;
         }
         if(sentido==1 || sentido==4){
           sentido=3;
           JUMP_LEFT=true;
         }         
           i=0;                        */
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

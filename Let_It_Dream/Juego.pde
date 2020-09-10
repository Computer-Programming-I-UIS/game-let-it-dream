
//-----------------------------JUGADOR-------------------------------------

class Dreamer{
 float x; 
 float y; 
 int sentido=5;
 float vel_x=12;//4
 float vel_y=8;//8
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
 int V;
 boolean choque=true; //Para que haga solo un salto
 boolean pausa=true;
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
   if(abs(y)>700){
     y+=vel_y-2;
   }
   if(fall==true){
    y+=vel_y;        
   }
if(y>40){
 inicial.modo=5; 
  y=-150;
  x=850;
}
else{
  if(pausa==true){
    V=nivel_1.v;    
  }
  else{
  nivel_1.v+=4;  
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
         if(abs(y)<abs(base_y-150)){
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
         if(abs(y)<abs(base_y-150)){
           y-=vel_y+6;
         }
       }
       else{
         JUMP_LEFT=false;
         i--;
       }
     } 
     if(inicial.modo==2 || inicial.modo==5){
       vel_x=4;      
     }
     else{
       vel_x=12;
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
   
 }
 
 void lose(){
   if(x<=(Dragon.x-250)){
     inicial.modo=4;
     Menu.rep=true;
     IMAGEN.rep=true;
     PERDER.rep=true;
   }
   if(x<=(Dragon.x+125) && (abs(y)+90)>abs(Dragon.y) && abs(y)<abs(Dragon.y)){
     inicial.modo=4;
     Menu.rep=true;
     IMAGEN.rep=true;
     PERDER.rep=true;
   }

 }
 
 void key_move (){
   if(pulsar!=false){
     switch (key){
         case 'D' :
         if(JUMP_LEFT==true){
             if(fall==false){
               sentido=2;
               Entidad.mover_derecha();
             }
         }
         else{
             sentido=2;
             Entidad.mover_derecha();           
         }
         break;
         case 'd' :
         if(JUMP_LEFT==true){
             if(fall==false){
               sentido=2;
               Entidad.mover_derecha();
             }
         }
         else{
             sentido=2;
             Entidad.mover_derecha();           
         }
         break;        
        
         case 'A':
         if(JUMP_RIGHT==true){
           if(fall==false){
             sentido=1;
             Entidad.mover_izquierda();
           }           
         }
         else{
           sentido=1;
           Entidad.mover_izquierda();           
         }

         break;
         case 'a':
         if(JUMP_RIGHT==true){
           if(fall==false){
             sentido=1;
             Entidad.mover_izquierda();
           }           
         }
         else{
           sentido=1;
           Entidad.mover_izquierda();           
         }
         break;        
        
         case 'W':
         if(choque==true){
             if(sentido==2 || sentido==5){
               sentido=3;
               JUMP_RIGHT=true;
             }
             if(sentido==1 || sentido==4){
               sentido=3;
               JUMP_LEFT=true;
             } 
             i=0;
             choque=false;
         }
         break;
         case 'w':
         if(choque==true){
             if(sentido==2 || sentido==5){
               sentido=3;
               JUMP_RIGHT=true;
             }
             if(sentido==1 || sentido==4){
               sentido=3;
               JUMP_LEFT=true;
             }         
             i=0;   
             choque=false;
         }
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
   if(ref_x<(x+250)){
     //print('l');
     if(abs(y)>abs(ref_y)+30){
        y-=ref_y*vel; 
     }
     if(abs(y)<abs(ref_y)-10){
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
 }  
}
//-----------------------------------------------------

class GHOST{
 float x;
 float y;
 float vel=0.01; 
 GHOST(float xt, float yt){
   x=xt;
   y=yt;
 }
 void spawn(){
   float elapsedTime = (float) sw.getElapsedTime();
   S4P.updateSprites(elapsedTime);    
   pushMatrix();  
   translate(x,y);
   if((x+50)>Entidad.x){
     Ghost_LEFT.draw();   
   }
   else{
     Ghost_RIGHT.draw();
   }
   popMatrix();       
 }
 
 void move(){
   if((x)>Entidad.x){
     x-=(Entidad.x*vel)*0.5;  
   }
   if((x)<Entidad.x){
     x+=(Entidad.x*vel)*0.3; 
   }   
   if(abs(y)>abs(Entidad.y)){
     y-=(Entidad.y*vel); 
   }
   else{
     y+=(Entidad.y*vel)*0.5; 
   }    
 }
 
 void lose(){
   if((abs(Entidad.x+25)>=abs(x-40)) && abs(Entidad.x+25)<=abs(x+40) || ((Entidad.x-25)>=abs(x-40)) && (Entidad.x-25)<=abs(x+40) ){
     if((abs(Entidad.y)+80)<(abs(y)+83) && (abs(Entidad.y)+80)>(abs(y)) && (abs(Entidad.y))<(abs(y)+83) && (abs(Entidad.y))>(abs(y))){
       inicial.modo=4;  
       IMAGEN.rep=true;
       Menu.rep=true;
       PERDER.rep=true;
     }
   }
   
 }
}

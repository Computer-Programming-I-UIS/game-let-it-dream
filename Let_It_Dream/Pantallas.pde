class pantalla{
  int modo=0;
  boolean pantalla_inicial_game_over=false;
  //Para los créditos
  float t_texto;
  String nombres;
  float yt=height; //x y y del texto  
  float xt=4.5;
  int C;
  pantalla (int modot){
  modo = modot;  
  }
   void apartado(){
     switch(modo){
       case 0:  //PANTALLA INICIAL
         if(pantalla_inicial_game_over==false){
           image(title,10,-height+200);
         }
         else{       
           pushMatrix();
           translate(width/2,-height+275);
           image(title,10,0); 
           popMatrix();  
         }
         //stroke(255);
         //line(width/2,0,width/2,-height);        
         Start.in();
         Start.spawn();
         Controls.in();
         Controls.spawn();  
         Credits.in();
         Credits.spawn();           
       break;
       
       case 1:  //PARA EMPEZAR EL JUEGO, VA TODO LO QUE TIENE QUE VER EL JUEGO           VER PESTANA JUEGO
         //background(30);
         //Back.in();   //Tal vez esto no vaya 
         //Back.spawn();
         background(106,42,124);
         //fondo 
         image(fondo,640,-height/2); 
         //suelo
         base.spawn();
         //Plataformas
         for(int i=0;i<plataforma.length;i++){
           plataforma[i].spawn_point(); 
           plataforma[i].move();
         }
         //Jugador        
         Entidad.spawn();
         Entidad.lose();
         //Borrar
         Pesadilla.spawn();
         
         
         Dragon.spawn();
         //  Dragon.move();
         
       break;
       
       case 2: //PARA QUE SE MUESTREN LOS CONTROLES
         //background(30);
         background(30);
         Back.in();
         Back.spawn();     
         Entidad.spawn();
         line(width/2,0,width/2,-height);
         strokeJoin(ROUND);
         strokeWeight(5);
         tecla_arriba.in();
         tecla_arriba.spawn();
         tecla_abajo.in();
         tecla_abajo.spawn();
         tecla_derecha.in();
         tecla_derecha.spawn();
         tecla_izquierda.in();
         tecla_izquierda.spawn();
         pantalla_inicial_game_over=true;
         stroke(0);
       break;
       
       case 3:  //PARA QUE SE MUESTREN LOS CRÉDITOS
         background(30);
         Back.in();
         Back.spawn();
         textAlign(CENTER);
         nombres = "Autores:\nAndrés Tarazona\nSergio Oliveros" ;
         C=frameCount%2;
         if(abs(-(height+75)+yt)<=abs(height/2)+50){
           switch(C){
             case 0:                   
               yt=yt-8;    
               xt=xt+0.8;
             break;
             
             default:
             break;         
           }
         }
         //fill(234,240,48);
         if(xt>0){
           
         }
         textSize(10+xt);    
         text(nombres,width/2,-(height+75)+yt);
         textAlign(LEFT);
       break;
       
       case 4:  //PANTALLA DE GAME OVER        ACTIVAR
         pushMatrix();
         translate(width/2,height/2);
         image(game_over,0,-height); 
         popMatrix();
         Back.in();
         Back.spawn();       
       break;   
       
       default:       
       break;
       
       
       
     }
     
   }
  
}

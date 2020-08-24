class pantalla{
  int modo=0;
  //Para los créditos
  float t_texto;
  String nombres;
  float yt=height; //x y y del texto  
  float xt=4.5;
  int C;
  int H,G;
  pantalla (int modot){
  modo = modot;  
  }
   void apartado(){
     switch(modo){
       case 0:  //PANTALLA INICIAL
     
         pushMatrix();
         translate(width/2,-height+275);
         image(title,10,0); 
         popMatrix();  
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
         pushMatrix();
         translate(0,-height+40);
         nivel_1.obtenerDatos();
         nivel_1.crearEscenario(Entidad);
         nivel_1.reinicio();
         popMatrix();
         Entidad.pausa=true;
         /*
         for(int i=0;i<plataforma.length;i++){
           plataforma[i].spawn_point(); 
           plataforma[i].move();
         }         */
         //Jugador        
         Entidad.spawn();
         Entidad.lose();
         Entidad.key_move();
         Entidad.saltar();
         //Borrar
         
         
         
         Dragon.spawn();
         Dragon.move();
         
       break;
       
       case 2: //PARA QUE SE MUESTREN LOS CONTROLES
         //background(30);
         background(30);
         Back.in();
         Back.spawn();     
         Entidad.spawn();
         Entidad.key_move();
         Entidad.saltar();
         //line(width/2,0,width/2,-height);
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
       
       case 5:        //GULAG
       pushMatrix();
       translate(width/2,height/2);
       image(GULAG,0,-height); 
       popMatrix();       
       Entidad.pausa=false;
       nivel_1.v=Entidad.V;
        Entidad.spawn();
       // Entidad.lose();
        Entidad.key_move();
        Entidad.saltar();
        rect(100,-630,100,130);
        pushMatrix();
        translate(0,-height+40);
        gulag.obtenerDatos2();
        gulag.crearEscenario2(); 
        popMatrix();
        if(Entidad.y>=50){
         modo=4; 
        }
        if(Entidad.x<=200 && Entidad.x>=100 && Entidad.y<=-500 && Entidad.y>=-630){
          modo=1;
          Entidad.x=width/2;
        }
       break; 
       
       case 6: //PANTALLA DE LA HISTORIA
       float elapsedTime = (float) sw.getElapsedTime();
       S4P.updateSprites(elapsedTime);    
       pushMatrix();  
       translate(width/2,-height/2);
       pantalloide.draw(); 
       popMatrix();
       Back.in();
       Back.spawn();
       break;
       
       case 7: //IMAGEN DE LA HISTORIA
             
       break;       
       
       case 8: //FRASES CONTEXTUALIZADORAS
       
       break;       
       
       
       
       
       
       
       
       
       default:       
       break;
       
       
       
     }
     
   }
  
}

class pantalla{
  int modo=0;
  //Para los créditos
  float t_texto;
  String nombres;
  float yt=height; //x y y del texto  
  float xt=4.5;
  int C;
  int H,G;
  int T=0; //Transparecia del texto
  int T_1=0; //Transparecia del texto
  int T_2=0; //Transparecia del texto
  int T_3=0; //Transparecia del texto
  int T_4=0; //Transparecia del texto
  int T_1_=0; //Transparecia del texto
  int T_2_=0; //Transparecia del texto
  int T_3_=0; //Transparecia del texto
  int T_4_=0; //Transparecia del texto  
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
         Start.in();
         Start.spawn();
         Controls.in();
         Controls.spawn();  
         Credits.in();
         Credits.spawn();           
       break;
       
       case 1:  //PARA EMPEZAR EL JUEGO, VA TODO LO QUE TIENE QUE VER EL JUEGO           VER PESTANA JUEGO
         background(106,42,124);
         //fondo 
         image(fondo,640,-height/2); 
         //suelo
         //Plataformas
         pushMatrix();
         translate(0,-height+40);
         nivel_1.obtenerDatos();
         nivel_1.crearEscenario(Entidad);
         nivel_1.reinicio();
         popMatrix();
         Entidad.pausa=true;
         //Jugador        
         Entidad.spawn();
         Entidad.lose();
         Entidad.key_move();
         Entidad.saltar();
         Dragon.spawn();
         Dragon.move();
         Ghost.x=125;
         Ghost.y=-50;
       break;
       
       case 2: //PARA QUE SE MUESTREN LOS CONTROLES
         //background(30);
         background(30);
         Back.in();
         Back.spawn();     
         Entidad.spawn();
         Entidad.key_move();
         Entidad.saltar();
         pushMatrix();
         translate(0,-height+40);
         controles.obtenerDatos3();
         controles.crearEscenario3(); 
         popMatrix();
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
         Ghost.x=125;
         Ghost.y=-50;         
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
         Entidad.sentido=5;
         nivel_1.v=0;
         Entidad.x=500;
         Entidad.y=-80;
         pushMatrix();
         translate(width/2,height/2);
         image(game_over,0,-height); 
         popMatrix();
         Back.in();
         Back.spawn();     
         Pesadilla.spawn();
       break;   
       
       case 5:        //GULAG
       pushMatrix();
       translate(width/2,height/2);
       image(GULAG,0,-height); 
       popMatrix();       
       Entidad.pausa=false;
       nivel_1.v=Entidad.V;
       Entidad.spawn();
       Entidad.key_move();
       Entidad.saltar();
       fill(0);
       stroke(255);
       rect(100,-670,100,130);
       pushMatrix();
       translate(0,-height+40);
       gulag.obtenerDatos2();
       gulag.crearEscenario2(); 
       popMatrix();
       if(Entidad.y>=20){
         modo=4; 
       }
       if(Entidad.x<=200 && Entidad.x>=100 && Entidad.y<=-500 && Entidad.y>=-630){
          modo=1;
          Entidad.x=width/2;
       }
       Ghost.spawn();
       Ghost.move();
       Ghost.lose();    
       break; 
       
       case 6: //PANTALLA DE FRASE INICIAL
       Next_1.in();
       Next_1.spawn(); 
       if(T<256){
        T++;
       }
       fill(255,255,255,T);
       //line(0,-height/2,width,-height/2);
       //line(width/2,-height,width/2,0);    
       textAlign(CENTER);
       text("It is not true optimism of those who hope that reality will come\nto have the size of their dreams:\n It is, on the other hand, the one capable of living their dream as\na reality.\n                                                                      ~Wimpi.",(width/2),(-height/2)-100);
       textAlign(LEFT);
       noFill();
       Pesadilla.spawn();
       break;
       
       case 7: //IMAGEN DE LA HISTORIA
       float elapsedTime = (float) sw.getElapsedTime();
       S4P.updateSprites(elapsedTime);    
       pushMatrix();  
       translate(width/2,-height/2);
       pantalloide.draw(); 
       popMatrix();
       Next_2.in();
       Next_2.spawn();          
       break;       
       
       case 8: //FRASES CONTEXTUALIZADORAS
       Next_3.in();
       Next_3.spawn(); 
       if(T_1<256){
        T_1++;
       }
       else{
         if(T_2<256){
           T_2++;
         }
         else{
           if(T_3<256){
             T_3++;
           }
           else{
             if(T_4<256){
               T_4++;
             }
           }
         }
       }
       
       textAlign(CENTER);
       textSize(30);
       fill(255,255,255,T_1);
       text("The only thing that will stop you from\n fulfilling your dreams is you.\n               ~Tom Bradley.",(width/2)-300,(-height/2)-250);
       
       fill(255,255,255,T_2);
       text("Days do not die, what happens\nis that it always dawns again.\n               ~William Baecker.",(width/2)+350,(-height/2)-100);
       
       fill(255,255,255,T_3);
       text("Whatever the man wins, he must pay dearly,\neven if it is only with the fear of losing it.\n               ~Friedrich Hebbel.",(width/2)-250,(-height/2)+20);       

       fill(255,255,255,T_4);
       text("Now dream...",(width/2)+10,(-height/2)+225);
       textAlign(LEFT);
       noFill();       
       break;       

       case 9: //FRASES CONTEXTUALIZADORAS
       Next_3.in();
       Next_3.spawn(); 
       if(T_1_<256){
        T_1_++;
       }
       else{
         if(T_2_<256){
           T_2_++;
         }
         else{
           if(T_3_<256){
             T_3_++;
           }
           else{
             if(T_4_<256){
               T_4_++;
             }
           }
         }
       }
       
       textAlign(CENTER);
       textSize(30);
       fill(255,255,255,T_1_);
       text("The only thing that will stop you from\n fulfilling your dreams is you.\n               ~Tom Bradley.",(width/2)-300,(-height/2)-250);
       
       fill(255,255,255,T_2_);
       text("Days do not die, what happens\nis that it always dawns again.\n               ~William Baecker.",(width/2)+350,(-height/2)-100);
       
       fill(255,255,255,T_3_);
       text("Whatever the man wins, he must pay dearly,\neven if it is only with the fear of losing it.\n               ~Friedrich Hebbel.",(width/2)-250,(-height/2)+20);       

       fill(255,255,255,T_4_);
       text("Now wake up...",(width/2)+15,(-height/2)+225);
       textAlign(LEFT);
       noFill();       
       break;              
       
       default:       
       break;
 
     }
     
   }
  
}

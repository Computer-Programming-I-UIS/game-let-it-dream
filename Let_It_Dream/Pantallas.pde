class pantalla{
  int modo=0;
  pantalla (int modot){
    modo = modot;  
  }
   void apartado(){
     switch(modo){
       case 0:  //PANTALLA INICIAL
         image(title,10,-height+200);         
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
         base.spawn();
         plataforma.spawn_point();
         plataforma.mov();
         Entidad.spawn();
         
       break;
       
       case 2: //PARA QUE SE MUESTREN LOS CONTROLES
         //background(30);
         Back.in();
         Back.spawn();  
       
       break;
       
       case 3:  //PARA QUE SE MUESTREN LOS CRÉDITOS
         Back.in();
         Back.spawn();       
       break;
       
       default:       
       break;
       
       
       
     }
     
   }
  
}

class boton{
  float x,y,g,l;
  float C;
  int tipo;  //Tipo de botón que se va a utilizar 
  String name;
  float x1,y1; //Para ajustar los textos a cada botón
  int FRAME;
  boton(float xt, float yt, float gt, float lt, int tipot, String namet, float x1t, float y1t){
    x=xt;
    y=yt;
    g=gt;
    l=lt;
    tipo = tipot;
    name = namet;
    x1 = x1t;
    y1 = y1t;
  }
  
  void in(){
    C=mouseY-height;
    FRAME=frameCount%80;
    switch(tipo){
//--------------------------------------------------------------------------PANTALLA INICIAL--------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------      
      case 1: //Start
      noStroke();
      if(mouseX>=x && mouseX<=x+g ){  //PARA EVALUAR SI ESTÁ DENTRO DE LA BARRA
       if(abs(C)<=(abs(l)+abs(y)) && abs(C)>=abs(y)){
           strokeWeight(2);  //características del botón
           stroke(255);
         if (mousePressed==true){
           inicial.modo=1; // lo que se muestra en la pantalla   
           JUEGO.rep=true;
           inicial.puntaje=1000;
           //FUNCIONALIDADES (ESTABLECER UN ESTADO O ALGO PARA INICIAR EL JUEGO)
         }
       }
      }
      else{
         strokeWeight(1);
         stroke(0);        
      }

      break;      
//---------------------------------------------------------------------------------------------    
      
      case 2:  //Controles
      noStroke();
      if(mouseX>=x && mouseX<=x+g ){  //PARA EVALUAR SI ESTÁ DENTRO DE LA BARRA
       if(abs(C)<=(abs(l)+abs(y)) && abs(C)>=abs(y)){
           strokeWeight(2);
           stroke(255);
         if (mousePressed==true){
           inicial.modo=2;     
         }
       }
      }
      else{
         strokeWeight(1);
         stroke(0);        
      }      
      break;
//--------------------------------------------------------------------------------------------      
      case 3:  //CRÉDITOS
      noStroke();
      if(mouseX>=x && mouseX<=x+g ){  //PARA EVALUAR SI ESTÁ DENTRO DE LA BARRA
       if(abs(C)<=(abs(l)+abs(y)) && abs(C)>=abs(y)){
           strokeWeight(2);
           stroke(255);
         if (mousePressed==true){
           inicial.modo=3;    
           //FUNCIONALIDADES (ESTABLECER UN ESTADO O ALGO PARA INICIAR EL JUEGO)
         }
       }
      }
      else{
         strokeWeight(1);
         stroke(0);        
      }          
      break;
//-------------------------------------------------------------------------------------  
//-----------------------------------------------------BOTÓN DE ATRÁS-------------------------------------
      case 4: //atrás
      noStroke();
      if(mouseX>=x && mouseX<=x+g ){  //PARA EVALUAR SI ESTÁ DENTRO DE LA BARRA
       if(abs(C)<=(abs(l)+abs(y)) && abs(C)>=abs(y)){
           strokeWeight(2);
           stroke(255);
         if (mousePressed==true){
           inicial.modo=0; 
           Entidad.x=500;
           Entidad.y=-80;
           //FUNCIONALIDADES (ESTABLECER UN ESTADO O ALGO PARA INICIAR EL JUEGO)
         }
       }
      }
      else{
         strokeWeight(1);
         stroke(0);        
      }            
      break;

//--------------------------------------------------------------------------------------BOTONES EN LA PANTALLA DE START-----------------------------------------------------------------
//COLOCAR MARACDORES O LO QUE SEA
    case 5:
    
    break;
//------------------------------------------------------------------------------------BOTONES EN LA PANTALLA DE CONTROLES------------------------------------------------------------------
    case 6:
    fill(255);
      if(FRAME<=40){
        text("Up",(x-(x1+5))+(g/2),(-height/2)-200);
      }
      else{
        text("Up",(x-(x1+5))+(g/2),(-height/2)-207);
      }
      noFill();
      noStroke();
      stroke(255);
      if(keyPressed==true){
         if(key=='w' || key=='W'){
           strokeWeight(6);  //características del botón
           stroke(185,125,210);
         }
         else{
           strokeWeight(5);
           stroke(255);        
         } 
      }
    break;

    case 7:
      if(FRAME<=40){
        text("Left",(x-(x1+20))+(g/2),(-height/2)-100);
      }
      else{
        text("Left",(x-(x1+20))+(g/2),(-height/2)-107);
      }    
      noStroke();
      stroke(255);
      if(keyPressed==true){
         if(key=='a' || key=='A'){
           strokeWeight(6);  //características del botón
           stroke(185,125,210);
         }
         else{
           strokeWeight(5);
           stroke(255);        
         } 
      }    
    break;
    
    case 8:
      noStroke();
      stroke(255);
      if(keyPressed==true){
         if(key=='s' || key=='S'){
           strokeWeight(6);  //características del botón
           stroke(185,125,210);
         }
         else{
           strokeWeight(5);
           stroke(255);        
         } 
      }    
    break;
    
    case 9:
      if(FRAME<=40){
        text("Right",(x-(x1+25))+(g/2),(-height/2)-100);
      }
      else{
        text("Right",(x-(x1+25))+(g/2),(-height/2)-107);
      }     
      noStroke();
      stroke(255);
      if(keyPressed==true){
         if(key=='d' || key=='D'){
           strokeWeight(6);  //características del botón
           stroke(185,125,210);
         }
         else{
           strokeWeight(5);
           stroke(255);        
         } 
      }    
    break;    
//-----------------------------------------------------------------------INICIO-------------------------
      case 10: //LLEVA A LA PANTALLA DE LAS FRASES
      noStroke();
      if(mouseX>=x && mouseX<=x+g ){  //PARA EVALUAR SI ESTÁ DENTRO DE LA BARRA
       if(abs(C)<=(abs(l)+abs(y)) && abs(C)>=abs(y)){
           strokeWeight(2);
           stroke(255);
         if (mousePressed==true){
           inicial.modo=7; //CAMBIAR
           Entidad.x=500;
           Entidad.y=-80;
           //FUNCIONALIDADES (ESTABLECER UN ESTADO O ALGO PARA INICIAR EL JUEGO)
         }
       }
      }
      else{
         strokeWeight(1);
         stroke(0);        
      }    
      break;          

      case 11: //LLEVA A LA PANTALLA DE LAS FRASES
      noStroke();
      if(mouseX>=x && mouseX<=x+g ){  //PARA EVALUAR SI ESTÁ DENTRO DE LA BARRA
       if(abs(C)<=(abs(l)+abs(y)) && abs(C)>=abs(y)){
           strokeWeight(2);
           stroke(255);
         if (mousePressed==true){
           inicial.modo=8; //CAMBIAR
           Entidad.x=500;
           Entidad.y=-80;
           //FUNCIONALIDADES (ESTABLECER UN ESTADO O ALGO PARA INICIAR EL JUEGO)
         }
       }
      }
      else{
         strokeWeight(1);
         stroke(0);        
      }    
      break; 
      
      default:
      break;        
    }
   
    
  }
  
  void spawn(){
    rect(x,y,g,l);    
    fill(255); //Color del texto
    textSize(35);     //Dimensiones del texto
    text(name,(x-x1)+(g/2),(l)-y1); //Ajuste del texto en los botones
    noFill();   //dejar como antes  
  
  }
  
  

}

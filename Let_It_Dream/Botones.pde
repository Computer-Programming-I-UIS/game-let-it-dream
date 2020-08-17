class boton{
  float x,y,g,l;
  float C;
  int tipo;  //Tipo de botón que se va a utilizar 
  String name;
  int x1,y1; //Para ajustar los textos a cada botón
  
  boton(float xt, float yt, float gt, float lt, int tipot, String namet, int x1t, int y1t){
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

//------------------------------------------------------------------------------------BOTONES EN LA PANTALLA DE CONTROLES------------------------------------------------------------------




//-----------------------------------------------------------------------------------BOTONES EN LA PANTALLA DE CRÉDITOS--------------------------------------------------------------------


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

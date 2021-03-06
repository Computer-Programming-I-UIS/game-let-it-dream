class Escenario {
  int t=0;
  int n=245;
  int cols;
  int rows;
  char [][] escenario;
  String filename;
  
  int A=60; //Ancho de las barras
  int L=140; //Distancia en y entre las barras
  int M=160;
  int H=130;
  int v=0;
  float X;
  float F;
  Escenario(int _cols,int _rows, String _filename){
    cols= _cols;
    rows= _rows;
    escenario = new char[cols][rows];
    filename = _filename;    
  }
  
  void obtenerDatos(){
    String[] lines = loadStrings(filename);
    for(int i=0; i< lines.length;i++){
      for(int j=0;j<n;j++){
        escenario[j][i] = lines[i].charAt(j);
      }
    }
  }
  
  void crearEscenario(Dreamer Entidad){


  translate(-v,0);
  fill(255);
  rect(14250,720,1280,-800);
  if(v<=13370){
    v+=8; //8   
    Entidad.x-=8;//8
  }
  else{
    inicial.puntaje=0;
  }
  if((Entidad.x+v)>=14250){
   inicial.T_1_=0;
   inicial.T_2_=0;
   inicial.T_3_=0;
   inicial.T_4_=0;
   inicial.modo=9; 
   FRASES.rep=true;
   Entidad.sentido=5;
   inicial.SELEC=true;
  }    
      for (int i=0; i<rows;i++){
       for(int j=0; j<n;j++){
        if(escenario[j][i]== 'M'){
         stroke(255);
         strokeWeight(5);
         fill(22,54,54);
         rect(j*A,i*M,60,30); 

         if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
           if((abs(Entidad.y)+1)<abs((i*M)-height) && (abs(Entidad.y)+1)>(abs((i*M)-height)-30)){
               Entidad.y-=Entidad.vel_y;        
               Entidad.fall=false;
               Entidad.choque=true;
           }
           else{
             Entidad.fall=true;
             
           }
         }    
          
         if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
           if((abs(Entidad.y)+90)<abs((i*M)-height) && (abs(Entidad.y)+90)>(abs((i*M)-height)-30)){             
               Entidad.y+=(Entidad.vel_y-2);   
               Entidad.JUMP_RIGHT=false;
               Entidad.JUMP_LEFT=false;
             }
         }        
         
         if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
           if((abs(Entidad.y)+90)>abs((i*M)-height) && (abs(Entidad.y)+90)>(abs((i*M)-height)-30) && (abs(Entidad.y)+2)<abs((i*M)-height) && (abs(Entidad.y)+2)<(abs((i*M)-height)-30)){             
               Entidad.y+=(Entidad.vel_y+14); 
               
           }
         }
          
        }
       }
     }
     switch(inicial.Selector){
     case 1:
     image(Cartel_1,3300,720-110);
     image(Cartel_1,5580,720-110);
     image(Cartel_3,6900,720-150);
     image(Cartel_2,9570,720-120);
     image(Cartel_1,10110,720-110);
     image(Cartel_1,10405,720-110);
     image(Cartel_2,10650,720-120);
     image(Cartel_3,11720,720-310);
     break;
     case 2:
     image(Cartel_1,3240,720-120);
     image(Cartel_3,4200,720-150);
     image(Cartel_2,6960,720-280);
     image(Cartel_3,7660,720-320);
     image(Cartel_2,9030,720-120);
     image(Cartel_2,9820,720-120);
     image(Cartel_3,12420,720-150);
     break;
     case 3:
     image(Cartel_1,1800,720-440);
     image(Cartel_3,3720,720-470);
     image(Cartel_2,6840,720-120);
     image(Cartel_2,8940,720-120);
     image(Cartel_3,10380,720-310);
     image(Cartel_2,13230,720-440);
     break;
     default:
     break;
     }
  }
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    
  void obtenerDatos2(){
        String[] lines = loadStrings(filename);
    for(int i=0; i< lines.length;i++){
      for(int j=0;j<20;j++){
        escenario[j][i] = lines[i].charAt(j);
      }
    }
  }
  void crearEscenario2(){   
    for (int i=0; i<rows;i++){
     for(int j=0; j<20;j++){
      if(escenario[j][i]== 'T'){
       stroke(0);
       strokeWeight(5);
       fill(209,34,34);
       rect(j*60,i*L,60,30); 
       image(suelo,(j*60)+30,(i*L)+30);
       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+1)<abs((i*L)-height) && (abs(Entidad.y)+1)>(abs((i*L)-height)-30)){
             Entidad.y-=Entidad.vel_y;        
             Entidad.fall=false;
             Entidad.choque=true;
           }
           else{
             Entidad.fall=true;
            
           }
       }    
       
       
       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+90)<abs((i*L)-height) && (abs(Entidad.y)+90)>(abs((i*L)-height)-30)){             
             Entidad.y+=(Entidad.vel_y-2);   
             Entidad.JUMP_RIGHT=false;
             Entidad.JUMP_LEFT=false;
           }
       }        
       
       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+90)>abs((i*L)-height) && (abs(Entidad.y)+90)>(abs((i*L)-height)-30) && (abs(Entidad.y)+2)<abs((i*L)-height) && (abs(Entidad.y)+2)<(abs((i*L)-height)-30)){             
             Entidad.y+=(Entidad.vel_y+14);   
           }
       }
      }
     }
    }
  }
      void obtenerDatos3(){
        String[] lines = loadStrings(filename);
    for(int i=0; i< lines.length;i++){
      for(int j=0;j<30;j++){
        escenario[j][i] = lines[i].charAt(j);
      }
    }
  }
    void crearEscenario3(){   
    for (int i=0; i<rows;i++){
     for(int j=0; j<30;j++){
      if(escenario[j][i]== 'T'){
      
       stroke(170,170,170);
       strokeWeight(5);
       fill(22,54,54);
       rect(j*60,i*H,60,30); 
       noFill();
       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+1)<abs((i*H)-height) && (abs(Entidad.y)+1)>(abs((i*H)-height)-30)){
             Entidad.y-=Entidad.vel_y;        
             Entidad.fall=false;
             Entidad.choque=true;
           }
           else{
             Entidad.fall=true;
            
           }
       }    
       
       
       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+90)<abs((i*H)-height) && (abs(Entidad.y)+90)>(abs((i*H)-height)-30)){             
             Entidad.y+=(Entidad.vel_y-2);   
             Entidad.JUMP_RIGHT=false;
             Entidad.JUMP_LEFT=false;
           }
       }        
       
       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+90)>abs((i*H)-height) && (abs(Entidad.y)+90)>(abs((i*H)-height)-30) && (abs(Entidad.y)+2)<abs((i*H)-height) && (abs(Entidad.y)+2)<(abs((i*H)-height)-30)){             
             Entidad.y+=(Entidad.vel_y+14);   
           }
       }
      }
     }
    }
  }
 
  void reinicio(){    
    if(inicial.modo==4){  
       translate(0,-height+40);
       PERDER.rep=true; 
    }    
  }
}

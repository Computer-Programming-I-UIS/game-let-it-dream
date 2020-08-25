class Escenario {
  int t=0;
  int n=245;
  int cols;
  int rows;
  char [][] escenario;
  String filename;
  
  int A=60; //Ancho de las barras
  int L=160; //Distancia en y entre las barras
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
  if((Entidad.x+v)>=14250){
   inicial.modo=9; 
  }  
  
      for (int i=0; i<rows;i++){
       for(int j=0; j<n;j++){
        if(escenario[j][i]== 'M'){
         stroke(255);
         strokeWeight(5);
         fill(22,54,54);
         rect(j*A,i*L,60,30); 
  
         if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
           if((abs(Entidad.y)+1)<abs((i*L)-height) && (abs(Entidad.y)+1)>(abs((i*L)-height)-30)){
               Entidad.y-=Entidad.vel_y;        
               Entidad.fall=false;
           }
           else{
             Entidad.fall=true;
           }
         }    
          
         if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
           if((abs(Entidad.y)+90)<abs((i*L)-height) && (abs(Entidad.y)+90)>(abs((i*L)-height)-30)){             
               Entidad.y+=(Entidad.vel_y-2);   
               Entidad.JUMP_RIGHT=false;
               Entidad.JUMP_LEFT=false;
             }
         }        
         
         if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
           if((abs(Entidad.y)+90)>abs((i*L)-height) && (abs(Entidad.y)+90)>(abs((i*L)-height)-30) && (abs(Entidad.y)+2)<abs((i*L)-height) && (abs(Entidad.y)+2)<(abs((i*L)-height)-30)){             
               Entidad.y+=(Entidad.vel_y+14);   
           }
         }
          
        }
       }
     }
  }
  
  
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
       stroke(170,170,170);
       strokeWeight(5);
       fill(209,34,34);
       rect(j*60,i*160,60,30); 

       if((abs(Entidad.x+25)>=abs((j*A)) && abs(Entidad.x+25)<=abs(((j*A)+60))) || ((Entidad.x-25)>=abs((j*A)) && (Entidad.x-25)<=abs(((j*A)+60)))  ){
         if((abs(Entidad.y)+1)<abs((i*L)-height) && (abs(Entidad.y)+1)>(abs((i*L)-height)-30)){
             Entidad.y-=Entidad.vel_y;        
             Entidad.fall=false;
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
  
  void reinicio(){    
    if(inicial.modo==4){  
       translate(0,-height+40);
    }    
  }
}

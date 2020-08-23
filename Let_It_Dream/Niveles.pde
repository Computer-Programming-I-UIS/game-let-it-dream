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
  int J,I;
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

v+=4; //8
Entidad.x-=0;
translate(-v,0);
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       line(j*A,i*L,width,i*L);
       rect(j*60,i*160,60,30); 
       J=j;
       I=i;

       if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
         if((abs(Entidad.y)+2)<abs((i*L)-height) && (abs(Entidad.y)+2)>(abs((i*L)-height)-30)){
             Entidad.y-=Entidad.vel_y;        
             Entidad.x-=4;
             Entidad.fall=false;
             
           }
           else{
             Entidad.fall=true;
           }
       }    
       
       
       if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
         if((abs(Entidad.y)+90)<abs((i*L)-height) && (abs(Entidad.y)+90)>(abs((i*L)-height)-30)){             
             Entidad.y+=(Entidad.vel_y-2);   
             Entidad.x-=4;
           }
       }        
       
       if((abs(Entidad.x+25)>=abs((j*A)-v) && abs(Entidad.x+25)<=abs(((j*A)+60)-v)) || ((Entidad.x-25)>=abs((j*A)-v) && (Entidad.x-25)<=abs(((j*A)+60)-v))  ){
         if((abs(Entidad.y)+90)>abs((i*L)-height) && (abs(Entidad.y)+90)>(abs((i*L)-height)-30) && (abs(Entidad.y)+2)<abs((i*L)-height) && (abs(Entidad.y)+2)<(abs((i*L)-height)-30)){             
             Entidad.y+=(Entidad.vel_y+14);   
             Entidad.x-=4;
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

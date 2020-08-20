class Escenario {
  int t=0;
  int n=115;
  int cols;
  int rows;
  char [][] escenario;
  String filename;

  Escenario(int _cols,int _rows, String _filename){
    cols= _cols;
    rows= _rows;
    escenario = new char[cols][rows];
    filename = _filename;    
  }
  
  void obtenerDatos(){
  String[] lines = loadStrings(filename);
  println("there are "+ lines.length +" lines");
  for(int i=0; i< lines.length;i++){
   println(lines[i]); 
  for(int j=0;j<n;j++){
   escenario[j][i] = lines[i].charAt(j);
 }
  }
  println("Esta es la matriz de la informacion:");
  for (int i=0; i<lines.length;i++){
   for(int j=0; j<n;j++){
   println(escenario[j][i]);
   }
   println("");
    
  }
  }
  
  void crearEscenario(cuadro personaje){
 /*   if(personaje.x<=1000){
   for (int i=0; i<rows;i++){
     for(int j=0; j<60;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*120,100,30); 
      }
     }
   }
    }
    
    else{
      translate(-1000,0);
      for (int i=0; i<rows;i++){
     for(int j=0; j<60;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*120,100,30); 
      }
     }
   }
} */
//t=0;

if(personaje.x>=width-100){
  t++;
  personaje.x=0;
}
switch(t){
 
 case 0:
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*160,100,30); 
      }
     }
   }
 break;
 case 1: 
 translate(-1280,0);
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*160,100,30); 
      }
     }
   }

break;
 case 2:
 translate(-2560,0);
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*160,100,30); 
      }
     }
   }
 break;
 case 3:
 translate(-3840,0);
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*160,100,30); 
      }
     }
   }
 break;
 case 4:
 translate(-5120,0);
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*160,100,30); 
      }
     }
   }
 break;
 case 5:
  translate(-6400,0);
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*60,i*160,100,30); 
      }
     }
   }
 break;
  
}
  }
  
}

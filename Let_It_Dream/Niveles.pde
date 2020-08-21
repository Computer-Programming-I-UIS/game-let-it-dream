class Escenario {
  int t=0;
  int n=245;
  int cols;
  int rows;
  char [][] escenario;
  String filename;
  int A=60; //Ancho de las barras
  int L=160; //Distancia en y entre las barras

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
   //println(lines[i]); 
  for(int j=0;j<n;j++){
   escenario[j][i] = lines[i].charAt(j);
 }
  }
  println("Esta es la matriz de la informacion:");
  for (int i=0; i<lines.length;i++){
   for(int j=0; j<n;j++){
   //println(escenario[j][i]);
   }
   println("");
    
  }
  }
  
  void crearEscenario(Dreamer Entidad){
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

if(Entidad.x>=width-100){
  t++;
  Entidad.x=500;
}
switch(t){
 
 case 0:
    for (int i=0; i<rows;i++){
     for(int j=0; j<n;j++){
      if(escenario[j][i]== 'M'){
       stroke(255);
       strokeWeight(5);
       fill(20,242,240);
       rect(j*A,i*L,100,30);
       
       if((Entidad.x+55)>=(j*A) && (Entidad.x+55)<=((j*A)+60)){
         print("X");
         //if((Entidad.x-55)>=(j*A) && (Entidad.x-55)<=((j*A)+60)){
           //print("Y");
           //if((abs(Entidad.y)+55)<=abs(i*L) &&(abs(Entidad.y)+55)>=abs((i*L)-30)){
             //print("Z");
             if((abs(Entidad.y)-55)>=abs(i*L) &&(abs(Entidad.y)-55)<=abs((i*L)-30)){
               print("W");
               Entidad.x=500;
               Entidad.y=-300;         
             }
           //}
         //}
       }    
   
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
       rect(j*A,i*160,60,30);

       if((Entidad.x+55)>=(j*A) && (Entidad.x+55)<=((j*A)+60)){
         if((Entidad.x-55)>=(j*A) && (Entidad.x-55)<=((j*A)+60)){
           
           if((abs(Entidad.y)+55)>=(i*L) &&(abs(Entidad.y)+55)<=((i*L)+30)){
             if((abs(Entidad.y)-55)>=(i*L) &&(abs(Entidad.y)-55)<=((i*L)+30)){
               Entidad.x=j*60;
               Entidad.y=i*120;         
             }
           }
         }
       } 
       
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
       
       if((Entidad.x+55)>=(j*A) && (Entidad.x+55)<=((j*A)+60)){
         if((Entidad.x-55)>=(j*A) && (Entidad.x-55)<=((j*A)+60)){
           
           if((abs(Entidad.y)+55)>=(i*L) &&(abs(Entidad.y)+55)<=((i*L)+30)){
             if((abs(Entidad.y)-55)>=(i*L) &&(abs(Entidad.y)-55)<=((i*L)+30)){
               Entidad.x=j*60;
               Entidad.y=i*120;         
             }
           }
         }
       }        
       
       
       
       
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
 case 6:
  translate(-7680,0);
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
 case 7:
   translate(-8960,0);
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
  case 8:
     translate(-10240,0);
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
   case 9:
     translate(-11520,0);
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
   case 10:
       translate(-12800,0);
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
   if(Entidad.x>=(width-300)+12800){
     println("YOU WIN");    
   }
   break;
   
   
   default:
   break;
}
  }
  
  void reinicio(){    
    if(inicial.modo==4){  
       translate(0,-height+40);
    }    
  }
}




//Librerías para los sprites
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
//----------------------------
//Ajustes para las entidades
Sprite Nix,Norman,Sombra;
StopWatch sw = new StopWatch();
//-----------------------------------
Dreamer Entidad;
Monster Dragon;
enemigo Pesadilla;





PImage title, fondo,game_over; //se declara la imagen a utilizar
pantalla inicial;
boton Start,Controls,Credits,Back,tecla_arriba,tecla_abajo,tecla_derecha,tecla_izquierda;
plataformas[] plataforma= new plataformas[10];  //REVISAR SI SE PUEDE LO DEL ARCHIVO DEL TEXTO
suelo base;
void setup(){
 size(1280,720,P2D);
 background(30);
 //-------------------------------Imágenes------------------------------------------
 title = loadImage("titulo_b.png"); //Título
 fondo = loadImage("Sky_2.png");
 game_over= loadImage("Final.png");
 //------------------------------Pantalla de inicio----------------------------------------
 inicial = new pantalla(0); //EL 0 ES DE LA PAN
 //-----------------------------Botones-----------------------------------
 Start = new boton((width/2)-75,(-height/2)+100,150,-50,1,"Start",37,227); //(ubicacion x, y, grosor, largo, que tipo de boton es, nombre, posicion del texto x, y)
 Controls = new boton((width/2)-75,(-height/2)+175,150,-50,2,"Controls",71,152);
 //Teclas de los controles
 tecla_arriba = new boton((width/2)-37.5,(-height/2)-100,75,-75,6,"W",15,410);
 tecla_izquierda = new boton((width/2)-137.5,(-height/2),75,-75,7,"A",11,310);
 tecla_abajo = new boton((width/2)-37.5,(-height/2),75,-75,8,"S",9,310);
 tecla_derecha = new boton((width/2)+62.5,(-height/2),75,-75,9,"D",11,310); //COLOCAR EL DE SALTAR (SI SE PUEDE) 
 //-------
 
 Credits = new boton((width/2)-75,(-height/2)+250,150,-50,3,"Credits",60,73); 
 Back = new boton(30,-30,100,-50,4,"Back",40,-6); 
 //-----------------------------------Juego-------------------------------------
 
 //--------------------------Entidades------------------------------
 

  Norman=new Sprite(this,"dragon_2.png", 2, 2,0); //250x250
  Norman.setFrameSequence(0, 3, 0.3);
  Dragon= new Monster(125,-360);
  
  
  Nix=new Sprite(this,"Nix_2.png", 5, 5,0); //110X110
  Nix.setFrameSequence(0, 7, 0.2);
  Entidad= new Dreamer(500,-80); //110x110
  
  Sombra=new Sprite(this,"Missigno.png", 1, 2,0); //110X110
  Sombra.setFrameSequence(0, 1, 0.2);
  Pesadilla= new enemigo(1000,-80); //110x110


 //----------------------------------Suelo-----------------------------------------
 base = new suelo(-5,-5,width+10,-50); //En y se debe ajustar con lios límites de las barras por abajo
 //--------------------------------Plataformas-----------------------------------
 for(int i=0 ;i<plataforma.length;i++ ){
 plataforma[i]= new plataformas();  
 }

}

void draw(){
  
 translate(0,height);  // Punto de referencia para trabajar mejor
 background(30);
 //Para cambiar de pantalla en pantalla
 inicial.apartado();
  
  //print(keyCode);

  
  if(Entidad.moverse_derecha==true){
    Entidad.mover_derecha(); 
    print("Mueve");
  }
  else{
    print("NO");
  }
  if(Entidad.moverse_izquierda==true){
    Entidad.mover_izquierda(); 
  }      
}


void keyPressed() {
  if(key==CODED){
    key_move(keyCode, true);
  }
  if(key!=CODED){
    key_move(key, true);
  }    
  
} 
void keyReleased(){
  if(key==CODED){
    key_move(keyCode, false);
  }
  if(key!=CODED){
    key_move(key, false);
  }   
  
} 

void key_move(int boton, boolean pulsar){
  if(pulsar==true){
    switch (boton){
        case 'D' :
        Entidad.moverse_derecha=pulsar;
        break;
        case 'd' :
        Entidad.moverse_derecha=pulsar;
        break;        
        
        case 'A':
        Entidad.moverse_izquierda=pulsar;
        break;
        case 'a':
        Entidad.moverse_izquierda=pulsar;
        break;        
        
        case 'W':
        Entidad.saltar();
        break;
        case 'w':
        Entidad.saltar();
        break;
        
        default:
        break;       
    }
  }
}


/*
   if(key=='D'||key=='d' || keyCode==RIGHT){ //baja
     Entidad.mover_derecha();
   }
   if(keyCode==LEFT || key=='A' || key=='a'){ //sube
     Entidad.mover_izquierda();
   }
  if(keyCode==UP||key=='w' || key=='W' || keyCode==BACKSPACE){ //sube
     Entidad.saltar();
   }      */

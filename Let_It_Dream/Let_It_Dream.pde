//ACTIVAR EL SALTO, LOS LIMITES INFERIORES EN Y Y EN EL VOID KEY_MOVE DESCOMENTAR LOS SALTOS
//NOTA: IMPORTANTEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE


//Librerías para los sprites
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
//----------------------------
//Ajustes para las entidades
Sprite Nix,Nix_salto,Nix_izquierda,Nix_Base_Right,Nix_Base_Left,Norman,Sombra,pantalloide;
StopWatch sw = new StopWatch();
//-----------------------------------
//Personajes
Dreamer Entidad;
Monster Dragon;
enemigo Pesadilla;
//Niveles
Escenario nivel_1,gulag;



PImage title, fondo,game_over,GULAG; //se declara la imagen a utilizar
pantalla inicial;
boton Start,Controls,Credits,Back,tecla_arriba,tecla_abajo,tecla_derecha,tecla_izquierda;
suelo base;
void setup(){
 size(1280,720,P2D);
 background(30);
 //-------------------------------Imágenes------------------------------------------
 title = loadImage("titulo_b.png"); //Título
 fondo = loadImage("Sky_2.png");
 game_over= loadImage("Final.png");
 GULAG=loadImage("Final_Gulag.png");
 //------------------------------Pantalla de inicio----------------------------------------
 
 pantalloide=new Sprite(this,"Imagencrack2.png",2,2,0);
 pantalloide.setFrameSequence(0,3,0.3); 
 
 
 inicial = new pantalla(2); //EL 0 ES DE LA PAN
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
 nivel_1=new Escenario(270,5,"nivel_1.txt");
 gulag=new Escenario(30,5,"gulag.txt");
 //--------------------------Entidades------------------------------
 

  Norman=new Sprite(this,"dragon_2.png", 2, 2,0); //250x250
  Norman.setFrameSequence(0, 3, 0.3);
  Dragon= new Monster(125,-360);
  
  Nix_Base_Right=new Sprite(this,"Nix_Base.png", 3, 2,0); //110X110 //DERECHA
  Nix_Base_Right.setFrameSequence(0, 5, 0.2);
  
  Nix_Base_Left=new Sprite(this,"Nix_Base_.png", 3, 2,0); //110X110 //DERECHA
  Nix_Base_Left.setFrameSequence(0, 5, 0.2);
  
  Nix=new Sprite(this,"Nix_2.png", 5, 5,0); //110X110 //DERECHA
  Nix.setFrameSequence(0, 7, 0.2);
  
  Nix_izquierda=new Sprite(this,"Nix_.png", 5, 5,0); //110X110  //SALTAR
  Nix_izquierda.setFrameSequence(0, 7, 0.2);
  
  Nix_salto=new Sprite(this,"Nix_2.png", 5, 5,0); //110X110  //IZQUIERDA
  Nix_salto.setFrameSequence(9, 19, 0.2);  
  
  Entidad= new Dreamer(500,-80); //110x110
  
  Sombra=new Sprite(this,"Missigno.png", 1, 2,0); //110X110
  Sombra.setFrameSequence(0, 1, 0.2);
  Pesadilla= new enemigo(1000,-80); //110x110


 //----------------------------------Suelo-----------------------------------------
 base = new suelo(-5,-5,width+10,-50); //En y se debe ajustar con lios límites de las barras por abajo
 //--------------------------------Plataformas-----------------------------------
}

void draw(){
  
 translate(0,height);  // Punto de referencia para trabajar mejor
 background(30);
 //Para cambiar de pantalla en pantalla
 inicial.apartado();
}


void keyReleased(){
  if(keyPressed==false){
    Entidad.pulsar=false;

    if(Entidad.sentido==1){
      Entidad.sentido=4;      
    }
    if(Entidad.sentido==2){
      Entidad.sentido=5;      
    }   

  }
  else{
    Entidad.pulsar=true;
  }   
} 

void keyPressed() {
  if(keyPressed==true){
    Entidad.pulsar=true;
  }
  else{
    Entidad.pulsar=false; 
  }     
} 
 

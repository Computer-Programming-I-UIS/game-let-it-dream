//--------------Música----------------
import ddf.minim.*; //libreria Minim para el audio

Minim Intro,frase,menu,juego;
AudioPlayer P_1,P_2,P_3,P_4;

music Menu,JUEGO,FRASES,IMAGEN,PERDER,GANAR;
//----------------------------

//Librerías para los sprites
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
//----------------------------
//Ajustes para las entidades
Sprite Nix,Nix_salto,Nix_izquierda,Nix_Base_Right,Nix_Base_Left,Norman,Sombra,pantalloide, fasntasma, Ghost_RIGHT, Ghost_LEFT;
StopWatch sw = new StopWatch();
//-----------------------------------
//Personajes
Dreamer Entidad;
Monster Dragon;
GHOST Ghost;
enemigo Pesadilla;
//Niveles
Escenario nivel_1,nivel_2,nivel_3,gulag,controles;



PImage title, fondo,game_over,GULAG, suelo,pegi,E,Cartel_1,Cartel_2,Cartel_3,Noche,Instrucciones,Mensaje; //se declara la imagen a utilizar
pantalla inicial;
boton Next_1,Next_2,Next_3,Next_3_1,Next_4,Start,Controls,How_to_play,Credits,Back,tecla_arriba,tecla_abajo,tecla_derecha,tecla_izquierda;

void setup(){
 //Música 
  Intro = new Minim(this); //se crea la variable del audio
  P_1 = Intro.loadFile("Rain.mp3"); //se importa el audio del inicio del videojuego de Pac-Man (Créditos en la descripción del programa)
  IMAGEN = new music(4,0);  
  PERDER = new music(7,0); 

  frase = new Minim(this); //se crea la variable del audio
  P_2 = frase.loadFile("Misery.mp3"); //se importa el audio del inicio del videojuego de Pac-Man (Créditos en la descripción del programa)
  FRASES = new music(8,0);
  GANAR = new music (9,0);
  
  menu = new Minim(this); //Menú
  P_3 = menu.loadFile("Music.mp3"); //se importa el audio del inicio del videojuego de Pac-Man (Créditos en la descripción del programa)
  Menu = new music(0,0);
  
  juego = new Minim(this); //se crea la variable del audio
  P_4 = juego.loadFile("E.O.T.L.mp3"); //se importa el audio del inicio del videojuego de Pac-Man (Créditos en la descripción del programa)
  JUEGO = new music(1,0);
  
  
 //--------------------------------------------------------------------------------
 size(1280,720,P2D);
 background(30);
 //-------------------------------Imágenes------------------------------------------
 title = loadImage("titulo_b.png"); //Título
 fondo = loadImage("Sky_2.png");
 game_over= loadImage("Final.png");
 GULAG=loadImage("Final_Gulag.png");
 suelo=loadImage("Suelo_2.png");
 pegi=loadImage("pegi.png");
 E=loadImage("E.png");
 Cartel_1=loadImage("Cartel 1.png");
 Cartel_2=loadImage("Cartel 2.png"); 
 Cartel_3=loadImage("Cartel 3.png"); 

 //-----------------------------------FRASES------------------------------------------
  Next_1 = new boton(width/2-50,-30,90,-50,10,"Next",40,-6); 
 //-----------------------------------HISTORIA----------------------------------------
 Next_2 = new boton(1183,-30,90,-50,11,"Next",40,-6); 
 pantalloide=new Sprite(this,"Imagencrack2.png",2,2,0);
 pantalloide.setFrameSequence(0,3,0.3);  
 
 //-----------------------------------Frases_2-----------------------------------------
 Next_3 = new boton(width/2-50,-30,90,-50,5,"Next",40,-6); 
 //-----------------------------------Frases_2-----------------------------------------
 Next_4 = new boton(1183,-30,90,-50,12,"Next",40,-6); 
 Noche=loadImage("Noche.png");
 //-----------------------------------Pantalla de Instrucciones--------------------------
  Mensaje=loadImage("instrucciones.png");
 //------------------------------Pantalla de inicio----------------------------------------

 inicial = new pantalla(6); //EL 0 ES DE LA PAN
 //-----------------------------Botones-----------------------------------
 Start = new boton((width/2)-75,(-height/2)+75,150,-50,1,"Start",37,250); //(ubicacion x, y, grosor, largo, que tipo de boton es, nombre, posicion del texto x, y)
 Controls = new boton((width/2)-75,(-height/2)+150,150,-50,2,"Controls",71,175);
 How_to_play=new boton((width/2)-110,(-height/2)+225,230,-50,13,"How to play?",107,100);
 //Teclas de los controles
 tecla_arriba = new boton((width/2)-37.5,(-height/2)-100,75,-75,6,"W",15,410);
 tecla_izquierda = new boton((width/2)-137.5,(-height/2),75,-75,7,"A",11,310);
 tecla_abajo = new boton((width/2)-37.5,(-height/2),75,-75,8,"S",9,310);
 tecla_derecha = new boton((width/2)+62.5,(-height/2),75,-75,9,"D",11,310); //COLOCAR EL DE SALTAR (SI SE PUEDE) 
 //-------
 
 Credits = new boton((width/2)-75,(-height/2)+300,150,-50,3,"Credits",60,23); 
 Back = new boton(30,-30,100,-50,4,"Back",40,-6); 
 //-----------------------------------Juego-------------------------------------
 nivel_1=new Escenario(270,5,"nivel_1.txt");
 nivel_2=new Escenario(270,5,"nivel_2.txt");
 nivel_3=new Escenario(270,5,"nivel_3.txt");

 controles=new Escenario(40,6,"controles.txt");
 
 //-----------------------------------Gulag-------------------------------------
 gulag=new Escenario(30,5,"gulag.txt");
 
 Ghost_RIGHT = new Sprite(this,"Ghost_.png", 2, 3,0); //250x250
 Ghost_RIGHT.setFrameSequence(0, 4, 0.3);
 
 Ghost_LEFT = new Sprite(this,"Ghost.png", 2, 3,0); //250x250
 Ghost_LEFT.setFrameSequence(0, 4, 0.3);
 
 Ghost= new GHOST(125,-50);
 //--------------------------Entidades------------------------------------------

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
  Sombra.setFrameSequence(0, 1, 0.4);
  Pesadilla= new enemigo(width/2,-(height/2)+150); //110x110

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
 

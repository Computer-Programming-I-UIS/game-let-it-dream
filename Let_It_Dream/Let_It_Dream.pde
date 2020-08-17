
//Librerías para los sprites
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;
//----------------------------
//Ajustes para las entidades
Sprite Nix, Dragon;
StopWatch sw = new StopWatch();
//-----------------------------------
Dreamer Entidad;






PImage title; //se declara la imagen a utilizar
pantalla inicial;
boton Start,Controls,Credits,Back;
plataformas plataforma;
suelo base;
void setup(){
 size(1280,720,P2D);
 background(30);
 //-------------------------------Imágenes------------------------------------------
 title = loadImage("titulo_b.png");
 //------------------------------Pantalla de inicio----------------------------------------
 inicial = new pantalla(0);
 //-----------------------------Botones-----------------------------------
 Start = new boton((width/2)-75,(-height/2)+100,150,-50,1,"Start",37,227); //(ubicacion x, y, grosor, largo, que tipo de boton es, nombre, posicion del texto x, y)
 Controls = new boton((width/2)-75,(-height/2)+175,150,-50,2,"Controls",71,152);
 Credits = new boton((width/2)-75,(-height/2)+250,150,-50,3,"Credits",60,73); 
 Back = new boton(30,-30,100,-50,4,"Back",40,-6); 
 //-----------------------------------Juego-------------------------------------
 
 //--------------------------Entidades------------------------------
  Nix=new Sprite(this,"Nix_2.png", 5, 5,0); //110X110
  Nix.setFrameSequence(0, 7, 0.2);
  Entidad= new Dreamer(0,-150);

 //----------------------------------Suelo-----------------------------------------
 base = new suelo(-5,-5,width+10,-150); //En y se debe ajustar con lios límites de las barras por abajo
 //--------------------------------Plataformas-----------------------------------
 plataforma = new plataformas(0,0,100,20);
}

void draw(){
 translate(0,height);  // Punto de referencia para trabajar mejor
 background(30);
 //Para cambiar de pantalla en pantalla
 inicial.apartado();
  
  
  
}

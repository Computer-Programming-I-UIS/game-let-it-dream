


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





PImage title, fondo; //se declara la imagen a utilizar
pantalla inicial;
boton Start,Controls,Credits,Back;
plataformas[] plataforma= new plataformas[10];  //REVISAR SI SE PUEDE LO DEL ARCHIVO DEL TEXTO
suelo base;
void setup(){
 size(1280,720,P2D);
 background(30);
 //-------------------------------Imágenes------------------------------------------
 title = loadImage("titulo_b.png"); //Título
 fondo = loadImage("Sky_2.png");
 //------------------------------Pantalla de inicio----------------------------------------
 inicial = new pantalla(0); //EL 0 ES DE LA PAN
 //-----------------------------Botones-----------------------------------
 Start = new boton((width/2)-75,(-height/2)+100,150,-50,1,"Start",37,227); //(ubicacion x, y, grosor, largo, que tipo de boton es, nombre, posicion del texto x, y)
 Controls = new boton((width/2)-75,(-height/2)+175,150,-50,2,"Controls",71,152);
 Credits = new boton((width/2)-75,(-height/2)+250,150,-50,3,"Credits",60,73); 
 Back = new boton(30,-30,100,-50,4,"Back",40,-6); 
 //-----------------------------------Juego-------------------------------------
 
 //--------------------------Entidades------------------------------
 

  Norman=new Sprite(this,"dragon_2.png", 2, 2,0); //110X110
  Norman.setFrameSequence(0, 3, 0.3);
  Dragon= new Monster(120,-360);
  
  
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
  
}

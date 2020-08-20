Escenario nivel;
cuadro personaje;

void setup(){

nivel=new Escenario(200,6,"hola.txt");
personaje=new cuadro(0,300);
//nivel.obtenerDatos();
  
size(1280,720);
//nivel.crearEscenario();
  
}
void draw(){
background(0);
nivel.obtenerDatos();
personaje.cuadrin();
nivel.crearEscenario(personaje);
//nivel.move();
stroke(255,12,12);
line(0,640,1280,640);
stroke(255);
}

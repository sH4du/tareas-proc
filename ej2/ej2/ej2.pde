//para activar la animacion, haga click en el icono "encender", que se encuentra en la esquina superior izquierda, representado con un triangulo azul dentro de un circulo blanco
//para detener la animacion, haga click en el icono "detener", que se encuentra exactamente a un lado del icono "encender", representado con cuadraro azul dentro de un circulo blanco

float x = 0; // declaro x como la variable para controlar la posición horizontal del círculo

void setup(){
  // size(800, 1000);
  fullScreen(); // para que se muestre la pantalla completa
  frameRate(10); // cuadros por segundo para la animacion
   noCursor(); // se esconde el cursor en la imagen
   }

void draw(){
  background(173,37,168);
  PImage img; // declaro la variable de la imagen
  img = loadImage("/assets/kiosko.jpg"); // es la ruta de la imagen
  image(img, 330, 20); // se carga la imagen en una posición xy
  
// Dibuja el circulo
  fill(0, 0, 255); // el color del circulo sera azul
  ellipse(x, height/2, 300, 300); // círculo en posición (x, altura/2)

// Mueve el círculo de izquierda a derecha
  x += 1; // se aumenta la posición horizontal en 1 pixel en cada frame

// Si el circulo sale del lienzo, vuelve a empezar desde la izquierda
  if (x > width) {
    x = 0;
  }

// Agrega texto dentro del círculo
  fill(255, 153, 0); // el color sera naranja para el texto
  textAlign(CENTER, CENTER); // se alinea el texto al centro del circulo
  text("28", x, height/2); // se coloca el texto dentro del circulo
   

// Agrega tres líneas de texto en la esquina inferior derecha
  textAlign(RIGHT, BOTTOM); // Alinea el texto a la derecha y abajo
  textSize(45); // Tamaño de la fuente
   text("D-DAY", width - 20, height - 300); // primer línea de texto, nombre de la sala
   text("Min YoonGi", width - 10, height - 200); // segunda línea de texto, nombre del artista, quien es el autor
   text("10 al 29 de septiembre de 2024", width - 5, height - 100); // tercer línea de texto, fecha de duracion de la exposicion

}

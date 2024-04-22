// arrays
int[] rX = {20, 50, 80, 110, 189}; // declaro la variable arreglo rX
int[] rY = {10, 120, 340, 200, 150}; // declaro la varibale arreglo rY

void setup(){
  size(600, 600); // creo el canvas donde saldran las figuras
}

void draw(){
  background(234, 25, 38); // le doy color al canvas segun RGB
  fill(178, 255, 51); // le doy color a las figuras segun RGB
  rect(rX[0], rY[0], 100, 60);
  rect(rX[1], rY[1], 70, 70);
  rect(rX[2], rY[2], 73, 45);
  rect(rX[3], rY[3], 90, 48);
  rect(rX[4], rY[4], 20, 40); 
  line(190, 50, 140, 0);
  ellipse(300, 300, 30, 60);
}

// interactividad con letras
void keyPressed() {
  if (key == 'w');
  {
    textSize(40);
    text("we are bulletproof", 250, 450);
  }
}

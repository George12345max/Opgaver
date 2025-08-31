/* 
Opgave 5 – gør sketchen kompilérbar:

5.a  Erklær variablen circleSize (bruges i setup). Brug 'float', da størrelsen kan være et kommatal.
5.b  Erklær variablen numberOfCircles (bruges i både setup og draw). Brug 'int', da det er et helt tal.
5.c  Erklær variablerne x og y (bruges i draw til ellipse-position). Brug 'float'.
5.d  Initialisér de to counter-variabler (counter og rowCounter) til 0.
*/

// 5.a – circleSize: flydende tal til cirkelstørrelse
float circleSize;

// 5.b – numberOfCircles: heltal for hvor mange cirkler pr. række/kolonne
int numberOfCircles;

// 5.c – x og y: positionen for næste cirkel, som floats
float x, y;

// 5.d – countere starter på 0 (krævet for at logikken i draw virker fra første frame)
int counter = 0;
int rowCounter = 0;

// Valgfrit til senere (step 6.a) – farver til fill()
int red, green, blue;

void setup(){
  size(400, 400);

  // Sæt antal cirkler pr. række
  numberOfCircles = 30;

  // Beregner cirkelstørrelsen ud fra canvas-bredden.
  // (float) sikrer flydende division og ikke heltalsdivision.
  circleSize = (float) width / numberOfCircles;

  // Tegner ellipser fra hjørnet, så (x,y) er øverste-venstre hjørne
  ellipseMode(CORNER);
}

void draw(){
  // 5.c i bruger jeg: beregn positionen for den aktuelle cirkel
  x = circleSize * counter;
  y = circleSize * rowCounter;


  // Tegn en cirkel i den beregnede celle
  ellipse(x, y, circleSize, circleSize);

  /* 
   Forklaring af de to linjer nedenfor:
   - Jeg bruger modulus (%) til at finde ud af, hvornår vi har tegnet 'numberOfCircles' cirkler i en række.
   - Ternary-operatoren (betingelse ? værdiHvisSand : værdiHvisFalsk) bestemmer næste værdi.
  */

  // Hvis frameCount er deleligt med numberOfCircles, nulstilles counter, ellers øges den med 1
  counter = (frameCount % numberOfCircles == 0) ? 0 : counter + 1;

  // Når counter nulstilles (vi er forbi en hel række), går vi en række ned
  rowCounter = (counter == 0) ? rowCounter + 1 : rowCounter;
}

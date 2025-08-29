/*void setup(){
String address;

int math=3+7;
int mathdiv=8/4;
String besked = "Halløj";
println(besked);
} */
// Globale variabler
String address;
int math;
int mathdiv;
String besked;

void setup() {
  // 4.b: Tildel værdier til variablerne
  address = "Firskovvej";
  math = 3 + 7;
  mathdiv = 8 / 4;
  besked = "Halløj";

  // 4.c: Print variablerne med labels
  println("Adresse: " + address);
  println("Math: " + math);
  println("MathDiv: " + mathdiv);
  println("Besked: " + besked);

  // 4.d: Tildel helt nye værdier og print igen
  address = "Bakkevej";
  math = 10;
  mathdiv = 2;
  besked = "Hej med dig";

  println("Adresse (ny): " + address);
  println("Math (ny): " + math);
  println("MathDiv (ny): " + mathdiv);
  println("Besked (ny): " + besked);

  // 4.e: Tilføj nye værdier (uden at overskrive) og print igen
  address += " 42";
  math += 100;
  mathdiv += 50;
  besked += " - hvordan går det?";

  println("Adresse (+): " + address);
  println("Math (+): " + math);
  println("MathDiv (+): " + mathdiv);
  println("Besked (+): " + besked);

  // 4.f: Tæl alle numeriske variabler op med 1 og print
  math += 1;
  mathdiv += 1;
  println("Math (+1): " + math);
  println("MathDiv (+1): " + mathdiv);

  // 4.g: Tæl alle numeriske variabler op med 3 og print
  math += 3;
  mathdiv += 3;
  println("Math (+3): " + math);
  println("MathDiv (+3): " + mathdiv);

  // 4.h: Tæl alle numeriske variabler ned med 1 og print
  math -= 1;
  mathdiv -= 1;
  println("Math (-1): " + math);
  println("MathDiv (-1): " + mathdiv);

  noLoop(); // stopper draw() hvis det ikke bruges
}

void draw() {
  
}

// Code by Rupert Russell
// 29 July 2018
// MSR Reticle
// artwork available on redbubble at: https://www.redbubble.com/people/rupertrussell
// https://www.berettadefensetechnologies.com/sites/all/themes/bdt_2015/templates/pages/download.php?file=msr-reticle-subtention.png
// https://www.berettadefensetechnologies.com/rifle-scopes/m5xi-military-5-25x56-rifle-scope

float A = 100;
float B = 50;
float C = 10;
float D = 6;
float E = 4;
float F = 1.7;
float G = 0.5;
float H = 0.3;
float J = 2;
float K = 20;
float L = 0.2;
float M = 1;
float N = 8;
float P = 15;
float Q = 40;
float R = 12.5;
float S = 25;

float scale = 2.5; //4
float outerEllipse;  
float innerEllipse;

void setup() {
  size(800, 800);  
  noLoop();
  noFill();
  strokeCap(SQUARE);
  background(255);
  A = A * scale;
  B = B * scale;
  C = C * scale;
  D = D * scale;
  E = E * scale;
  F = F * scale;
  G = G * scale;
  H = H * scale;
  J = J * scale;
  K = K * scale;
  L = L * scale;
  M = M * scale;
  N = N * scale;
  P = P * scale;
  Q = Q * scale;
  R = R * scale;
  S = S * scale;

  innerEllipse = B * 15;
}

void draw() {
  translate(width/2, height/2);
  ellipseMode(CENTER);

  //test line B
  //line(-B, -B, 0, -B);
  //line(-B, -B, -B, 0);

  //inner ellipse;
  stroke(0);
  strokeWeight(R);
  ellipse(0, 0, innerEllipse, innerEllipse);

  //outer ellipse;
  strokeWeight(G);
  ellipse(0, 0, innerEllipse + K, innerEllipse + K);

  left();
  pushMatrix();

  //horizontal small grid left
  strokeWeight(G);
  stroke(0, 0, 0);
  for (int x = 0; x < 4; x++) {
    line(x*J - J*24, -F, x*J - J*24, 0);
  }   

  //horizontal thick left
  stroke(0);
  strokeWeight(D);
  line(-innerEllipse /2, 0, -B, 0);

  rotate(radians(90));
  left();

  //horizontal small grid left
  strokeWeight(G);
  for (int x = 0; x < 4; x++) {
    line(x*J - J*24, F, x*J - J*24, 0);
  }   




  //horizontal thick left
  stroke(0);
  strokeWeight(D);
  line(-innerEllipse /2, 0, -B, 0);


  rotate(radians(90));
  left();

  //horizontal small grid left
  strokeWeight(G);
  for (int x = 0; x < 4; x++) {
    line(x*J - J*24, F, x*J - J*24, 0);
  }   

  //horizontal thick left
  stroke(0);
  strokeWeight(D);
  line(-innerEllipse /2, 0, -B, 0);

  rotate(radians(90));
  left();

  //horizontal small grid left
  strokeWeight(G);
  for (int x = 0; x < 4; x++) {
    line(x*J - J*24, F, x*J - J*24, 0);
  }   


  // follow with a single C line at 5th C for the lowerr Vertical hairlines
  // stroke(255, 0, 0);
  line(5* -C, -E/2, 5 * -C, E/2);
  stroke(0);

  popMatrix();

  // Center dot
  noStroke();
  fill(255, 0, 0);
  ellipse(0, 0, J/2, J/2);

  // Grid bottom
  strokeWeight(G);

  for (int x = 0; x < 5; x ++) {
    //  line(-K/2, x * A, K/2, x * A);
  }

  save("reticle_800x800.png");
  println("saved");
  // exit();
}

void left() {

  //horizontal left crosshair
  strokeWeight(G);
  stroke(0, 0, 0);
  line(-innerEllipse /2, 0, -C /2, 0);

  //Horizontal Red Center Cross left
  strokeWeight(G);
  stroke(255, 0, 0);
  line(-C /2 + J, 0, -J, 0);

  //horizontal large grid left
  strokeWeight(G);
  stroke(0);
  for (int x = 0; x < 6; x++) {
    line(x * B - B*7, -K/2, x * B - B*7, +K/2);
  }

  // first horizontal C grid left
  for (float x = 1; x < 5; x++) {
    line(x * -C, -E/2, x * -C, E/2);
  }   

  // second horizontal C grid left
  for (float x = 6; x < 35; x++) {
    line(x * -C, -E/2, x * -C, E/2);
  }   

  strokeWeight(H);
  //first horizontal 1/2 C grid left
  for (float x = 0.5; x < 4; x++) {
    line(x * -C, -F/2, x * -C, F/2);
  }

  //second horizontal 1/2 C grid left
  for (float x = 5.5; x < 35; x++) {
    line(x * -C, -F/2, x * -C, F/2);
  }
}

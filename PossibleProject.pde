//after 5 consecutive hits then a stronger cannon shot
//add menu
//add boss
//add moving sharks

float cannonX, cannonY; 
float cannonLength = 40; // How long the cannon on the tank extends
float cannonAngle = PI*3/4;
float cannonAngleStep = 0.005; // step to change cannonAngle 
float cannonPower = 0;

size(1000, 600);
PImage pm = loadImage("sky.jpg");

image(pm, 0, 0, width, height);


cannonX = width-225; 
cannonY = height/2 - 25;
//void drawCannon(){ 
stroke(0); // set darkolivegreen color to draw the cannon
fill(150);
smooth(); 
 // invert the sign of the angle in order to point the cannon upwards (and not downwards) 
//arc(cannonX - 8, cannonY, cannonLength*3/4, cannonLength/2, PI/4, 3*PI/2);

fill(150);
ellipse(cannonX - 4, cannonY - 3, 20, 20); 
strokeWeight(10);
line(cannonX, cannonY, cannonX+cannonLength*cos(-cannonAngle), cannonY+cannonLength*sin(-cannonAngle));
strokeWeight(1); // reset to default widht
//ellipse(cannonX - 5, cannonY, 20, 20); 


fill(150);
ellipse(cannonX, cannonY, 20, 20); 

fill(0);
ellipse(cannonX, cannonY, 10, 10); 
//}

rectMode(CENTER);
noStroke();

fill(#0C5F07);
rect(200, height - 50, 400, 100);

fill(100);
triangle(600, height - 45, 615, height - 57, 615, height - 45);
fill(100);
triangle(500, height - 45, 485, height - 57, 485, height - 45);
fill(0, 0, 255);
rect(550, height - 25, 300, 50);

fill(0, 0, 255);
triangle(877, height - 380, 830, height - 400, 877, height - 425);

fill(0);
rect(875, height - 350, 5, 150);

fill(#62450C);
rect(550, height - 92, 300, 15);

fill(#0C5F07);
rect(850, height - 50, 400, 100);

fill(#4A4D4A);
rect(875, height - 200, 250, 200);

fill(20);
arc(875, height - 100, 100, 225, PI, 2*PI);

fill(#4A4D4A);
rect(776, 300, 52, 50);
rect(754, 275, 8, 10);
rect(769, 275, 8, 10);
rect(784, 275, 8, 10);
rect(798, 275, 8, 10);

fill(20);
arc(776, 315, 20, 60, PI, 2*PI);

rect(840, height - 275, 15, 15);
rect(875, height - 275, 15, 15);
rect(910, height - 275, 15, 15);

fill(#4A4D4A);
rect(width - 25, 300, 50, 50);
rect(width-46, 275, 8, 10);
rect(width-32, 275, 8, 10);
rect(width-18, 275, 8, 10);
rect(width-4, 275, 8, 10);

fill(20);
arc(width - 25, 315, 20, 60, PI, 2*PI);
float sliderTab;
boolean sliderClicked;
int colourNumber;
//= map(sliderTab, 100, 700, 0, 255);


void setup(){
  size(800, 800); 
  sliderTab = 100;
  sliderClicked = false;
}

void draw(){
  background(255);
  fill(50);
  rectMode(CORNER);
  rect(400, 100, 5, 600); 
  
  mouseY = constrain(mouseY, 100, 700);
  slider();
  
  showRed();
}

void slider(){
  colourNumber = int(map(sliderTab, 100, 700, 255, 0));

  
  if(mouseX >= 375 && mouseX <= 425 && mouseY >= 100 && mouseY <= 700 && mousePressed){
    sliderClicked = true;
  }
  
  if (sliderClicked){
  sliderTab = mouseY; 
  }
  
  fill(150);
  rectMode(CENTER);
  rect(402.5, sliderTab, 50, 20);
  
  fill(0);
  
  text(colourNumber, 100, 100);
}

void mouseReleased(){
  sliderClicked = false;
}

void showRed(){
  fill(colourNumber, 0 ,0);
  rect(100, 150, 100, 100);
}

//hello
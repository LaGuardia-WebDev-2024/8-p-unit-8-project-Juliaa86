//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);

};
//🎯Variable Declarations Go Here
var leftX = 90;
var rightX = 520;
var RainOn = 0
var RainM = 0

//🟢draw Function - will run on repeat
draw = function(){
// clouds 
  fill(255, 255, 255);

  // left cloud
  strokeWeight(2)
  stroke(0,0,0)
  ellipse(leftX, 50, 126, 97);
  ellipse(leftX+62, 50, 70, 60);
  ellipse(leftX-62, 50, 70, 60);

  // right cloud
  ellipse(rightX, 52, 126, 97);
  ellipse(rightX+62, 52, 70, 60);
  ellipse(rightX-62, 52, 70, 60);;

  // Rain
  strokeWeight(8)
  stroke(0,0,200,RainOn*255)
 point(20,5+RainM)
   point(50,5+RainM)
  point(100,5+RainM)
   point(150,5+RainM)
  point(200,5+RainM)
   point(250,5+RainM)
  point(300,5+RainM)
   point(350,5+RainM)
  point(400,5+RainM)
   point(450,5+RainM)
    point(500,5+RainM)
   point(550,5+RainM)
   point(600,5+RainM)

   rightX = rightX -1
  leftX = leftX +1;
  RainM+= 1;

  if(leftX > 600){leftX = -100}
  if(rightX < -50){rightX = 600}

  if(keyPressed){
    if(key == 'R' || key == 'r'){
      RainOn = 1;
    }
  }
}

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
drawWave(mouseX, mouseY)
drawSwimmer(mouseX+50,mouseY)
drawShark(mouseX+100,mouseY)
}

//🟡drawFish Function - will run when called
var drawWave = function(WaveX, WaveY){
  if(WaveY<100){ textSize(20+50*RainOn)}
  else if(WaveY<200){textSize(30+50*RainOn)}
  else if(WaveY<300){textSize(50+60*RainOn)}
  else if(WaveY<500){textSize(80+60*RainOn)}
  else{textSize(200)}
  text("🌊", WaveX, WaveY);
};
var drawSwimmer = function(SwimmerX, SwimmerY){
text("🏊‍♂️", SwimmerX,SwimmerY);
}
var drawShark = function(SharkX, SharkY){
  text("🦈", SharkX,SharkY );
}





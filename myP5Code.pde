//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);

};
//🎯Variable Declarations Go Here
var leftX = 90;
var rightX = 520;
var RainOn = 0

//🟢draw Function - will run on repeat
draw = function(){
// clouds 
  fill(255, 255, 255);

  // left cloud
  ellipse(leftX, 50, 126, 97);
  ellipse(leftX+62, 50, 70, 60);
  ellipse(leftX-62, 50, 70, 60);

  // right cloud
  ellipse(rightX, 52, 126, 97);
  ellipse(rightX+62, 52, 70, 60);
  ellipse(rightX-62, 52, 70, 60);;

  // Rain
  point()

   rightX = rightX -1
  leftX = leftX +1;

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
}

//🟡drawFish Function - will run when called
var drawFish = function(WaveX, WaveY){
  if(WaveY<100){ textSize(20+50*RainOn)}
  else if(WaveY<200){textSize(30+50*RainOn)}
  else if(WaveY<300){textSize(50+60*RainOn)}
  else if(WaveY<500){textSize(80+60*RainOn)}
  else{textSize(200)}
  text("🌊", WaveX, WaveY);
};





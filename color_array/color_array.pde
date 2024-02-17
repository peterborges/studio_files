 color[] mycolours = {
   color(215,0,0),
   color(11,17,3),
   color(32,75,8),
   color(86,138,20),
   color(56,108,12),color(247,94,43),
            color(150,105,17),color(44,45,9),color(236,59,25),
            color(246,130,49),color(114,59,13),color(97,100,25),
            color(146,133,23),color(127,160,40),color(173,70,16),
            color(203,90,27)};

 void setup(){
   // size should always be the first statement in setup
   // it wasn't a problem in this case but it's a good habit to get into
   size(800,600);
   smooth();
   // slow things down a little so you can see changes happening...
   frameRate(1);
 }
 
 void draw(){
   // You can pass the colour direct to fill like this
   // fill(mycolours[(int) random(mycolours.length)]);
   // or to make it a little clearer:
   color myColour = mycolours[(int) random(mycolours.length)];
   fill(myColour);
   rectMode(CENTER);
   rect(width/2,height/2,400,400);

 } 

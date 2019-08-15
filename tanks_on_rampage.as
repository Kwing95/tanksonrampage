stop();
//TEXT
_root.createTextField("Title",1,10,10,500,500);
Title.selectable=false;/**/Title.multiline=true;
Title.wordWrap=true;/**/Title.border=false;
TitleF=new TextFormat();/**/TitleF.color=0x000000;
Title.text="Jamrock's Lucky Day   (A.K.A. Tanks on Rampage)\n\nTrue to Jamrock's inquiry in the thread shown below, I have created the film in his description entirely out of ActionScript 2.0, using the Flash API tool. Sorry if it looks sloppy, but I made this ENTIRELY out of script! Please click both links below before watching! ~ Kwing\n\nPlay\n\nJamrock's Thread\n\nSource Code";
Title.setTextFormat(TitleF);
//PLAY BUTTON
var pBut:MovieClip = createEmptyMovieClip("playButton", 2);
pBut.lineStyle(1, 0x000000,100);/**/pBut.beginFill(0x000000,0);
pBut.moveTo(5,100);/**/pBut.lineTo(100, 100);
pBut.lineTo(100,120);/**/pBut.lineTo(5, 120);
pBut.onRelease=function(){/**/isPlaying=true;/**/}
//HISTORY BUTTON
var jBut:MovieClip=createEmptyMovieClip("histButton", 3);
jBut.lineStyle(1,0x000000,100);/**/jBut.beginFill(0x000000, 0);
jBut.moveTo(5,130);/**/jBut.lineTo(100,130);
jBut.lineTo(100,150);/**/jBut.lineTo(5,150);
jBut.onRelease=function(){
getURL('http://www.newgrounds.com/bbs/topic/185946','_blank');
}
//SOURCE CODE BUTTON
var sBut:MovieClip = createEmptyMovieClip("sourceButton", 4);
sBut.lineStyle(1,0x000000,100);/**/sBut.beginFill(0x000000, 0);
sBut.moveTo(5,160);/**/sBut.lineTo(100, 160);
sBut.lineTo(100, 180);/**/sBut.lineTo(5, 180);
sBut.onRelease=function(){
getURL('http://www.newgrounds.com/bbs/topic/xxxxxx','_blank');
}
//ANIMATION SETUP
step1=false;step2=false;step3=false;step4=false;step5=false;
step6=false;step7=false;step8=false;step9=false;step10=false;
step11=false;step12=false;
counter=0;
onEnterFrame=function(){/**/if(isPlaying==true){
TitleF.color=0xFFFFFF;/**/Title.setTextFormat(TitleF);
pBut._x-=counter;/**/jBut._x-=counter*2;
sBut._x-=counter*3;/**/counter+=1;/**/}
//CREATE BACKGROUND, TANK, BUS
if(counter==20&&step1==false){
//CREATE SKY
var bg:MovieClip = createEmptyMovieClip("background", 5);
bg.lineStyle(1,0x000000,0);/**/bg.beginFill(0xFF9900,100);
bg.moveTo(0,0);/**/bg.lineTo(550,0);
bg.lineTo(550,200);/**/bg.lineTo(0,200);
//CREATE ROAD
var bg2:MovieClip = createEmptyMovieClip("roadPanel", 6);
bg2.lineStyle(1,0x000000,0);/**/bg2.beginFill(0x333333, 100);
bg2.moveTo(0,200);/**/bg2.lineTo(550,200);
bg2.lineTo(550,400);/**/bg2.lineTo(0,400);
//CREATE SUNSET
var bg3:MovieClip = createEmptyMovieClip("sunsetGleam", 7);
bg3.lineStyle(50, 0xFFFFFF, 50);
bg3.moveTo(267.5, 200);/**/bg3.lineTo(283.5, 200);
//CREATE BUS SHELL, STARTING WITH TIRES
var bus:MovieClip = createEmptyMovieClip("busMC", 8);
bus.lineStyle(22, 0x666666, 100);
bus.moveTo(306,285);/**/bus.lineTo(310, 285);
bus.moveTo(430.9,285);/**/bus.lineTo(434.9,285);
//SWITCH TO HULL
bus.lineStyle(1, 0x000000, 100);
bus.beginFill(0xFFFF00,100);/**/bus.moveTo(279,227);
bus.lineTo(460.9,227);/**/bus.lineTo(460.9,278);
bus.lineTo(279,278);/**/bus.lineTo(279,227);
//SWITCH TO FRONT TIRES
bus.lineStyle(22, 0x999999,100);/**/bus.moveTo(295,285);
bus.lineTo(299,285);/**/bus.moveTo(443.9, 285);
bus.lineTo(447.9, 285);
//CREATE TANK, STARTING WITH COCKPIT
var tank:MovieClip = createEmptyMovieClip("tankMC", 9);
tank.lineStyle(1,0x000000,100);
tank.beginFill(0x006600,100);/**/tank.moveTo(131,209);
tank.lineTo(177,209);/**/tank.lineTo(192,228);
tank.lineTo(115,228);
//CREATE GUN
tank.beginFill(0x006600,100);/**/tank.moveTo(181,213);
tank.lineTo(246,213);/**/tank.lineTo(246,222);
tank.lineTo(188,222);
//CREATE HULL
tank.beginFill(0x006600,100);/**/tank.moveTo(98, 228);
tank.lineTo(204,228);/**/tank.lineTo(204,276);
tank.lineTo(99,276);/**/tank.lineTo(98,228);
//CREATE TREADS
tank.lineStyle(22,0x666666,100);/**/tank.moveTo(99,284);
tank.lineTo(202,284);/**/step1=true;/**/}
//TANK MOVES TOWARD BUS
if(counter>25&&step2==false){
if(!tankMC.hitTest(busMC)){
tankMC._x+=2;
}else{
busMC._yscale-=1;/**/busMC._y+=3;/**/tankMC._y+=2;
tankMC._rotation-=1;/**/tankMC._x-=2;
}}
//TANK MOUNTS BUS
if(counter>60&&step3==false){
step2=true;/**/tankMC._x+=4;/**/tankMC._y-=4;
if(tankMC._rotation<0){
tankMC._rotation+=1;
}}
//TANK CRUSHES BUS
if(counter>80&&step4==false){
step3=true;
if(tankMC._x<225){
tankMC._x+=2;/**/tankMC._y+=0.5;/**/busMC._yscale-=0.5;
busMC._y+=1.5;
}else{
step4=true;
}}
//OTTO JUMPS OUT
if(step4==true&&step5==false){
//OTTO'S NAMETAG
_root.createTextField("NameTag",10,420,240,60,30);
NameTag.selectable=false;/**/NameTag.multiline=true;
NameTag.wordWrap=true;/**/NameTag.border=false;
NameTag.text="<- Otto";
NameTag.setTextFormat(TitleF);
//CREATE OTTO
var otto:MovieClip = createEmptyMovieClip("ottoMC", 11);
otto.lineStyle(9, 0x000000, 100);
otto.moveTo(395.5,239);/**/otto.lineTo(387.9,251);
otto.lineTo(356.9,236);/**/otto.lineTo(354.9,222);
otto.moveTo(378.9,287);/**/otto.lineTo(370.9,259);
otto.lineTo(356.9,254);/**/otto.lineTo(349.9,265);
otto.moveTo(370.9,258);/**/otto.lineTo(370.9,242);
otto.lineStyle(25, 0x000000, 100);
otto.moveTo(374.9,234);/**/otto.lineTo(375.9,229);
step5=true;/**/grav=13;
}
if(step5==true&&step6==false){
//MAKES OTTO JUMP
ottoMC._y-=grav;/**/grav-=1;/**/if(grav<-12){/**/step6=true;
}}
if(step6==true&&step7==false){
//RESET AND RECREATE LANDING OTTO
ottoMC.unloadMovie();/**/otto=undefined;
var otto:MovieClip = createEmptyMovieClip("ottoMC2", 12);
otto.lineStyle(9, 0x000000, 100);
otto.moveTo(399.8,285);/**/otto.lineTo(384.6,275.8);//RBody
otto.lineTo(383.6,255.8);/**/otto.lineTo(378.6,236.8);
otto.lineTo(395.6,231.8);/**/otto.lineTo(392.6,242.8);//RBodyE
otto.moveTo(353.6,238.8);/**/otto.lineTo(365.6,246.5);//LArm
otto.lineTo(378.6,236.8);
otto.moveTo(374.6,290.5);/**/otto.lineTo(367.6,272.8);//LLeg
otto.lineTo(383.6,255.8);
otto.lineStyle(25, 0x000000, 100);//Head Size
otto.moveTo(373.6,230.8);/**/otto.lineTo(370.6,226.8);
step7=true;grav=-10;}
if(step7==true&&step8==false){
//OTTO JUMPS AGAIN
if(grav<10){;ottoMC2._y+=grav;/**/grav++;}
if(counter>180){;step8=true;}}
if(step8==true&&step9==false){
//CREATE TANK DRIVER
var tdriver:MovieClip = createEmptyMovieClip("tdriverMC", 13);
tdriver.lineStyle(9, 0x000000, 100);
tdriver.moveTo(389.6,207.8);/**/tdriver.lineTo(392.6,193.8);
tdriver.lineTo(373.6,189.8);/**/tdriver.lineTo(371.6,167.8);
tdriver.lineTo(386.6,168.8);/**/tdriver.lineTo(395.6,163.8);
tdriver.moveTo(371.6,167.8);/**/tdriver.lineTo(382.6,179.8);
tdriver.lineTo(394.6,179.8);//BOTTOM ARM
tdriver.moveTo(373.6,189.8);/**/tdriver.lineTo(379.6,202.8);
tdriver.lineTo(366.6,209.8);//LEFT LEG
tdriver.lineStyle(25, 0x000000, 100);//Head Size
tdriver.moveTo(371.6,160.8);/**/tdriver.lineTo(370.6,156.8);
step9=true;}
if(step9==true&&step10==false){
//DRIVER IS EJECTED FROM TANK
tdriverMC._rotation-=2;/**/tdriverMC._x-=7;
tdriverMC._y+=4-tdriverMC._rotation;
if(counter>200){;step10=true;}}
if(step10==true&&step11==false){
//DELETE OLD OTTO AND TANK
tank=undefined;/**/tankMC.unloadMovie();
otto=undefined;/**/ottoMC2.unloadMovie();
//CREATE 3D TANK
var tank:MovieClip = createEmptyMovieClip("tankMC2", 14);
tank.lineStyle(1,0x000000,100);
tank.beginFill(0x006600,100);/**/tank.moveTo(315.6,174.3);
tank.lineTo(312.6,174.3);/**/tank.lineTo(310.1,175.8);
tank.lineTo(308.6,179.3);/**/tank.lineTo(310.6,183.8);
tank.lineTo(325.6,192.3);/**/tank.lineTo(324.8,189.9);
tank.lineTo(325.3,186.4);/**/tank.lineTo(327.3,183.4);
tank.lineTo(330.3,183.4);//BARREL HEAD
tank.beginFill(0x006600,100);/**/tank.moveTo(365.6,206.9);
tank.lineTo(331.6,186.4);/**/tank.lineTo(335.1,187.9);
tank.lineTo(335.1,186.4);/**/tank.lineTo(331.3,183.8);
tank.lineTo(328.3,183.8);/**/tank.lineTo(326.3,185.3);
tank.lineTo(324.8,189.3);/**/tank.lineTo(326.8,192.8);
tank.lineTo(329.8,194);/**/tank.lineTo(331.8,193.5);
tank.lineTo(328.8,191);/**/tank.lineTo(326.8,192.8);
tank.lineTo(358.8,210);//BARREL NECK
tank.beginFill(0x006600,100);/**/tank.moveTo(358.2,209.6);
tank.lineTo(353.5,206.8);/**/tank.lineTo(322.5,219.3);
tank.lineTo(383.6,251.1);/**/tank.lineTo(432.2,230.6);
tank.lineTo(371.6,198.2);/**/tank.lineTo(360.1,203.2);
tank.lineTo(366.0,206.6);//CHASSIS TOP
tank.beginFill(0x006600,100);/**/tank.moveTo(377.2,202.1);
tank.lineTo(338.2,219.1);/**/tank.lineTo(382.4,241.4);
tank.lineTo(414.9,228.9);/**/tank.lineTo(408.4,217.4);
tank.lineTo(377.2,202.1);//COCKPIT OUTLINE
tank.moveTo(408.2,216.8);/**/tank.lineTo(377.1,229.4);
tank.lineTo(382.6,241.1);/*|*/tank.moveTo(377.1,229.4);
tank.lineTo(349.6,214.6);/**/tank.moveTo(377.1,229.4);
tank.lineTo(414.6,228.1);//COCKPIT RIDGES
tank.beginFill(0x006600,100);/**/tank.moveTo(383.6,252.1);
tank.lineTo(432.2,231.6);/**/tank.lineTo(432.2,266.6);
tank.lineTo(383.7,287.6);//TANK REAR
tank.beginFill(0x006600,100);/**/tank.moveTo(383.7,287.6);
tank.lineTo(323.2,254.6);/**/tank.lineTo(323.2,220.1);
tank.lineTo(383.2,252.1);//TANK SIDE
tank.beginFill(0x999999,100);/**/tank.moveTo(427.7,269.6);
tank.lineTo(431.7,274.1);/**/tank.lineTo(431.7,279.1);
tank.lineTo(425.7,283.6);/**/tank.lineTo(387.7,300.6);
tank.lineTo(326.2,266.6);/**/tank.lineTo(322.2,263.1);
tank.lineTo(322.2,259.1);/**/tank.lineTo(326.2,256.6);
tank.lineTo(383.0,288.6);//TRACKS OUTLINE
tank.lineStyle(1,0x000000,100);
tank.beginFill(0x999999,100);/**/tank.moveTo(390.7,287.9);
tank.lineTo(393.0,289.3);/**/tank.lineTo(393.0,294.8);
tank.lineTo(388.0,298.3);tank.moveTo(378.0,217.3);
// ^ TRACKS CORNER ^
tank.lineStyle(9,0x000000,100);//OTTO BODY
tank.moveTo(378.0,217.3);/**/tank.lineTo(361.5,214.3);
tank.moveTo(378.0,208.3);
tank.lineStyle(25,0x000000,100);//OTTO HEAD
tank.moveTo(378.0,208.3);/**/tank.lineTo(377.0,203.8);
step11=true;
}
if(step11==true&&step12==false){
tankMC2._xscale-=5;/**/tankMC2._yscale-=5;
tankMC2._x+=5;/**/tankMC2._y+=7.5;
if(counter>206){;/**/step12=true;tankMC2.unloadMovie();
_root.createTextField("End",10,200,200,60,30);
End.selectable=false;/**/NameTag.multiline=true;
End.wordWrap=true;/**/NameTag.border=false;
End.text="The End";/**/End.setTextFormat(TitleF);
}}}
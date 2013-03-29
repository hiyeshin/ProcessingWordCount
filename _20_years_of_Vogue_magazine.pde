
//DataRep finals
//last modification: May 1, 2012

HashMap words=new HashMap();

//for text filtering
String delimiters = " +&,/.?!;:[]-=|\'\"";
String[] trimmed;

PFont font;

String[] texts;
int MAX = 40; 
int count = 0;

public void setup() {
  size(500, 695);
 
  smooth();
  loadFont("AvantGardeLT-Medium.vlw");
  
  //font=loadFont("AvantGardeLT-Medium.vlw");
  textLeading(10);
  rendering();
}

public void draw() {
}



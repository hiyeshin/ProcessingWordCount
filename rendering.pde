PImage cover;
String[] rawText;
//String filtering="'THE', 'TO', 'OF', 'AND', 'FOR', 'WITH', 'ON'";

void rendering() {
  cover=loadImage("December.png");
  String[] rawText=loadStrings("December.csv");

  image(cover, 0, 0);

  String everything = join(rawText, "" );
  String uppercases=everything.toUpperCase();

  trimmed = splitTokens(uppercases, delimiters);


  ///////////////////
  //HashMap begins///
  Map map = new HashMap();

  for (int i=0; i<trimmed.length; i++) {
   // String filtering="'THE', 'TO', 'OF', 'AND', 'FOR', 'WITH', 'ON'";
    
    String key=trimmed[i];
    
    SingleWord wrd = (SingleWord) map.get(key);
    if (wrd == null)
    {
      // New entry
      map.put(key, new SingleWord(key, 1));
    }
//   else if (key=="THE") {
//     map.put(key, new SingleWord(key, wrd.m_number + 0));  
//    }
    else
    {
      map.put(key, new SingleWord(key, wrd.m_number + 1));
    }
  }

  // Sort the collection
  ArrayList keys = new ArrayList(map.keySet());
  Collections.sort(keys, new SingleWordComparator(map));

  // List the top ten

  Iterator it = keys.iterator();
  while (it.hasNext () && count < MAX)
  {
    String key = (String) it.next();
    SingleWord wrd = (SingleWord) map.get(key);
    println(key + ": " + wrd.m_number);
    count++;

    //textFont(font);
    textSize(wrd.m_number*5);

    if (85-wrd.m_number*3<0) {
      wrd.m_number=22;
    }
    
    fill(215, 85-wrd.m_number*3);
  // fill(60, 85-wrd.m_number*3);

    
    text(key, random(30, width-70), random(height/4, height-30)); 
    textAlign(LEFT);
  }
}


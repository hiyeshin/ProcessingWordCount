public class SingleWord
{  String m_word;
  int m_number;


  SingleWord(String word, int number)
  {
    m_word = word;
    m_number = number;
  }
}

class SingleWordComparator implements Comparator, Serializable
{
  Map m_map;
  
  SingleWordComparator(Map map)
  {
    m_map = map;
  }
  
  //@Override
  public int compare(Object o1, Object o2)
  {
    // Get values associated to the keys to compare
    SingleWord wrd1 = (SingleWord) m_map.get(o1);
    SingleWord wrd2 = (SingleWord) m_map.get(o2);
    // Sort by descending order
    return wrd2.m_number - wrd1.m_number;
  }
}


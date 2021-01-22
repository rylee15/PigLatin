public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}

public void draw(){
}

public int findFirstVowel(String word){
  for(int i = 0; i < word.length(); i++){
    if(word.substring(i, i+1).equals("a") || word.substring(i, i+1).equals("e") || word.substring(i, i+1).equals("i")|| word.substring(i, i+1).equals("o")|| word.substring(i, i+1).equals("u")){
      return i;
    }
  }
  return -1;
}

public boolean startQu(String word){
  if(word.substring(0, 1).equals("q") && word.substring(1, 2).equals("u")){
    return true;
  }
  return false;
}

public String pigLatin(String sWord)
  {
  if(findFirstVowel(sWord) == -1)
    {
    return(sWord + "ay");
    }
  else if(findFirstVowel(sWord) == 0)
    {
    return(sWord + "way");
    }
  else if(startQu(sWord))
    {
    return(sWord.substring(2)+sWord.substring(0,2)+"ay");
    }
  else
    {
    return(sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay");
  }
}

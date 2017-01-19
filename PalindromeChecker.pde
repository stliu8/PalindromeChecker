
public void setup()
{
  
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i]) == true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{

  String word2 = new String();
  String word3 = word.toLowerCase();

  for (int i = 0; i < word3.length(); i++)
  {
    if(Character.isLetter(word3.charAt(i)))
    {
      word2 = word2 + word3.substring(i, i+1);
    }
  }

  for (int j = 0; j < word2.length()/2; j++)
  {
    if (word2.charAt(j) != word2.charAt(word2.length() - (j + 1)))
    {
      return false; 
    }
  }
  return true;
}
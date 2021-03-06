public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = onlyLetters(word);
  word = noCapitals(word);
  if (word.equals(reverse(word)))
  {
    return true;
  }
  return false;
}

public String noCapitals(String str)
{
  return str.toLowerCase();
}

public String onlyLetters(String str)
{
  String answer = new String();

  for (int i = 0; i < str.length(); i++)
  {
    if (Character.isLetter(str.charAt(i)))
    {
      answer = answer + str.substring(i, i+1);
    }
  }
  return answer;
}

public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length() - 1; i >=0; i--)
  {
    sNew = sNew + str.substring (i, i+1);
  }
  return sNew;
}



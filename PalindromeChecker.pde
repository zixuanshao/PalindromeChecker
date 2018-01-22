public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
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

  word = word.toLowerCase();
  //no space
  String nospace = new String();
  for (int i=0; i<word.length(); i++)
  {
    if (!word.substring(i, i+1).equals(" "))
      nospace = nospace + word.substring(i, i+1);
  }

  //no none letter
  String letters = new String();
  for (int i=0; i<nospace.length(); i++)
  {
    if (Character.isLetter(nospace.charAt(i))==true)
      letters = letters + nospace.substring(i,i+1);
  }

  //isPalindrome
  if (reverse(letters).equals(letters))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String reverse = new String();
  for (int i=str.length()-1; i>-1; i--)
    {
      reverse = reverse + str.substring(i,i+1);
    }
  return reverse;
}





/**
 * method retrieves number from text file and uses it to name the saved image while updating the number on the text file
 * @author Raimah Farooqui
 */
void saveAndUpdate() {  
  int currentNumber = int(file[0]);
  save("img" + currentNumber + ".png");
  saveStrings("data/save_number.txt", new String[]{str(currentNumber+1)});
  file = loadStrings("data/save_number.txt");
}

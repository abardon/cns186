String inits = "SC";


String print_image = "xxx";
String print_freq = "xxx";
String print_hf_cat = "xxx";
PImage img; 
PFont f;
int num_trials = 52;
String[] imlist_part1 = new String[num_trials];
String[] imlist_part2 = new String[num_trials];
int[] answers1 = new int[num_trials];
int[] answers2 = new int[num_trials];
int counter = 0;
int part = 1; // 1 = pt1 instruct, 2=pt1, 3=pt2 instruct, 4=pt2, 5=finish

void setup() {
  size(750, 750);
  background(100);
  textSize(24);
  create_image_seq(imlist_part1, imlist_part2);
  print("\n\n\n");
  img = loadImage(imlist_part1[0]);  // Load the image into the program 
  print_image = imlist_part1[counter];
  if (print_image.contains(print_hf_cat)){
    print_freq = "h";
  }
  else{
    print_freq = "l";
  }
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  background(100);
  if (part==1){
    text("The first part of this experiment will ask you to indicate \nwhether the object in the photo is animate or inanimate.\n\nIf it is an animate object, press 1. \nIf it is an inaminate object, press 0.\n\nPress enter to begin.", 100, 100);
          
  }
  else if (part==2){
    text("Press 1 if the object is animate, or 0 if it is inanimate.", 100, 50);
    image(img, 100, 100);
  }
  else if (part==3){
    text("The next part of this experiment will ask you to indicate \nwhether you saw each image in the last round.\nUse the rating scale below to give your answer.\n\nPress enter to begin.", 100, 100);
    text("1 = New, confident\n2 = New, probably\n3 = New, guess\n4 = Old, guess\n5 = Old, probably\n6 = Old, confident", 100, 500);
  }
  else if (part==4){
    text("Have you seen this image before?", 100, 50);
    text("1 = New, confident\n2 = New, probably\n3 = New, guess\n4 = Old, guess\n5 = Old, probably\n6 = Old, confident", 100, 500);
    image(img, 100, 100);
  }
  else if (part==5){
    text("Yay you finished! \nPress enter to exit the experiment.", 100, 100);
  }
  
  if (part==2 && counter >= num_trials-1){
    part = 3;
    counter = 0;
  }
  if (part==4 && counter >= num_trials-1){
    part = 5;
  }
}

void keyPressed() {
  if (part==1){
    if(key == '\n'){
      part=2;
    }
  }
  else if (part==2){
    if (key == '1') {
      print(inits + "\t2\t1\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers1[counter] = 1;
      counter = counter + 1;
      img = loadImage(imlist_part1[counter]);
      print_image = imlist_part1[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
    if (key == '0') {
      print(inits + "\t2\t0\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers1[counter] = 0;
      counter = counter + 1;
      img = loadImage(imlist_part1[counter]);
      print_image = imlist_part1[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
  }
  else if (part==3){
    if(key == '\n'){
      part=4;
    }
  }
  else if (part==4) {
    if (key == '1'){
      print(inits + "\t4\t1\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers2[counter] = 1;
      counter = counter + 1;
      img = loadImage(imlist_part2[counter]);
      print_image = imlist_part2[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
    else if (key == '2'){
      print(inits + "\t4\t2\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers2[counter] = 2;
      counter = counter + 1;
      img = loadImage(imlist_part2[counter]);
      print_image = imlist_part2[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
    else if (key == '3'){
      print(inits + "\t4\t3\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers2[counter] = 3;
      counter = counter + 1;
      img = loadImage(imlist_part2[counter]);
      print_image = imlist_part2[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
    else if (key == '4'){
      print(inits + "\t4\t4\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers2[counter] = 4;
      counter = counter + 1;
      img = loadImage(imlist_part2[counter]);
      print_image = imlist_part2[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
    else if (key == '5'){
      print(inits + "\t4\t5\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers2[counter] = 5;
      counter = counter + 1;
      img = loadImage(imlist_part2[counter]);
      print_image = imlist_part2[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
    else if (key == '6'){
      print(inits + "\t4\t6\t" + print_image + "\t" + print_freq + "\n"); // inits, part, answer, image, freq
      answers2[counter] = 6;
      counter = counter + 1;
      img = loadImage(imlist_part2[counter]);
      print_image = imlist_part2[counter];
      if (print_image.contains(print_hf_cat)){
        print_freq = "h";
      }
      else{
        print_freq = "l";
      }
    }
  }
  else if (part==5){
    if (key == '\n'){
      exit(); 
    }
  }

}

void create_image_seq(String[] my_imlist1, String[] my_imlist2) {
  int imlist1_idx = 0;
  int imlist2_idx = 0;
  String[] cats = {"animals", "buildings", "cars", "food", 
                   "landscapes", "people", "phones", "space"};
  int[] counts = {47, 45, 43, 44, 43, 45, 38, 30};
  int[] idxs = {0, 1, 2, 3, 4, 5, 6, 7};
  randomize(idxs, 8);
  
  for(int i=0; i<5; i++){
    int c=0;
    int c1=0;
    int c2=0;
    if (i==0){
      c = 20;
      c1 = 10;
      c2 = 30;
      print_hf_cat = cats[idxs[i]];
    }
    else {
      c = 8;
      c1 = 4;
      c2 = 12;
    }
    
    String cat = cats[idxs[i]];
    int ct = counts[idxs[i]];
    int[] array = new int[ct];
    for(int j=0; j<ct; j++){
      array[j]=j;
    }    
    randomize(array, ct);

    for(int j=0; j<c; j++){
      String imname = "/Users/abardon/Desktop/cns186_images/" + cat + "/" 
                      + String.valueOf(array[j]+1) + ".jpg";
      my_imlist1[imlist1_idx] = imname;
      imlist1_idx = imlist1_idx + 1;
    }
    for(int j=c1; j<c2; j++){
      String imname = "/Users/abardon/Desktop/cns186_images/" + cat + "/" 
                      + String.valueOf(array[j]+1) + ".jpg";
      my_imlist2[imlist2_idx] = imname;
      imlist2_idx = imlist2_idx + 1;
    }
  }
  str_randomize(my_imlist1, num_trials);
  str_randomize(my_imlist2, num_trials);
}

// This keeps the notes sorted by time
// https://stackoverflow.com/questions/1814095/sorting-an-arraylist-of-objects-using-a-custom-sorting-order
// https://stackoverflow.com/questions/3705275/help-comparing-float-member-variables-using-comparators
int counter;
int t = 1000;
int p; 
class Note implements Comparable<Note> {



  PVector pos = new PVector(width/2, height/2);
  float startTime = 0;
  float duration = 50;
  int index = 0;

  Note(int _index, float _startTime) {
    index = _index;
    startTime = _startTime;
    println("Note: " + index + ", " + startTime);
  }

  void run() {
    if (currentTime > startTime && currentTime < startTime + duration) {
      println(counter);

      if (index == 1) {

        movieh.play();

        image(movieh, 0, 0, width, height);
        //duration = 20;

        for (int i=0; i<2; i=i+1) {
          counter=counter+1;
        }
        if (counter>t) {
          movieg.play();
          image(movieg, 0, 0, width, height);
          tint(255, 126);
        }
      } else  if (index == 2) {
        moviei.play();
        //movieh.stop();
        //movieg.stop();

        //counter=0;

        image(moviei, 0, 0, width, height);
        //duration = 20;
        for (int i=0; i<2; i=i+1) {
          counter = counter+1;
        }
        if (counter > t) {

          movie2.play();
          image(movie2, 0, 0, width, height);
          tint(255, 126);
        }
        //} else  if (index == 3) {

        //  movieh.stop();
        //  movieg.stop();
        //  moviei.stop();
        //  movie2.stop();

        //  counter=0;
        //  moviek.play();
        //  image(moviek, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }
        //  if (counter > t) {
        //    moviel.play();
        //    image(moviel, 0, 0, width, height);
        //    tint(255, 126);
        //  }
        //} else if (index == 4) {
        //  counter=0;
        //  image(movien, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }
        //  if (counter > t) {

        //    image(movieo, 0, 0, width, height);
        //    tint(255, 126);
        //  }
        //} else if (index ==5) {
        //  counter=0;
        //  image(moviep, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }
        //  if (counter > t) {

        //    image(movieq, 0, 0, width, height);
        //    tint(255, 126);
        //  }
        //} else if (index ==6) {
        //  counter=0;
        //  image(movier, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }2
        //  if (counter > t) {

        //    image(movies, 0, 0, width, height);
        //    tint(255, 126);
        //  }
        //} else if (index ==7) {
        //  counter=0;
        //  image(moviez, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }
        //  if (counter > t) {

        //    image(movieu, 0, 0, width, height);
        //    tint(255, 126);
        //  }
        //} else if (index ==8) {
        //  counter=0;
        //  image(moviev, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }
        //  if (counter > t) {

        //    image(moview, 0, 0, width, height);
        //    tint(255, 126);
        //  }
        //} else if (index ==9) {
        //  counter=0;
        //  image(moviex, 0, 0, width, height);
        //  duration = 40;
        //  for (int i=0; i<2; i=i+1) {
        //    counter = counter+1;
        //  }
        //  if (counter > t) {

        //    image(moviey, 0, 0, width, height);
        //    tint(255, 126);
        //  }
      } else if (index ==3) {



        //counter=0;
        movie.play();
        image(movie, 0, 0, width, height);
        //duration = 20;
        for (int i=0; i<2; i=i+1) {
          counter = counter+1;
        }
        if (counter > t) {
          moviet.play();
          image(moviet, 0, 0, width, height);
          tint(255, 126);
        }
      }
    }
  }


  int compareTo(Note other) {
    return Float.compare(startTime, other.startTime);
  }
}
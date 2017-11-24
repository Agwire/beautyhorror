import processing.video.*;

import ddf.minim.*;
import java.util.Collections;

Minim minim;
AudioPlayer player;
Data output;
float currentTime = 0;
ArrayList<Note> notes = new ArrayList<Note>();
float timeOffset = 0;
float r = 10;

Movie movie;
Movie moviet;

Movie movieh;
Movie movieg;

Movie moviei;
Movie movie2;

//Movie moviek;
//Movie moviel;

//Movie movien;
//Movie movieo;

//Movie moviep;
//Movie movieq;

//Movie movier;
//Movie movies;

//Movie moviez;
//Movie movieu;

//Movie moviev;
//Movie moview;

//Movie moviex;
//Movie moviey;

void setup() {
  size(512, 512, P3D);
  minim = new Minim(this);
  player = minim.loadFile("jesus.mp3");
  player.play();


  output = new Data();
  try {
    output.load("output.txt");
    for (int i=0; i<output.data.length; i++) {
      String[] s = output.data[i].split(",");
      int index = int(s[0]);
      float time = float(s[1]);
      notes.add(new Note(index, time));
    }
  } 
  catch (Exception e) {
  }

  //MOVIES
  movie = new Movie (this, "Palmolive.mpg");
  moviet = new Movie(this, "Zombie.mp4");

  movieh = new Movie(this, "razor.mp4");
  movieg = new Movie(this, "daughter.mp4");

  moviei = new Movie(this, "neked.mp4");
  movie2= new Movie(this, "hammer.mp4");

  //moviek = new Movie(this, "ocusol.mp4");
  //moviel = new Movie(this, "mantango.mp4");

  //movien =new Movie(this, "burma.mp4");
  //movieo= new Movie(this, "brain.mp4");

  //moviep = new Movie(this, "nyquil.mp4");
  //movieq = new Movie(this, "satan.mp4");

  //movier =new Movie(this, "prell.mp4");
  //movies=new Movie(this, "reptile.mp4");

  //moviez =new Movie(this, "dumb.mp4");
  //movieu= new Movie(this, "sen.mp4");

  //moviev=new Movie(this, "dove.mp4");
  //moview=new Movie(this, "worm.mp4");

  //moviex=new Movie(this, "toothpaste.mp4");
  //moviey=new Movie(this, "bb.mp4");

  

movie.volume(0);
moviet.volume(0);
movieh.volume(0);
movieg.volume(0);
moviei.volume(0);
movie2.volume(0);



  //  movien.loop();
  //  movieo.loop();

  //  moviep.loop();
  //  movieq.loop();

  //  movier.loop();
  //  movies.loop();

  //  moviez.loop();
  //  movieu.loop();

  //  moviev.loop();
  //  moview.loop();

  //  moviex.loop();
  //  moviey.loop();
}

void draw() {
  currentTime = (player.position() / 1000.0) + timeOffset;

  background(255);

  for (int i=0; i<notes.size(); i++) {
    notes.get(i).run();
  }

  //image(moviet, 0, 0, width, height);
}

void keyPressed() {
  if (key=='0' || key=='1' || key=='2' || key=='3' || key=='4' || key=='5' || key=='6' || key=='7' || key=='8' || key=='9') {
    notes.add(new Note(int(""+key), currentTime));
  }

  if (key=='s' || key=='S') {
    output.beginSave();

    Collections.sort(notes);

    for (int i=0; i<notes.size(); i++) {
      Note n = notes.get(i);
      String s = n.index + ", " + n.startTime;
      output.add(s);
    }

    output.endSave("output.txt");
  }
}

void movieEvent(Movie m) {
  m.read();
}

void mousePressed(){
 movie.stop(); 
 moviet.stop();
 movieh.stop();
 movieg.stop();
 moviei.stop();
 movie2.stop();
 
 movie.volume(0);
moviet.volume(0);
movieh.volume(0);
movieg.volume(0);
moviei.volume(0);
movie2.volume(0);
 
 counter=0;
}
void setup() 
{
  size(2000, 1000);
  
  grids = new ArrayList<Grid>();
  for(int i = 0; i < GRIDNUM; i++){
    for (int j =0 ; j < GRIDNUM; j++){
      grids.add(new Grid(j,i));
    }
  }
  person = new Person();
}

void draw() { 
  background(204);
  for (Grid grid : grids){
    grid.draw();
  }

  person.draw(grids.get(person.y*GRIDNUM + person.x));
}

void keyPressed() {
  if (key == CODED) {
    person.move();
  } 
}

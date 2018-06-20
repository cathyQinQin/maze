// const values
static float WIDTH = 45;
static float HEIGHT = 45;
static int GRIDNUM = 15;
static int X_INIT = (int)GRIDNUM/2;
static int Y_INIT = (int)GRIDNUM/2;
static int MAZE_START_X = 30;
static int MAZE_START_Y = 30;
static int MARGIN = 3;

// objects declarations
Person person;
ArrayList<Grid> grids;

class Grid {
  float x,y;
  
  Grid(int i, int j){
    this.x = MAZE_START_X + i*(WIDTH + MARGIN);
    this.y = MAZE_START_Y + j*(HEIGHT + MARGIN);
  }
  void draw() {
    rect(this.x,this.y,WIDTH,HEIGHT,7);
  } 
} 


class Person{
  int x,y;
  
  Person(){
    this.x = X_INIT;
    this.y = Y_INIT;
  }
  
  void draw(Grid grid){
    float center_x,center_y;
    
    center_x = grid.x + 0.5 * WIDTH ;
    center_y = grid.y + 0.5 * HEIGHT;
    
    pushStyle();
    fill(204, 102, 0);
    ellipse(center_x,center_y,WIDTH*0.8,HEIGHT*0.8);
    popStyle(); 
  }
  
  void move(){
    switch(keyCode){
      case UP: 
        y = y == 0 ? 0 : y - 1;
        break;
      case DOWN:
        y = y == GRIDNUM - 1 ? GRIDNUM - 1 : y + 1;
        break;
      case LEFT:
        x = x == 0 ? 0 : x - 1;
        break;
      case RIGHT:
        x = x == GRIDNUM - 1 ? GRIDNUM - 1 : x + 1;
        break;
     }
   }
}
class Maze extends Component{
  Maze(){
    super();
    children.add(Component grid);
    
  }
}

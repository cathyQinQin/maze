abstract class Component{
  ArrayList<Component> children;
  
  // Lifecycle
  Component(){
    children = new ArrayList<Component>();
  }
  
  void onFrame(){
    if (needUpdate()){
      update();
    }
    draw();
    for (Component child : children){
      child.onFrame();
    }
  }
  
  // Action
  abstract void update();
  
  abstract void draw();
  
  // state check
  boolean needUpdate(){
    return false;
  }
}

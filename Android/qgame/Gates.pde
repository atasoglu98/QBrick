class Gates {
  public Gates() {
    super();
  }
}
class Hadamard extends Gates implements Global {
  public PVector pos;
  public PVector vel;
  
  public Hadamard() {
    this.pos = this.createRandPos().copy();
    this.vel = new PVector(0, SCL);
  }
  
  public void run() {
    push();
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(this.pos.x, this.pos.y, SCL, SCL);
    fill(0);
    // textFont('Georgia');
    textSize(24);
    text('H', this.pos.x + SCL/2, this.pos.y + SCL/2);
    pop();
  }
  
  public void fall() {
    this.pos.add(this.vel);
  }
  
  public void examine() {
    if (this.pos.y == height) {
      this.pos = this.createRandPos().copy();
    }
  }
    
  public PVector createRandPos() {
  int randX = floor(random(width/SCL)) * SCL;
  int randY = -floor(random(10)) * SCL;
  return new PVector(randX, randY);
  }
  
  public void clearPos() {
    this.pos = this.createRandPos().copy();
  }
  
  public char whoAmI() {
    return 'H';
  }
}

class Not extends Gates implements Global {
  public PVector pos;
  public PVector vel;
  
  public Not() {
    this.pos = this.createRandPos().copy();
    this.vel = new PVector(0, SCL);
  }
  
  public void run() {
    push();
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(this.pos.x, this.pos.y, SCL, SCL);
    fill(0);
   // textFont('Georgia');
    textSize(24);
    text('X', this.pos.x + SCL/2, this.pos.y + SCL/2);
    pop();
  }
  
  public void fall() {
    this.pos.add(this.vel);
  }
  
  public void examine() {
    if (this.pos.y == height) {
      this.pos = this.createRandPos().copy();
    }
  }
    
  public PVector createRandPos() {
  int randX = floor(random(width/SCL)) * SCL;
  int randY = -floor(random(10)) * SCL;
  return new PVector(randX, randY);
  }
  
  public void clearPos() {
    this.pos = this.createRandPos().copy();
  }
  
  public char whoAmI() {
    return 'X';
  }
}

def setup():
    size(800,800,P3D)
    strokeWeight(3)
    noFill()
    
def draw():
    background(0,0,0)
    translate(width/2,height/2)
    f = radians(frameCount)
    rotateY(1)
    rotateZ(0.5)
    R = 300
    beginShape()
    for tina in range(360 * 13):
        a = radians(tina)
        #db = 45 * sin(a * 12 + f * 2) 
        db = 30 * sin(a * 13 + f * 3) +  30 * cos(a * 0.05) 
        b = radians(db)
        x = R * sin(a) * cos(b)
        y = R * sin(a) * sin(b)
        z = R * cos(a)
        stroke(abs (tina * 0.2), tina/360.0 * 20, 20)
        vertex(x,y,z)
    endShape(CLOSE)
    

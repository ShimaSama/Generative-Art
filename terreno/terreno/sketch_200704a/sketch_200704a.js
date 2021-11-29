var cols, rows;
var scl = 25;
var w = 1900;
var h = 1400;
var tina2 = 0;
var tina = [];
var tina3;
var frame = 0;
var tina4 = 0;



function setup() {
    setAttributes('antialias', true);
    createCanvas(1200, 1200, WEBGL);
    cols = w / scl;
    rows = h / scl;
    colorMode(HSB, 255);

    for (var x = 0; x < cols; x++) {
        tina[x] = [];
        for (var y = 0; y < rows; y++) {
            tina[x][y] = 0; //specify a default value for now
        }
    }


}

function draw() {

    tina2 -= 0.1;
    var yoff = tina2;
    for (var y = 0; y < rows; y++) {
        var xoff = 0;
        for (var x = 0; x < cols; x++) {
            tina[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
            xoff += 0.2;
        }
        yoff += 0.2;
    }

    stroke(tina4, 255, 255);
    tina4 += 1;
    if (tina4 > 255) tina4 = 0;
    background(0);

    strokeWeight(1);
    ++frame;
    noFill();

    translate(width / 2, height / 2 + 50);
    rotateX(PI / 3);
    translate(-w / 2, -h / 2);
    for (var y2 = 0; y2 < rows - 1; y2++) {
        beginShape(TRIANGLE_STRIP);

        for (var x2 = 0; x2 < cols; x2++) {

            vertex(x2 * scl, y2 * scl, tina[x2][y2]);

            vertex(x2 * scl, (y2 + 1) * scl, tina[x2][y2 + 1]);
        }
        endShape();
    }
}

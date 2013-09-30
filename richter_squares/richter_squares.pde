int   stageW   = 800;
int   stageH   = 800;
int   cols     = 32;
int   rows     = 32;
float rectW    = stageW / cols;
float rectH    = stageH / rows;

//int[][] col     = {{4, 135, 137}, {80, 61, 46}, {212, 77, 39}, {226, 167, 46}, {239, 235, 200}};
//int[][] col     = {{, , }, {, , }, {, , }, {, , }, {, , }};
//int[][] col     = {{, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }, {, , }};
//int[][] col     = {{242, 230, 187}, {221, 125, 28}, {32, 39, 36}, {99, 189, 153}, {248, 253, 216}};
// dragonfly
//int[][] col     = {{212, 207, 186}, {199, 153, 84}, {187, 195, 196}, {187, 194, 174}, {186, 177, 128}, {176, 186, 121}, {184, 86, 96}, {171, 109, 120}, {125, 130, 61}, {107, 112, 66}, {110, 107, 98}, {107, 96, 66}, {100, 105, 93}, {102, 75, 29}, {89, 94, 40}};
// watermelon
int[][] col       = {{247, 250, 235}, {247, 210, 198}, {245, 121, 93}, {245, 171, 147}, {223, 240, 226}, {232, 63, 44}, {210, 227, 179}, {188, 214, 113}, {221, 199, 35}, {221, 171, 43}, {145, 158, 122}, {126, 187, 196}, {64, 163, 153}, {43, 46, 43}, {10, 10, 10}, {223, 240, 240}, {210, 200, 200}};
// octopus
//int[][] col     = {{209, 157, 130}, {207, 127, 87}, {126, 187, 196}, {58, 171, 189}, {163, 170, 181}, {106, 166, 156}, {64, 163, 153}, {140, 156, 145}, {88, 99, 88}, {23, 76, 94}};

void setup()
{
  size(stageW, stageH);
  smooth();
  background(230, 230, 230);
  stroke(0, 0);
  for(int c  = 0; c < cols; c++)
  {
    for(int r  = 0; r < rows; r++)
    {
       drawRect(c, r);
    };
  };
};

void drawRect(int c, int r)
{
  fill( fillColour());
  rect( c * rectW, r * rectH, rectW, rectH);
};

color fillColour()
{
  int colNum     = floor(random(col.length));
  int[] baseCol  = col[colNum];
  color c        = color(rndAdd(baseCol[0]), rndAdd(baseCol[1]), rndAdd(baseCol[2]));
  return c;
};

int rndAdd(int base)
{
  int toAdd  = round(random(80)) -40;
  base += toAdd;
  if(base > 255)   base = 255;
  if(base < 0)     base = 0;
  return base;
};

int sinRandom()
{
  float n  = random(6.28);
  n        = sin(n);
  n        = (n * 128) + 128;
  int ret  = floor(n);
  return ret;
};

void keyPressed()
{
  if(keyCode == ENTER)
  {
    saveFrame("richter_squares_####.jpg");
  };
};



//zombles for when i need it https://s-media-cache-ak0.pinimg.com/originals/57/3a/87/573a875f8a1f742591af99afbf0d91ba.png
float lineSize = 0;
float growSpeed = 0;
float screenShaket = 0;
float screenShaker = 0;
float xpos = -250;
float ypos = -260;
float mx = 0;
float my = 0;
float angle = 0;
float health = 100;
float attacked = 0;
int[] bulletsx = {};
int[] bulletsy = {};
int[] bulletsr = {};
int[] bulletsp = {};
boolean firing = false;
int aable = 0;
int sable = 0;
int dable = 0;
int wable = 0;
boolean apressed = false;
boolean spressed = false;
boolean dpressed = false;
boolean wpressed = false;
boolean epressed = false;
int rof = 1;

int[] gridsx = {};
int[] gridsy = {};
int[] gridstag = {};
int[] gridstype = {};

int[] zombiesx = {
  0, 
  //Apartment
  //Floor 1
  //North row
  //Room 2
  1070, 1200, 
  //Room 3
  1340, 1500, 
  //Room 4
  1675, 1750, 
  //South row
  //Room 1
  860, 1000, 
  //Room 2
  1070, 1200, 
  //Room 3
  1340, 1500, 
  //Room 4
  1675, 1750
};
int[] zombiesy = {
  0, 
  //Apartment
  //Floor 1
  //North row
  //Room 2
  560, 550, 
  //Room 3
  560, 670, 
  //Room 4
  570, 620, 
  //South row
  //Room 1
  860, 925, 
  //Room 2
  860, 945, 
  //Room 3
  840, 875, 
  //Room 4
  870, 975
};
int[] zombiesr = {//0
  0, 
  //Apartment
  //Floor 1
  //North row
  //Room 2
  0, 0, 
  //Room 3
  0, 0, 
  //Room 4
  0, 0, 
  //South row
  //Room 1
  0, 0, 
  //Room 2
  0, 0, 
  //Room 3
  0, 0, 
  //Room 4
  0, 0
};
int[] zombieshp = {//100
  0, 
  //Apartment
  //Floor 1
  //North row
  //Room 2
  100, 100, 
  //Room 3
  100, 100, 
  //Room 4
  100, 100, 
  //South row
  //Room 1
  100, 100, 
  //Room 2
  100, 100, 
  //Room 3
  100, 100, 
  //Room 4
  100, 100
};
int[] zombiesa = {//0
  0, 
  //Apartment
  //Floor 1
  //North row
  //Room 2
  0, 0, 
  //Room 3
  0, 0, 
  //Room 4
  0, 0, 
  //South row
  //Room 1
  0, 0, 
  //Room 2
  0, 0, 
  //Room 3
  0, 0, 
  //Room 4
  0, 0
};
int[] zombiesc = {//0
  0, 
  //Apartment
  //Floor 1
  //North row
  //Room 2
  0, 0, 
  //Room 3
  0, 0, 
  //Room 4
  0, 0, 
  //South row
  //Room 1
  0, 0, 
  //Room 2
  0, 0, 
  //Room 3
  0, 0, 
  //Room 4
  0, 0
};
int zombietime = 5000000;
int zombiedelay = 50;

int[] npcsx = {};
int[] npcsy = {};
int[] npcsr = {};
int[] npcsd = {};
int[] npcshp = {};
int[] npcsa = {};
int[] npcsf = {};
int[] npcsrof = {};
int[] npcsbx = {};
int[] npcsby = {};
int[] npcsbr = {};
int[] npcsbp = {};
int[] npcsbi = {};
int npctime = 1000;

float[] cloudsx = {};
float[] cloudsy = {};
float[] cloudsw = {};
float[] cloudsh = {};
float[] cloudsr = {};
float[] cloudsa = {};
float[] cloudsd = {};

PImage sofa;

PImage[] buildingsi = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //Room 2
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //Room 3
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //Room 4
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //South row
  //Room 1
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //Room 2
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //Room 3
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png"), 
  //Room 4
  loadImage("https://data2.polantis.com/image1000/data/2/2/1087/formats/4/20/IKEA-Vreta_3_Seat_Sofa_Mjuk_Ivory-TOP.png"), 
  loadImage("http://dundjinni.com/forums/uploads/Bogie/14B_Plant_Potted1_AA.png"), 
  loadImage("https://cdn-reichelt.de/bilder/web/xxl_ws/E300/ASUS_MX279H_03.png")
};
int[] buildingsx = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  850, 925, 850, 
  //Room 2
  1100, 1175, 1100, 
  //Room 3
  1350, 1425, 1350, 
  //Room 4
  1600, 1675, 1600, 
  //South row
  //Room 1
  850, 925, 850, 
  //Room 2
  1100, 1175, 1100, 
  //Room 3
  1350, 1425, 1350, 
  //Room 4
  1600, 1675, 1600
};
int[] buildingsy = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  525, 525, 650, 
  //Room 2
  525, 525, 650, 
  //Room 3
  525, 525, 650, 
  //Room 4
  525, 525, 650, 
  //South row
  //Room 1
  960, 960, 835, 
  //Room 2
  960, 960, 835, 
  //Room 3
  960, 960, 835, 
  //Room 4
  960, 960, 835
};
int[] buildingsw = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  100, 55, 100, 
  //Room 2
  100, 55, 100, 
  //Room 3
  100, 55, 100, 
  //Room 4
  100, 55, 100, 
  //South row
  //Room 1
  100, 55, 100, 
  //Room 2
  100, 55, 100, 
  //Room 3
  100, 55, 100, 
  //Room 4
  100, 55, 100
};
int[] buildingsr = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  0, 0, 180, 
  //Room 2
  0, 0, 180, 
  //Room 3
  0, 0, 180, 
  //Room 4
  0, 0, 180, 
  //South row
  //Room 1
  180, 180, 0, 
  //Room 2
  180, 180, 0, 
  //Room 3
  180, 180, 0, 
  //Room 4
  180, 180, 0
};
int[] buildingsh = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  56, 55, 20, 
  //Room 2
  56, 55, 20, 
  //Room 3
  56, 55, 20, 
  //Room 4
  56, 55, 20, 
  //South row
  //Room 1
  56, 55, 20, 
  //Room 2
  56, 55, 20, 
  //Room 3
  56, 55, 20, 
  //Room 4
  56, 55, 20
};
int[] buildingsd = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  1, 1, 1, 
  //Room 2
  1, 1, 1, 
  //Room 3
  1, 1, 1, 
  //Room 4
  1, 1, 1, 
  //South row
  //Room 1
  1, 1, 1, 
  //Room 2
  1, 1, 1, 
  //Room 3
  1, 1, 1, 
  //Room 4
  1, 1, 1
};
int[] buildingshp = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  1000, 800, 300, 
  //Room 2
  1000, 800, 300, 
  //Room 3
  1000, 800, 300, 
  //Room 4
  1000, 800, 300, 
  //South row
  //Room 1
  1000, 800, 300, 
  //Room 2
  1000, 800, 300, 
  //Room 3
  1000, 800, 300, 
  //Room 4
  1000, 800, 300
};
int[] buildingsca = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0
};
int[] buildingscs = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0
};
int[] buildingscd = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0
};
int[] buildingscw = {
  //Apartment
  //Floor 1
  //North row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 
  //Room 2
  0, 0, 0, 
  //Room 3
  0, 0, 0, 
  //Room 4
  0, 0, 0
};

String[] structurest = {
  //Apartment
  //Floor 1
  "wall", "wall", 
  //North row
  //Room 1
  "wall", "wall", "wall", "wall", "door", 
  //Room 2
  "wall", "wall", "wall", "wall", "door", 
  //Room 3
  "wall", "wall", "wall", "wall", "door", 
  //Room 4
  "wall", "wall", "wall", "wall", "door", 
  //South row
  //Room 1
  "wall", "wall", "wall", "wall", "door", 
  //Room 2
  "wall", "wall", "wall", "wall", "door", 
  //Room 3
  "wall", "wall", "wall", "wall", "door", 
  //Room 4
  "wall", "wall", "wall", "wall", "door"
};
int[] structuresx = {
  //Apartment
  //Floor 1
  780, 1780, 
  //North row
  //Room 1
  780, 780, 1030, 780, 980, 
  //Room 2
  1030, 1030, 1280, 1030, 1230, 
  //Room 3
  1280, 1280, 1530, 1280, 1480, 
  //Room 4
  1530, 1530, 1780, 1530, 1730, 
  //South row
  //Room 1
  780, 780, 1030, 780, 980, 
  //Room 2
  1030, 1030, 1280, 1030, 1230, 
  //Room 3
  1280, 1280, 1530, 1280, 1480, 
  //Room 4
  1530, 1530, 1780, 1530, 1730
};
int[] structuresy = {
  //Apartment
  //Floor 1
  680, 680, 
  //North row
  //Room 1
  480, 480, 480, 680, 680, 
  //Room 2
  480, 480, 480, 680, 680, 
  //Room 3
  480, 480, 480, 680, 680, 
  //Room 4
  480, 480, 480, 680, 680, 
  //South row
  //Room 1
  795, 795, 795, 995, 795, 
  //Room 2
  795, 795, 795, 995, 795, 
  //Room 3
  795, 795, 795, 995, 795, 
  //Room 4
  795, 795, 795, 995, 795
};
int[] structuresw = {
  //Apartment
  //Floor 1
  20, 20, 
  //North row
  //Room 1
  15, 250, 20, 200, 50, 
  //Room 2
  15, 250, 20, 200, 50, 
  //Room 3
  15, 250, 20, 200, 50, 
  //Room 4
  15, 250, 20, 200, 50, 
  //South row
  //Room 1
  15, 200, 20, 250, 50, 
  //Room 2
  15, 200, 20, 250, 50, 
  //Room 3
  15, 200, 20, 250, 50, 
  //Room 4
  15, 200, 20, 250, 50
};
int[] structuresh = {
  //Apartment
  //Floor 1
  120, 120, 
  //North row
  //Room 1
  200, 15, 215, 15, 15, 
  //Room 2
  200, 15, 215, 15, 15, 
  //Room 3
  200, 15, 215, 15, 15, 
  //Room 4
  200, 15, 215, 15, 15, 
  //South row
  //Room 1
  200, 15, 215, 15, 15, 
  //Room 2
  200, 15, 215, 15, 15, 
  //Room 3
  200, 15, 215, 15, 15, 
  //Room 4
  200, 15, 215, 15, 15
};
int[] structuresd = {
  //Apartment
  //Floor 1
  1, 1, 
  //North row
  //Room 1
  1, 1, 1, 1, 1, 
  //Room 2
  1, 1, 1, 1, 1, 
  //Room 3
  1, 1, 1, 1, 1, 
  //Room 4
  1, 1, 1, 1, 1, 
  //South row
  //Room 1
  1, 1, 1, 1, 1, 
  //Room 2
  1, 1, 1, 1, 1, 
  //Room 3
  1, 1, 1, 1, 1, 
  //Room 4
  1, 1, 1, 1, 1
};
int[] structureshp = {
  //Apartment
  //Floor 1
  3000, 3000, 
  //North row
  //Room 1
  3000, 3000, 3000, 3000, 1500, 
  //Room 2
  3000, 3000, 3000, 3000, 1500, 
  //Room 3
  3000, 3000, 3000, 3000, 1500, 
  //Room 4
  3000, 3000, 3000, 3000, 1500, 
  //South row
  //Room 1
  3000, 3000, 3000, 3000, 1500, 
  //Room 2
  3000, 3000, 3000, 3000, 1500, 
  //Room 3
  3000, 3000, 3000, 3000, 1500, 
  //Room 4
  3000, 3000, 3000, 3000, 1500
};
int[] structuresg = {
  //Apartment
  //Floor 1
  0, 0, 
  //North row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0
};
int[] structuresca = {
  //Apartment
  //Floor 1
  0, 0, 
  //North row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0
};
int[] structurescs = {
  //Apartment
  //Floor 1
  0, 0, 
  //North row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0
};
int[] structurescd = {
  //Apartment
  //Floor 1
  0, 0, 
  //North row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0
};
int[] structurescw = {
  //Apartment
  //Floor 1
  0, 0, 
  //North row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0, 
  //South row
  //Room 1
  0, 0, 0, 0, 0, 
  //Room 2
  0, 0, 0, 0, 0, 
  //Room 3
  0, 0, 0, 0, 0, 
  //Room 4
  0, 0, 0, 0, 0
};

PImage[] groundsi = {
  //Apartment
  //Floor 1
  loadImage("http://www.mcssl.com/content/175027/redcarpetsection.jpg"), 
  //North row
  //Room 1
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //Room 2
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //Room 3
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //Room 4
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //South row
  //Room 1
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //Room 2
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //Room 3
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg"), 
  //Room 4
  loadImage("http://img.archiexpo.com/images_ae/photo-g/56938-6385457.jpg")
};
int[] groundsx = {
  //Apartment
  //Floor 1
  780, 
  //North row
  //Room 1
  780, 
  //Room 2
  1030, 
  //Room 3
  1280, 
  //Room 4
  1530, 
  //South row
  //Room 1
  780, 
  //Room 2
  1030, 
  //Room 3
  1280, 
  //Room 4
  1530
};
int[] groundsy = {
  //Apartment
  //Floor 1
  680, 
  //North row
  //Room 1
  480, 
  //Room 2
  480, 
  //Room 3
  480, 
  //Room 4
  480, 
  //South row
  //Room 1
  795, 
  //Room 2
  795, 
  //Room 3
  795, 
  //Room 4
  795
};
int[] groundsw = {
  //Apartment
  //Floor 1
  1000, 
  //North row
  //Room 1
  250, 
  //Room 2
  250, 
  //Room 3
  250, 
  //Room 4
  250, 
  //South row
  //Room 1
  250, 
  //Room 2
  250, 
  //Room 3
  250, 
  //Room 4
  250
};
int[] groundsh = {
  //Apartment
  //Floor 1
  140, 
  //North row
  //Room 1
  210, 
  //Room 2
  210, 
  //Room 3
  210, 
  //Room 4
  210, 
  //South row
  //Room 1
  210, 
  //Room 2
  210, 
  //Room 3
  210, 
  //Room 4
  210
};

PImage img;
PImage zomb;
PImage grass;
PImage rekt;
player you;

void setup() {
  size(1200, 600);
  frameRate(45);
  img = loadImage("https://opengameart.org/sites/default/files/survivor-idle_shotgun_0.png");
  zomb = loadImage("https://opengameart.org/sites/default/files/skeleton-attack_0.png");
  grass = loadImage("https://img3.stockfresh.com/files/r/redpixel/m/84/1667104_stock-photo-high-resolution-artificial-turf-green-grass-image.jpg");
  rekt = loadImage("https://img3.stockfresh.com/files/r/redpixel/m/84/1667104_stock-photo-high-resolution-artificial-turf-green-grass-image.jpg");
  you = new player(600, 300, 50, 40, angle, 6, img);
  for (int i = 0; i < buildingsx.length; i ++) {
    for (int j = buildingsx[i] - buildingsw[i] / 2; j < buildingsx[i] + buildingsw[i] / 2; j += 10) {
      for (int k = buildingsy[i] - buildingsh[i] / 2; k < buildingsy[i] + buildingsh[i] / 2; k += 10) {
        gridsx = append(gridsx, j);
        gridsy = append(gridsy, k);
        gridstag = append(gridstag, i);
        gridstype = append(gridstype, 1);
      }
    }
  }
  for (int i = 0; i < structuresx.length; i ++) {
    for (int j = structuresx[i]; j < structuresx[i] + structuresw[i]; j += 10) {
      for (int k = structuresy[i]; k < structuresy[i] + structuresh[i]; k += 10) {
        gridsx = append(gridsx, j);
        gridsy = append(gridsy, k);
        gridstag = append(gridstag, i);
        gridstype = append(gridstype, 2);
      }
    }
  }
  for (int i = 0; i < gridsx.length; i ++) {
    println(gridsx[i], gridsy[i], gridstag[i], gridstype[i]);
  }
}
boolean mouseOnTop(int sx, int bx, int sy, int by) {
  boolean isontop;
  if (mouseX > sx && mouseX < bx && mouseY > sy && mouseY < by) {
    isontop = true;
  } else {
    isontop = false;
  }
  return isontop;
}
int[] remove(int array[], int item) {
  int outgoing[] = new int[array.length - 1];
  System.arraycopy(array, 0, outgoing, 0, item);
  System.arraycopy(array, item+1, outgoing, item, array.length - (item + 1));
  return outgoing;
}
void button(int x, int y, int w, int h, color c, String written, boolean clicked) {
  boolean growing = false;
  boolean shrinking = false;
  textAlign(LEFT, TOP);
  fill(0);
  textSize(30);
  text(written, x, y);
  stroke(0, 0, 0, lineSize/50 * 255);
  line(x - lineSize + w/2, y + h / 2 + 8, x + lineSize + w/2, y + h / 2 + 8);
  if (mouseOnTop(x, x + w, y, y + h) && lineSize < w/2) {
    growing = true;
    shrinking = false;
    cursor(HAND);
  }
  if (!mouseOnTop(x, x + w, y, y + h) && lineSize > 0) {
    growing = false;
    shrinking = true;
    cursor(ARROW);
  }
  if (growing == true) {
    lineSize += growSpeed;
    growSpeed += 0.1;
  }
  if (shrinking == true) {
    lineSize -= growSpeed;
    growSpeed += 0.1;
  }
  if (lineSize > 50 || lineSize < 0) {
    growSpeed = 3;
  }
  if (lineSize < 0) {
    lineSize = 0;
  }
}
void zombie(int x, int y, float r, int hp) {
  pushMatrix();
  translate(x, y);
  rotate(radians(r) - radians(90));
  imageMode(CENTER);
  image(zomb, 0, 0, 50, 40);
  strokeWeight(1);
  stroke(0);
  noFill();
  rectMode(CORNER);
  rect(-20, -15, 4, (100/100) * 30);
  noStroke();
  fill(255 - hp * 1.7, hp * 2, 0);
  rect(-20, -15, 4, 0.01 * hp * 30);
  popMatrix();
}
void npc(int x, int y, float r, int hp) {
  pushMatrix();
  translate(x, y);
  rotate(radians(r) - radians(90));
  imageMode(CENTER);
  image(img, 0, 0, 50, 40);
  strokeWeight(1);
  stroke(0);
  noFill();
  rectMode(CORNER);
  rect(-20, -15, 4, (100/100) * 30);
  noStroke();
  fill(255 - hp * 1.7, hp * 2, 0);
  rect(-20, -15, 4, 0.01 * hp * 30);
  popMatrix();
}
void building(PImage i, int x, int y, int r, int w, int h, int d, int hp) {
  pushMatrix();
  translate(x, y);
  rotate(radians(r));
  imageMode(CENTER);
  if (hp > 0) {
    image(i, 0, 0, w, h);
  } else {
    image(rekt, 0, 0, w, h);
  }
  popMatrix();
}
void ground(PImage i, int x, int y, int w, int h) {
  imageMode(CORNER);
  image(i, x, y, w, h);
}
String page = "game";
void draw() {
  background(170);
  if (page.equals("menu")) {
    background(255, 255, 255);
    button(600, 250, 70, 50, color(80, 80, 100), "Play", false);
    if (mousePressed && mouseOnTop(600, 700, 250, 350)) {
      page = "game";
    }
  }
  if (page.equals("game")) {
    background(0);
    cursor(ARROW);
    /*pushMatrix();
     translate(xpos, ypos);
     for(int x = -1000; x < 1000; x += 500) {
     for(int y = -1000; y < 1000; y += 500) {
     image(grass, x, y, 500, 500);
     }
     }
     popMatrix();*/
    pushMatrix();
    translate(xpos + random(-screenShaker, screenShaker), ypos + random(-screenShaker, screenShaker));
    for (int i = 0; i < groundsx.length; i++) {
      imageMode(CORNERS);
      ground(groundsi[i], groundsx[i], groundsy[i], groundsw[i], groundsh[i]);
    }
    for (int i = bulletsx.length - 1; i > 0; i--) {
      fill(0);
      ellipse(bulletsx[i], bulletsy[i], 2, 2);
      bulletsx[i] += 15 * cos(radians(bulletsr[i]) - radians(90));
      bulletsy[i] += 15 * sin(radians(bulletsr[i]) - radians(90));
      for (int j = zombiesx.length - 1; j > 0; j--) {
        if (dist(bulletsx[i], bulletsy[i], zombiesx[j], zombiesy[j]) < 20 && bulletsp[i] == 1) {
          zombieshp[j] -= 100;
          bulletsp[i] = 0;
        }
      }
      if (bulletsp[i] == 0 || dist(bulletsx[i], bulletsy[i], 600 - xpos, 30 - ypos) >= 2500) {
        bulletsx = remove(bulletsx, i);
        bulletsy = remove(bulletsy, i);
        bulletsr = remove(bulletsr, i);
        bulletsp = remove(bulletsp, i);
      }
    }
    for (int i = npcsx.length - 1; i > 0; i--) {
      npcsa[i] = zombiesx.length-1;
      if (zombieshp[npcsa[i]] <= 0) {
        npcsa[i] = 0;
      }
      stroke(0);
      //line(npcsx[i], npcsy[i], zombiesx[npcsa[i]], zombiesy[npcsa[i]]);
      for (int j = zombiesx.length - 1; j > 0; j--) {
        if (dist(zombiesx[j], zombiesy[j], npcsx[i], npcsy[i]) < dist(zombiesx[npcsa[i]], zombiesy[npcsa[i]], npcsx[i], npcsy[i]) && abs(dist(zombiesx[j], zombiesy[j], npcsx[i], npcsy[i]) - dist(zombiesx[npcsa[i]], zombiesy[npcsa[i]], npcsx[i], npcsy[i])) > 80) {
          npcsa[i] = j;
        }
      }
      npc(npcsx[i], npcsy[i], npcsr[i], npcshp[i]);
      if (dist(npcsx[i], npcsy[i], zombiesx[npcsa[i]], zombiesy[npcsa[i]]) > 250) {
        npcsx[i] += 6 * cos(radians(npcsr[i]) - radians(90));
        npcsy[i] += 6 * sin(radians(npcsr[i]) - radians(90));
      }
      if (zombiesx[npcsa[i]] > npcsx[i] && zombiesy[npcsa[i]] < npcsy[i]) {
        npcsr[i] = round(degrees(atan(dist(npcsx[i], npcsy[i], zombiesx[npcsa[i]], npcsy[i]) / dist(zombiesx[npcsa[i]], zombiesy[npcsa[i]], zombiesx[npcsa[i]], npcsy[i]))));
      }
      if (zombiesx[npcsa[i]] < npcsx[i] && zombiesy[npcsa[i]] < npcsy[i]) {
        npcsr[i] = round(degrees(-atan(dist(npcsx[i], npcsy[i], zombiesx[npcsa[i]], npcsy[i]) / dist(zombiesx[npcsa[i]], zombiesy[npcsa[i]], zombiesx[npcsa[i]], npcsy[i]))));
      }
      if (zombiesx[npcsa[i]] > npcsx[i] && zombiesy[npcsa[i]] > npcsy[i]) {
        npcsr[i] = round(degrees(-atan(dist(npcsx[i], npcsy[i], zombiesx[npcsa[i]], npcsy[i]) / dist(zombiesx[npcsa[i]], zombiesy[npcsa[i]], zombiesx[npcsa[i]], npcsy[i]))) + 180);
      }
      if (zombiesx[npcsa[i]] < npcsx[i] && zombiesy[npcsa[i]] > npcsy[i]) {
        npcsr[i] = round(degrees(atan(dist(npcsx[i], npcsy[i], zombiesx[npcsa[i]], npcsy[i]) / dist(zombiesx[npcsa[i]], zombiesy[npcsa[i]], zombiesx[npcsa[i]], npcsy[i]))) + 180);
      }
      if (dist(npcsx[i], npcsy[i], zombiesx[npcsa[i]], zombiesy[npcsa[i]]) < 400) {
        npcsf[i] = 1;
      } else {
        npcsf[i] = 0;
      }
      if (npcsf[i] == 1) {
        npcsrof[i] --;
      }
      if (npcsrof[i] == 0) {
        npcsbx = append(npcsbx, round(npcsx[i]));
        npcsby = append(npcsby, round(npcsy[i]));
        npcsbr = append(npcsbr, round((npcsr[i]) + round(random(-2, 2))));
        npcsbp = append(npcsbp, 1);
        npcsbi = append(npcsbi, i);
        npcsrof[i] = 10;
      }
      /*if(npcshp[i] <= 0) {
       npcsx = remove(npcsx, i);
       npcsy = remove(npcsy, i);
       npcsr = remove(npcsr, i);
       npcsa = remove(npcsa, i);
       npcshp = remove(npcshp, i);
       }*/
    }
    for (int i = zombiesx.length - 1; i > 0; i--) {
      zombie(zombiesx[i], zombiesy[i], zombiesr[i], zombieshp[i]);
      if (dist(zombiesx[i], zombiesy[i], 600 - xpos, 300 - ypos) > 10 && zombiesc[i] == 0) {
        zombiesx[i] += 6 * cos(radians(zombiesr[i]) - radians(90));
        zombiesy[i] += 6 * sin(radians(zombiesr[i]) - radians(90));
      }
      if (dist(zombiesx[i], zombiesy[i], 600 - xpos, 300 - ypos) <= 30 && zombiesa[i] == 0) {
        attacked += 0.1;
        zombiesa[i] = 1;
      }
      if (dist(zombiesx[i], zombiesy[i], 600 - xpos, 300 - ypos) > 30 && zombiesa[i] == 1 || zombieshp[i] <= 0 && zombiesa[i] == 1) {
        attacked -= 0.1;
        zombiesa[i] = 0;
      }
      if (600 - xpos > zombiesx[i] && 300 - ypos < zombiesy[i]) {
        zombiesr[i] = round(degrees(atan(dist(zombiesx[i], zombiesy[i], 600 - xpos, zombiesy[i]) / dist(600 - xpos, 300 - ypos, 600 - xpos, zombiesy[i]))));
      }
      if (600 - xpos < zombiesx[i] && 300 - ypos < zombiesy[i]) {
        zombiesr[i] = round(degrees(-atan(dist(zombiesx[i], zombiesy[i], 600 - xpos, zombiesy[i]) / dist(600 - xpos, 300 - ypos, 600 - xpos, zombiesy[i]))));
      }
      if (600 - xpos > zombiesx[i] && 300 - ypos > zombiesy[i]) {
        zombiesr[i] = round(degrees(-atan(dist(zombiesx[i], zombiesy[i], 600 - xpos, zombiesy[i]) / dist(600 - xpos, 300 - ypos, 600 - xpos, zombiesy[i]))) + 180);
      }
      if (600 - xpos < zombiesx[i] && 300 - ypos > zombiesy[i]) {
        zombiesr[i] = round(degrees(atan(dist(zombiesx[i], zombiesy[i], 600 - xpos, zombiesy[i]) / dist(600 - xpos, 300 - ypos, 600 - xpos, zombiesy[i]))) + 180);
      }
      float tempx = zombiesx[i] + 6 * cos(radians(zombiesr[i]) - radians(90));
      
      float tempy = zombiesy[i] + 6 * sin(radians(zombiesr[i]) - radians(90));
      if (gridsx.length > 0) {
        zombiesc[i] = gridsx.length-1;
      } else {
        zombiesc[i] = 0;
      }
      for (int j = gridsx.length - 1; j > 0; j --) {
        if (dist(gridsx[j], gridsy[j], tempx, tempy) >= 10 && zombiesc[i] > 0 /*&& collided == true)*/) {
          zombiesc[i] -= 1;
        } else {
          if (gridstype[j] == 2) {
            structureshp[gridstag[j]] -= 0.1;
          } else if (gridstype[j] == 1) {
            buildingshp[gridstag[j]] -= 0.1;
          }
        }
      }
      text(zombiesc[i], zombiesx[i] + 20, zombiesy[i] + 20);
      if (zombieshp[i] <= 0) {
        zombiesx = remove(zombiesx, i);
        zombiesy = remove(zombiesy, i);
        zombiesr = remove(zombiesr, i);
        zombiesa = remove(zombiesa, i);
        zombieshp = remove(zombieshp, i);
        zombiesc = remove(zombiesc, i);
      }
    }
    for (int i = npcsbx.length - 1; i > 0; i--) {
      fill(0);
      ellipse(npcsbx[i], npcsby[i], 2, 2);
      npcsbx[i] -= 6 * cos((radians(npcsbr[i]) + radians(90)));
      npcsby[i] -= 6 * sin((radians(npcsbr[i]) + radians(90)));
      for (int j = zombiesx.length-1; j > 0; j--) {
        if (dist(npcsbx[i], npcsby[i], zombiesx[j], zombiesy[j]) < 20 && npcsbp[i] == 1) {
          zombieshp[j] -= 10;
          npcsbp[i] = 0;
        }
      }
      if (npcsbp[i] == 0 || dist(npcsbx[i], npcsby[i], 600 - xpos, 30 - ypos) >= 2500) {
        npcsbx = remove(npcsbx, i);
        npcsby = remove(npcsby, i);
        npcsbr = remove(npcsbr, i);
        npcsbp = remove(npcsbp, i);
      }
    }
    for (int i = 0; i < buildingsx.length; i++) {
      building(buildingsi[i], buildingsx[i], buildingsy[i], buildingsr[i], buildingsw[i], buildingsh[i], buildingsd[i], buildingshp[i]);
      if (structureshp[i] > 0) {
        if (600 - xpos - 12 > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos - 12 < buildingsx[i] + buildingsw[i] / 2 && 300 - ypos > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos < buildingsy[i] + buildingsh[i] / 2 && buildingsca[i] == 0) {
          aable += 1;
          buildingsca[i] = 1;
        }
        if (600 - xpos + 12 > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos + 12 < buildingsx[i] + buildingsw[i] / 2 && 300 - ypos > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos < buildingsy[i] + buildingsh[i] / 2 && buildingscd[i] == 0) {
          dable += 1;
          buildingscd[i] = 1;
        }
        if (300 - ypos + 12 > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos + 12 < buildingsy[i] + buildingsh[i] / 2 && 600 - xpos > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos < buildingsx[i] + buildingsw[i] / 2 && buildingscs[i] == 0) {
          sable += 1;
          buildingscs[i] = 1;
        }
        if (300 - ypos - 12 > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos - 12 < buildingsy[i] + buildingsh[i] / 2 && 600 - xpos > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos < buildingsx[i] + buildingsw[i] / 2 && buildingscw[i] == 0) {
          wable += 1;
          buildingscw[i] = 1;
        }
      }
      if (!(600 - xpos - 12 > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos - 12 < buildingsx[i] + buildingsw[i] / 2 && 300 - ypos > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos < buildingsy[i] + buildingsh[i] / 2) && buildingsca[i] == 1) {
        aable -= 1;
        buildingsca[i] = 0;
      }
      if (!(600 - xpos + 12 > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos + 12 < buildingsx[i] + buildingsw[i] / 2 && 300 - ypos > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos < buildingsy[i] + buildingsh[i] / 2) && buildingscd[i] == 1) {
        dable -= 1;
        buildingscd[i] = 0;
      }
      if (!(300 - ypos + 12 > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos + 12 < buildingsy[i] + buildingsh[i] / 2 && 600 - xpos > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos < buildingsx[i] + buildingsw[i] / 2) && buildingscs[i] == 1) {
        sable -= 1;
        buildingscs[i] = 0;
      }
      if (!(300 - ypos - 12 > buildingsy[i] - buildingsh[i] / 2 && 300 - ypos - 12 < buildingsy[i] + buildingsh[i] / 2 && 600 - xpos > buildingsx[i] - buildingsw[i] / 2 && 600 - xpos < buildingsx[i] + buildingsw[i] / 2) && buildingscw[i] == 1) {
        wable -= 1;
        buildingscw[i] = 0;
      }
    }
    for (int i = 0; i < gridsx.length; i ++) {
      if (gridstype[i] == 1) {
        if (buildingshp[gridstag[i]] <= 0) {
          gridsx = remove(gridsx, i);
          gridsy = remove(gridsy, i);
          gridstype = remove(gridstype, i);
          gridstag = remove(gridstag, i);
        }
      } else if (gridstype[i] == 2) {
        if (structureshp[gridstag[i]] <= 0) {
          gridsx = remove(gridsx, i);
          gridsy = remove(gridsy, i);
          gridstype = remove(gridstype, i);
          gridstag = remove(gridstag, i);
        }
      }
    }
    for (int i = 0; i < structuresx.length; i++) {
      rectMode(CORNER);
      noStroke();
      if (structureshp[i] > 0) {
        if (structurest[i].equals("wall")) {
          fill(80);
        } else if (structurest[i].equals("door")) {
          fill(140);
        }
        if (structuresw[i] > structuresh[i] && structurest[i].equals("door") && dist(structuresx[i] + structuresw[i] / 2, structuresy[i] + structuresh[i] / 2, 600 - xpos, 300 - ypos) < (structuresw[i] / 2) + 15) {
          strokeWeight(4);
          stroke(255);
          if (epressed == true) {
            if (structuresw[i] > structuresh[i]) {
              structuresh[i] = structuresw[i];
              structuresw[i] = 15;
            } else {
              structuresw[i] = structuresh[i];
              structuresh[i] = 15;
            }
            epressed = false;
          }
        }
        if (structuresh[i] > structuresw[i] && structurest[i].equals("door") && dist(structuresx[i] + structuresw[i] / 2, structuresy[i] + structuresh[i] / 2, 600 - xpos, 300 - ypos) < (structuresh[i] / 2) + 40) {
          strokeWeight(4);
          stroke(255);
          if (epressed == true) {
            if (structuresw[i] > structuresh[i]) {
              structuresh[i] = structuresw[i];
              structuresw[i] = 15;
            } else {
              structuresw[i] = structuresh[i];
              structuresh[i] = 15;
            }
            epressed = false;
          }
        }
        rect(structuresx[i], structuresy[i], structuresw[i], structuresh[i]);
        if (600 - xpos - 12 > structuresx[i] && 600 - xpos - 12 < structuresx[i] + structuresw[i] && 300 - ypos > structuresy[i] && 300 - ypos < structuresy[i] + structuresh[i] && structuresca[i] == 0) {
          aable += 1;
          structuresca[i] = 1;
        }
        if (600 - xpos + 12 > structuresx[i] && 600 - xpos + 12 < structuresx[i] + structuresw[i] && 300 - ypos > structuresy[i] && 300 - ypos < structuresy[i] + structuresh[i] && structurescd[i] == 0) {
          dable += 1;
          structurescd[i] = 1;
        }
        if (300 - ypos + 12 > structuresy[i] && 300 - ypos + 12 < structuresy[i] + structuresh[i] && 600 - xpos > structuresx[i] && 600 - xpos < structuresx[i] + structuresw[i] && structurescs[i] == 0) {
          sable += 1;
          structurescs[i] = 1;
        }
        if (300 - ypos - 12 > structuresy[i] && 300 - ypos - 12 < structuresy[i] + structuresh[i] && 600 - xpos > structuresx[i] && 600 - xpos < structuresx[i] + structuresw[i] && structurescw[i] == 0) {
          wable += 1;
          structurescw[i] = 1;
        }
      } else {
        fill(120);
        noStroke();
        rect(structuresx[i], structuresy[i], structuresw[i], structuresh[i]);
        imageMode(CORNER);
        image(rekt, structuresx[i], structuresy[i], structuresw[i], structuresh[i]);
      }
      if (!(600 - xpos - 12 > structuresx[i] && 600 - xpos - 12 < structuresx[i] + structuresw[i] && 300 - ypos > structuresy[i] && 300 - ypos < structuresy[i] + structuresh[i]) && structuresca[i] == 1) {
        aable -= 1;
        structuresca[i] = 0;
      }
      if (!(600 - xpos + 12 > structuresx[i] && 600 - xpos + 12 < structuresx[i] + structuresw[i] && 300 - ypos > structuresy[i] && 300 - ypos < structuresy[i] + structuresh[i]) && structurescd[i] == 1) {
        dable -= 1;
        structurescd[i] = 0;
      }
      if (!(300 - ypos + 12 > structuresy[i] && 300 - ypos + 12 < structuresy[i] + structuresh[i] && 600 - xpos > structuresx[i] && 600 - xpos < structuresx[i] + structuresw[i]) && structurescs[i] == 1) {
        sable -= 1;
        structurescs[i] = 0;
      }
      if (!(300 - ypos - 12 > structuresy[i] && 300 - ypos - 12 < structuresy[i] + structuresh[i] && 600 - xpos > structuresx[i] && 600 - xpos < structuresx[i] + structuresw[i]) && structurescw[i] == 1) {
        wable -= 1;
        structurescw[i] = 0;
      }
      if (structureshp[i] <= 0 & structuresg[i] == 0) {
        for (int j = structuresx[i] + 12; j < structuresx[i] + 12 + structuresw[i]; j += 5) {
          for (int k = structuresy[i] + 12; k < structuresy[i] + 12 + structuresh[i]; k += 5) {
            cloudsx = append(cloudsx, j);
            cloudsy = append(cloudsy, k);
            cloudsw = append(cloudsw, structuresw[i]);
            cloudsh = append(cloudsh, structuresh[i]);
            cloudsr = append(cloudsr, round(random(0, 360)));
            cloudsa = append(cloudsa, 0.1);
            cloudsd = append(cloudsd, 255);
          }
        }
        screenShaker = 10;
        structuresg[i] = 1;
      }
    }
    for (int i = 0; i < cloudsx.length; i ++) {
      fill(0, 0, 0, cloudsd[i]);
      noStroke();
      ellipse(cloudsx[i], cloudsy[i], 25, 25);
      cloudsx[i] += cloudsa[i] * cos((cloudsr[i]));
      cloudsy[i] += cloudsa[i] * sin((cloudsr[i]));
      if(cloudsa[i] > 0) {
        cloudsa[i] -= 0.0001;
      }
      cloudsd[i] -= 1;
    }
    popMatrix();
    noStroke();
    fill(110);
    rectMode(CORNER);
    rect(950, 425, 250, 175);
    fill(255 - health * 1.7, health * 2, 0);
    rect(1140, 575, health, 25);
    fill(0);
    textSize(14);
    text(round(health) + " hp", 1140, 575);
    pushMatrix();
    mx = mouseX;
    my = mouseY;
    translate(600, 300);
    rotate(radians(-90) + angle);
    imageMode(CENTER);
    image(img, 10, 0, 50, 40);
    //you.display();
    you.move();
    you.turn(mx, my);
    
    if (mouseX > 600 && mouseY < 300) {
      angle = atan(dist(600, 300, mouseX, 300) / dist(mouseX, mouseY, mouseX, 300));
    }
    if (mouseX < 600 && mouseY < 300) {
      angle = -atan(dist(600, 300, mouseX, 300) / dist(mouseX, mouseY, mouseX, 300));
    }
    if (mouseX > 600 && mouseY > 300) {
      angle = -atan(dist(600, 300, mouseX, 300) / dist(mouseX, mouseY, mouseX, 300)) + radians(180);
    }
    if (mouseX < 600 && mouseY > 300) {
      angle = atan(dist(600, 300, mouseX, 300) / dist(mouseX, mouseY, mouseX, 300)) + radians(180);
    }
    if (mouseX == 600 && mouseY < 300) {
      angle = radians(0);
    }
    if (mouseX == 300 && mouseY > 300) {
      angle = radians(180);
    }
    if (mouseX > 600 && mouseY == 600) {
      angle = radians(90);
    }
    if (mouseX < 600 && mouseY == 600) {
      angle = radians(-90);
    }
    popMatrix();
    npctime--;
    if (npctime == 0) {
      npcsx = append(npcsx, round(random(-800, 1400)));
      npcsy = append(npcsy, round(random(-800, 1100)));
      npcsr = append(npcsr, 0);
      npcsd = append(npcsd, 0);
      npcsf = append(npcsf, 0);
      npcsrof = append(npcsrof, 10);
      npcshp = append(npcshp, 100);
      npcsa = append(npcsa, 0);
      npctime = 1000;
    }
    zombietime --;
    if (zombietime == 0) {
      zombiesx = append(zombiesx, round(random(-800, 1400)));
      zombiesy = append(zombiesy, round(random(-800, 1100)));
      zombiesr = append(zombiesr, 0);
      zombieshp = append(zombieshp, 100);
      zombiesa = append(zombiesa, 0);
      zombiesc = append(zombiesc, 0);
      if (zombiedelay > 15) {
        zombiedelay -= 1;
      }
      zombietime = zombiedelay;
    }
    //println(zombiedelay, zombietime);
    health -= attacked;
    if (firing == true) {
      rof--;
    }
    if (rof == 0) {
      bulletsx = append(bulletsx, round(600 - xpos));
      bulletsy = append(bulletsy, round(300 - ypos));
      bulletsr = append(bulletsr, round(degrees(angle) + round(random(-2, 2))));
      bulletsp = append(bulletsp, 1);
      rof = 10;
    }
    
    if (screenShaker > 0) {
      screenShaket += 1;
    }
    if (screenShaket >= 50) {
      if(screenShaker > 0) {
        screenShaker -= 0.1;
      }
      if(screenShaker <= 1) {
        screenShaker = 0;
        screenShaket = 0;
      }
    }
    //println(xpos - mouseX, ypos - mouseY);
  }
  //println(frameRate);
}
void mousePressed() {
  firing = true;
}

void mouseReleased() {
  firing = false;
}

void keyPressed() {
  if (keyCode == 65) {
    apressed = true;
  }
  if (keyCode == 83) {
    spressed = true;
  }
  if (keyCode == 68) {
    dpressed = true;
  }
  if (keyCode == 87) {
    wpressed = true;
  }
  if (keyCode == 69) {
    epressed = true;
  }
}
void keyReleased() {
  if (keyCode == 65) {
    apressed = false;
  }
  if (keyCode == 83) {
    spressed = false;
  }
  if (keyCode == 68) {
    dpressed = false;
  }
  if (keyCode == 87) {
    wpressed = false;
  }
  if (keyCode == 69) {
    epressed = false;
  }
}

class gun {
  float d, s;
  gun(float damage, float speed) {
    d = damage;
    s = speed;
  }
}

class projectile {
  float x;
  float y;
  float w;
  float h;
  float s;
  float r;
  projectile(float xPos, float yPos, float width, float height, float speed, float rotation) {
    x = xPos;
    y = yPos;
    w = width;
    h = height;
    r = rotation;
    s = speed;
  }
  void move() {
    x += s * cos(radians(r));
    y += s * sin(radians(r));
  }
}
class bullet extends projectile {
  float d;
  bullet(float xPos, float yPos, float width, float height, float speed, float rotation, float damage) {
    super(xPos, yPos, width, height, speed, rotation);
    d = damage;
  }
  
}

class humanoid {
  float x;
  float y;
  float w;
  float h;
  float r;
  float s;
  PImage i;
  humanoid(float xPos, float yPos, float width, float height, float rotation, float speed, PImage img) {                                    //YEEEEEEEEE
    x = xPos;
    y = yPos;
    w = width;
    h = height;
    r = rotation;
    s = speed;
    i = img;
  }
  void display() {
    pushMatrix();
    translate(x, y);
    rotate((-90) + (r));
    imageMode(CENTER);
    image(img, 10, 0, w, h);
    popMatrix();
  }
  void move() {
    if (apressed == true && aable == 0) {
      xpos += 6;
    }
    if (spressed == true && sable == 0) {
      ypos -= 6;
    }
    if (dpressed == true && dable == 0) {
      xpos -= 6;
    }
    if (wpressed == true && wable == 0) {
      ypos += 6;
    }
  }
  void turn(float tx, float ty) {
    if (tx > x && ty < y) {
      r = atan(dist(x, y, tx, y) / dist(tx, ty, tx, y));
    }
    if (tx < x && ty < y) {
      r = -atan(dist(x, y, tx, y) / dist(tx, ty, tx, y));
    }
    if (tx > x && ty > y) {
      r = -atan(dist(x, y, tx, y) / dist(tx, ty, tx, y)) + radians(180);
    }
    if (tx < x && ty > y) {
      r = atan(dist(x, y, tx, y) / dist(tx, ty, tx, y)) + radians(180);
    }
    if (tx == x && ty < y) {
      r = radians(0);
    }
    if (tx == x && ty > y) {
      r = radians(180);
    }
    if (tx > x && ty == y) {
      r = radians(90);
    }
    if (tx < x && ty == y) {
      r = radians(-90);
    }
  }
  void collide() {
    
  }
}

class intelligent extends humanoid {
  intelligent(float xPos, float yPos, float width, float height, float rotation, float speed, PImage img) {
    super(xPos, yPos, width, height, rotation, speed, img);
  }
  void shoot() {
    
  }
}

class player extends intelligent {
  player(float xPos, float yPos, float width, float height, float rotation, float speed, PImage img) {
    super(xPos, yPos, width, height, rotation, speed, img);
  }
}

class zombie extends humanoid {
  zombie(float xPos, float yPos, float width, float height, float rotation, float speed, PImage img) {
    super(xPos, yPos, width, height, rotation, speed, img);
  }
}

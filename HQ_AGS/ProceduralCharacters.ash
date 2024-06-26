// Ppocedural characters header
enum characterColors
{
  CC_black, 
  CC_white, 
  CC_grey, 
  CC_brown, 
  CC_green, 
  CC_blue, 
  CC_red, 
  CC_yellow, 
  CC_purple, 
  CC_beige, 
  CC_orange,
  CC_cyan, 
  CC_skin_porcelain, 
  CC_skin_ivory, 
  CC_skin_warmIvory,
  CC_skin_roseBeige,
  CC_skin_siena, 
  CC_skin_band,
  CC_skin_dark,
  CC_hair_dark, 
  CC_hair_brown, 
  CC_hair_red, 
  CC_hair_blond, 
  CC_hair_grey, 
  CC_hair_white, 
  CC_random
};

enum bodyParts
{
  BP_hair,
  BP_skin, 
  BP_coat, 
  BP_necktie, 
  BP_undershirt, 
  BP_pants, 
  BP_shoes
};

enum viewTypes
{
  walkView, 
  sitView, 
  climbView
};

struct Clothes
{
  bodyParts bodyPart;
  String colorDescription;
  int mainColor;
  int lightColor; 
  int darkColor;
  bool available;
};

import function removeRandomChars(bool);
import void makeSecCharAppearance(this Character*, int, int, CharacterDirection, bool randomizeAppearance = true);
import function recolor(this Character*, Dictionary*);
import function recolorPart(this Character*, bodyParts, characterColors);
import function recolorRandomly(this Character*);
import function recolorPartManualEntry(this Character*, bodyParts, int, int manuallyEnteredColorLight = -1, int manuallyEnteredColorDark = -1);
import function removeFacialHair(this Character*, bool, bool);
import function addFacialHair(this Character*, bool, bool, int);
import function setClothesChangeGUIElements(GUI*, Button*, Label*, Label*, Button*, Button*, Button*, Button*);
import function open_changeClothes_gui(bool, bool, bool, bool, bool, bool, int roomCallIndex = -1); //(1_coat, 2_necktie, 3_shirt, 4_pants, 5_shoe, 6_hair)
import function createPlayerClothing(bodyParts, String, int, int, int, bool available = true);
import function changeClothes_changeBodyPart(bool);
import function changeClothes_changeColor(bool);
import void dressUp(this Character*);
import function wearThisClothing(this Character*, bodyParts, String);
import int getWornClothesIndex(this Character*, bodyParts);
import int getClothesIndex(bodyParts set, String colorDesc);
import bool isPlayerWearing(this Character*, bodyParts, String);
import int getClothingIndexByDescription(bodyParts, String);
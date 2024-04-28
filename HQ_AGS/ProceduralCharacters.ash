// new module header
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
  BP_hair_mustache, 
  BP_skin, 
  BP_coat, 
  BP_necktie, 
  BP_undershirt, 
  BP_pants, 
  BP_shoes
};

import function removeRandomChars(bool);
import void makeSecCharAppearance(this Character*, int, int, CharacterDirection, bool randomizeAppearance = true);
//import function manageRandomCharacter(this Character*, int, int, CharacterDirection, bool randomizeAppearance = true);
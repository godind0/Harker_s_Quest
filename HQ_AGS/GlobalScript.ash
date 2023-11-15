// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.
import Dictionary* verbDictionary;
//import enum elementType;
enum elementType 
{
  roomObjects, 
  roomHotspots, 
  allCharacters, 
  allInventoryItems
};

enum cutsceneIndex
{
  beginQuest, 
  getToWork
};

import String[] roomSpecificParse(String);
import String findVerbInDictionary(String);
import bool interact(String[]);
import String[] findElementIndexByName(String);
import String keycodeToString(char);
import String etToString(elementType);
import elementType stringToET(String);
import bool alphaOrder_isThisBeforeThat(String, String);
import String getNoteDescription(String);
import String whatTimeIsIt(bool);
import bool isItBeforeThisTime(int, int, int, bool, int);
import String addFirstNameInitial (String);
import String getSetofPropertiesByCitySector(String, String);
import String findCodeInCMD(String, bool);
import String findClientNameInCMD(String, bool);
import int getAgePerCode(String);
import String getCityPerCode(String);
import String getSectorPerCode(String);
import String justTheLastName(String);
import bool validateHawkinsCode(String);
import function readThis(String, String);
import bool isCharacterNearObject(Object*, float,  Character*);
import bool isThisOpened(Object*);
import function memorize(String);
import String getMemorisedThought();

import function debugDisplay(String);
import function triggerCutscene(cutsceneIndex);
import function sit(elementType, int, Character*, int,  bool);
import function notableSay(Character*, String, String,  int);
import function notableThought(String, String,  int);
import function notableRead(String, String,  int);
import function enterMap();
import function exitMap();
import String generateHawkinsFile(String, String, int, int, String,  String);
import String getClientName();
import String getClientNameFromCode(String, bool);
import String getCodeFromClientName(String, bool);
import String readClientFile(String);
import function addClassifiableFile(String, String,  String);

import function open_gui(GUI*);
import function close_gui(GUI*);

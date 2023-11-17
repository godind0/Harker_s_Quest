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

enum storyBeat
{
  startYourDay, 
  packYourThings, 
  goToLondon
};

enum zone
{
  JonathanApt, 
  HawkinsOffices, 
  ExeterTrainStation, 
  StationCafe, 
  LondonTrainStation, 
  Purfleet, 
  TelegramOffice, 
  BritishMuseum, 
  PhotographyShop, 
  LawSocietyOffices, 
  StayHere, 
  LondonHotel
};

import function setStoryBeat(storyBeat);
import storyBeat getStoryBeat();

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
import function openWaitGUI(String);

import function adjustTravelDestinations();
import function addTravelDestination(zone);
import function removeTravelDestination(zone);
import function travel(zone);

import String getClientListPerCitySector(String, String);
import String generateReadHawkinsFileString(String);
import bool validatePropertyProposition(String, String);
import String getPropertyRequestMessage(String);
import String getPropertyRequesterName();
import Set* getHawkinsSellerList();
import function createAllHawkinsFiles();
import String getProposedSeller();

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

import function addClassifiableFile(String, String,  String);

import function open_gui(GUI*);
import function close_gui(GUI*);

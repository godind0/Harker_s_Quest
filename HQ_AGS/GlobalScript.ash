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
  getToWork, 
  arriveInLondon, 
  arriveInPurfleet
};

enum storyBeat
{
  startYourDay, 
  packYourThings, 
  goToLondon, 
  HarkerinLondon, 
  PurfleetDone
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
  LondonHotel, 
  StayHere
};

enum city
{
  Exeter, 
  London, 
  Paris, 
  Munich, 
  Vienna, 
  Budapest, 
  Klausenburg, 
  Bistritz
};

enum parentItemDict
{
  subitemDescription, 
  subitemNote, 
  subItemSpoiltime, 
  subItemAlternateName
};

import function setStoryBeat(storyBeat);
import storyBeat getStoryBeat();
import function gameIsOver(String);
import int arrival_x[];
import int arrival_y[];
import String carfaxSeller;

import String[] roomSpecificParse(String);
import function musicInRoom(AudioClip*);
import function musicFirstSetup(AudioClip*);
import String findVerbInDictionary(String);
import bool interact(String[]);
import String[] findElementIndexByName(String);
import String keycodeToString(char);
import String etToString(elementType);
import elementType stringToET(String);
import int getIndexOfElementUsed();
import elementType getETOfElementUsed();
import bool alphaOrder_isThisBeforeThat(String, String);
import function giveScoreOnce(String, int);
import function createTrainTimetables();
import function show_trainTicket_GUI(city, city);
import String getTrainArrivalTime(String);
import String getTrainDepartureTime();

import String getNoteDescription(String);
import String whatTimeIsIt(bool);
import String getAMPM();
import bool isItBeforeThisTime(int, int, int, bool, int);
import bool isThisTimeWithinXminOfThisTime(String, String,  int);
import bool isThisTimeBeforeThisTime(String, String);
import function setCurrentTime(int, int, int, bool,  int);
import int translateTimeToMinutes(String);
import String translateTimeToHHMMAM(int, int, String);
import String translateMinutesToHHMMAM(int);
import function show_wait_GUI(String);
import function applyWait(bool);

import function adjustTravelDestinations();
import function addTravelDestination(zone);
import function removeTravelDestination(zone);
import zone stringAsZone(String);
import function travel_movePlayer(zone);
import function travel(zone);
import function addFood(String, String, String);
import bool playerHasSpoiledFood();
import function cleanAllSpoiledFood();

import function setThreeLondonCabRides(bool);
import Dictionary* cabSellMsg_TravelDestinations;
import function sayListOfThings(String[], Dictionary*, int, Character*);
import String getCabPropositionByIndex(int);
import function cabTellPropositions();

import String getClientListPerCitySector(String, String);
import String generateReadHawkinsFileString(String);
import bool validatePropertyProposition(String, String);
import String getPropertyRequestMessage(String);
import String getPropertyRequesterName();
import Set* getHawkinsSellerList();
import function createAllHawkinsFiles();
import String getProposedSeller();
import String getCarfaxSeller();

import String findTelegramRecipientByName(String);
import function addPlannedTelegram(String, String,  String, String);
import function updateTelegramMessage(String, String, String, String, String);
import function addHotelPackage(String,  int);
import Set* getHotelPackages();

import int getNbNegative();
import int getNbMissingNegatives();
import function resetNbNegativesToMax();
import function takeAPicture(String, String, int);

import function readThis(String, String);
import bool isCharacterNearObject(Object*, float,  Character*);
import bool isCharacterNearCharacter(Character*, float,  Character*);
import bool isCharacterNearHotspot(Hotspot*, float,  Character*);
import bool isThisOpened(Object*);
import function memorize(String);
import String getMemorisedThought();

import function debugDisplay(String);
import function triggerCutscene(cutsceneIndex);
import function sit(elementType, int, Character*, int,  bool);
import function standUp(Character*,  int);
import function notableSay(Character*, String, String,  int);
import function notableThought(String, String,  int);
import function notableRead(String, String,  int);
import function show_simpleTextBox(String);
import function enterMap();
import function exitMap();

import function addSubitem(InventoryItem*, String, String, String);
import function tranfertAllSubitemFromOneParentToAnother(InventoryItem*, InventoryItem*);
import function changeAllSubItemNoteInParent(InventoryItem*, String);

import function open_gui(GUI*);
import function close_gui(GUI*);

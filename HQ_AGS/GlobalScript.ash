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
  PurfleetDone,
  GotOnePhotoBatch, 
  LondonComplete
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

enum commerce
{
  HawkinsEsq, 
  TrainStation, 
  LawSocietyBuilding, 
  Museum, 
  Shop, 
  AlwaysOpened
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
  Bistritz, 
  Plymouth, 
  Salisbury, 
  Andover, 
  Yeovil, 
  Hurstbourne, 
  Woking, 
  Templecombe
};

enum coachState
{
  Empty, 
  HarkerInside, 
  Full
};

enum horseState
{
  NormalHorse, 
  HurtHorse, 
  BandagedHorse
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

enum parentItemDict
{
  subitemDescription, 
  subitemNote, 
  subItemSpoiltime, 
  subItemAlternateName
};

import void sayBackgroundBacklog(this Character*, String addedMessage);

import function setStoryBeat(storyBeat);
import bool hasSeenDraculaLetter();
import storyBeat getStoryBeat();
import bool getSkipCutscene();
import function gameIsOver(String);
import int arrival_x[];
import int arrival_y[];
import String carfaxSeller;
import function setOpeningAndClosingTimes();
import function setupTravelDestinations();
import function playConfirm();
import function playSelect();
import function playCancel();
import function hide_parser_gui();
import function addToVerbDictionary(String);

import String[] roomSpecificParse(String);
import function musicInRoom(AudioClip*,  int);
import function musicFirstSetup(AudioClip*,  int);
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
import bool canPlayerBoardTrain(String);
import function isAnyTrainInStation(city, int, Character*, bool, int);
import String getTrainInStation();
import function manageDarkness();

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
import function addTime(int, int, int, int);
import bool getGottaSleep();
import bool isPlayerHungry();
import bool isPlayerDrowsy();
import function hasEaten();
import function hasSlept();
import function addTimedEventInXMinutes(int, String);
import function removeTimedEventByWhatHappens(String);
import bool playerHasTimedEventByWhatHappens(String);

import function adjustTravelDestinations();
import function addTravelDestination(zone);
import bool playerHasTravelDestination(zone);
import function removeTravelDestination(zone);
import function changeArrival_X_Y(int, int, int);
import zone stringAsZone(String);
import function travel_movePlayer(zone, bool);
import function travel(zone);
import function embarkTrain();
import bool wasOnTrain();
import String isThisPlaceOpened(commerce);
import bool isThisPlaceOpened_bool(commerce);
import commerce getCommerceType(zone);
import zone getCurrentZone();
import function setCurrentZone(zone);
import zone getWantedDestination();
import zone getRealDestination();
import function setTravellingBool(bool);
import bool getTravellingBool();
import int travelDestinationTimeInMinutes(zone, zone);
import function modifyCloudiness(int);
import function takeACab(zone);
import function setHorseViews(horseState);
import function setCoachView(coachState);
import horseState getHorseState();

import function addFood(String, String, String);
import bool playerHasSpoiledFood();
import function cleanAllSpoiledFood();
import bool isFoodSpoiled(String);

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
import String getLedgerReadText();
import function setLedgerReadText(String);
import String getProposedSeller();
import String getCarfaxSeller();
import bool playerHasAllCarfaxPictures();
import bool isThisSigned(InventoryItem*);
import bool areAllExamQuestionsAnswered();
import int howManyCorrectExamAnswers();
import int howManyExamAnswers();

import function addHotelPackage(String, String, String);
import function getHotelPackages();
import function setTelegramInclusionByIndex(String, int, bool);

import int getNbNegative();
import int getNbMissingNegatives();
import function resetNbNegativesToMax();
import function takeAPicture(String, String, int);

import function createBook(String, String,  String, String);
import bool getProposedArchiveBook(int);
import function show_book_gui(String);
import function setProposedArchiveBook(int);
import int findPageByExpressionInCurrentBook(String);
import bool isThisPageReadInCurrentBook(int);

import function readThis(String, String);
import bool isCharacterNearObject(Object*, float,  Character*);
import bool isCharacterNearCharacter(Character*, float,  Character*);
import bool isCharacterNearHotspot(Hotspot*, float,  Character*);
import float calculateDistanceFromCharacter(int, int,  Character*);
import bool isThisOpened(Object*);
import function memorize(String);
import String getMemorisedThought();
import function loseThought();

import function debugDisplay(String);
import function debugDisplayFromHere(String);
import function setDebugFromHere(bool);
import function triggerCutscene(cutsceneIndex);
import function sit(elementType, int, Character*, int,  bool, float overrideReachDistance = -1.0);
import function standUp(Character*,  int);
import function notableSay(Character*, String, String,  int);
import function notableThought(String, String,  int);
import function notableRead(String, String,  int);
import function notableWhisper(Character*, String, String,  int);
import function changeNotableDescription(String);
import function isNoteTaken(String);
import function takeNote();
import function show_simpleTextBox(String);
import function enterMap();
import function exitMap();

import function addSubitem(InventoryItem*, String, String, String);
import bool playerHasSubitem(String, InventoryItem*);
import function tranfertAllSubitemFromOneParentToAnother(InventoryItem*, InventoryItem*);
import function changeAllSubItemNoteInParent(InventoryItem*, String);
import function removeSubitem(InventoryItem*, String,  bool);

import Dictionary* makeAColorDictionary(int hair = 25388, int mustache = 27501, int skin = 58607, int skinShadow = 58444, int coat = 512, int coatLight = 736, int coatDark = 256, int neckTie = 0, int underShirt = 65535, int pants = 4290, int pantsDark = 32, int shoe = 20800, int shoeDark = 14528);
import Dictionary* createARandomSecondaryNPCDictionary();
import Dictionary* createASecondaryNPCDictionary(characterColors thisSkin = CC_random, characterColors thisHair = CC_random, int hasMustache = -1, characterColors thisJacket = CC_random, characterColors thisNecktie = CC_random, characterColors thisUndershirt = CC_random, characterColors thisPant = CC_random, characterColors thisShoe = CC_random);
import function changeCharacterColors(Character*, Dictionary*);
import function manageRandomCharacter(Character*, int, int, CharacterDirection, bool randomizeAppearance = true);

import function foundMorseClue(int);
import bool getMorseClues(int);//-1 return true for "all done"

import function open_gui(GUI*);
import function close_gui(GUI*);

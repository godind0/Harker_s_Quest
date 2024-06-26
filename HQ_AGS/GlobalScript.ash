// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.
import Dictionary* verbDictionary;

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
  StayHere, 
  JonathanBedroom
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

enum parentItemDict
{
  subitemDescription, 
  subitemNote, 
  subItemSpoiltime, 
  subItemAlternateName
};

struct shavingArea
{
  int roomNumber;
  elementType mirrorET;
  int mirrorIndex;
  elementType sinkET;
  int sinkIndex;
};

//NPC MANAGEMENT
import void sayBackgroundBacklog(this Character*, String addedMessage);
import bool getPreviouslyTalkedTo(Character*);
import function setPreviouslyTalkedTo(Character*,  bool);

//SOUNDS AND MUSIC
import function playConfirm();
import function playSelect();
import function playCancel();
import function musicInRoom(AudioClip*,  int);
import function musicFirstSetup(AudioClip*,  int);

//GUI
import function hide_parser_gui();
import function show_simpleTextBox(String);
import function open_gui(GUI*);
import function close_gui(GUI*);

//INVENTORY
import bool playerHasAnySubitem(InventoryItem*);
import function addSubitem(InventoryItem*, String, String, String);
import bool playerHasSubitem(String, InventoryItem*);
import function tranfertAllSubitemFromOneParentToAnother(InventoryItem*, InventoryItem*);
import function changeAllSubItemNoteInParent(InventoryItem*, String);
import function removeSubitem(InventoryItem*, String,  bool);
// > GAME SPECIFIC : TELEGRAMS AND PACKAGES
import function addHotelPackage(String, String, String);
import function getHotelPackages();
import function setTelegramInclusionByIndex(String, int, bool);
// > PHOTOGRAPHY
import int getNbNegative();
import int getNbMissingNegatives();
import function resetNbNegativesToMax();
import function takeAPicture(String, String, int);

//GENERAL GAMEPLAY
import function addToVerbDictionary(String);
import String[] roomSpecificParse(String);
import String findVerbInDictionary(String);
import bool interact(String[]);
import String[] findElementIndexByName(String);
import String etToString(elementType);
import elementType stringToET(String);
import int getIndexOfElementUsed();
import elementType getETOfElementUsed();
import function giveScoreOnce(String, int);
import function gameIsOver(String);
import int getObjectMidX(this Object*);
import void gotoObject(this Character*, Object*);
import void gotoHotspot(this Character*, Hotspot*);

// > ROOM STATE
import bool isCharacterNearObject(Object*, float,  Character*);
import bool isCharacterNearCharacter(Character*, float,  Character*);
import bool isCharacterNearHotspot(Hotspot*, float,  Character*);
import float calculateDistanceFromCharacter(int, int,  Character*);
import bool isThisOpened(this Object*);
// > ACTIONS
import function sit(this Character*, elementType, int, int,  bool, float overrideReachDistance = -1.0);
import function standUp(this Character*,  int);
import void closeObject(this Object*);
import void openObject(this Object*);
import function useInteraction(String);
//TIME MANAGEMENT
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
// > DARKNESS
import function modifyCloudiness(int);
import function manageDarkness();
// > TIMED EVENTS
import function addTimedEventInXMinutes(int, String);
import function removeTimedEventByWhatHappens(String);
import bool playerHasTimedEventByWhatHappens(String);
// > NEEDS
import bool getGottaSleep();
import bool isPlayerHungry();
import bool isPlayerDrowsy();
import function hasEaten();
import function hasSlept();
import function addFood(String, String, String);
import bool playerHasSpoiledFood();
import function cleanAllSpoiledFood();
import bool isFoodSpoiled(String);

//####################################################################################################
//GAME-SPECIFIC
import function setStoryBeat(storyBeat);
import bool hasSeenDraculaLetter();
import storyBeat getStoryBeat();
import bool getSkipCutscene();
import function triggerCutscene(cutsceneIndex);
// > LOCATION MANAGEMENT
import int arrival_x[];
import int arrival_y[];
import function setOpeningAndClosingTimes();
import function setupTravelDestinations();
import function adjustTravelDestinations();
import function addTravelDestination(zone);
import bool playerHasTravelDestination(zone);
import function removeTravelDestination(zone);
import function changeArrival_X_Y(int, int, int);
import zone stringAsZone(String);
import function travel_movePlayer(zone, bool);
import function travel(zone);
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
// > TRAINS
import function createTrainTimetables();
import function show_trainTicket_GUI(city, city);
import String getTrainArrivalTime(String);
import String getTrainDepartureTime();
import bool canPlayerBoardTrain(String);
import function isAnyTrainInStation(city, int, Character*, bool, int);
import String getTrainInStation();
import function embarkTrain();
import bool wasOnTrain();
// > CAB
import function takeACab(zone);
import function setHorseViews(horseState);
import function setCoachView(coachState);
import horseState getHorseState();
import function setThreeLondonCabRides(bool);
import Dictionary* cabSellMsg_TravelDestinations;
import function sayListOfThings(String[], Dictionary*, int, Character*);
import String getCabPropositionByIndex(int);
import function cabTellPropositions();
// > CONVEYANCING
import String getClientListPerCitySector(String, String);
import String generateReadHawkinsFileString(String);
import bool validatePropertyProposition(String, String);
import int getPropertyAge(String);
import String getPropertyRequestMessage(String);
import String getPropertyRequesterName();
import String getPropertyRequestSector(String);
import String getPropertyRequestCity(String);
import String getPropertyRequestAgeMin(String);
import String getPropertyRequestAgeMax(String);
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
// > NOTEBOOK
import function createANote(String, String);
import function linkNoteToQuestByTitle(String, int);
import function modifyQuestNoteLineVariant(int, int, int);
import int getQuestLineVariant(int, int);
import function addDynamicQuestTextElement(int, String, String);
import function notableSay(Character*, String, String,  int, int overrideCode=0);
import function notableThought(String, String,  int, int overrideCode=0);
import function notableRead(String, String,  int, int overrideCode = 0);
import function notableWhisper(Character*, String, String,  int, int overrideCode = 0);
import function changeNotableDescription(String);
import function isNoteTaken(String);
import function takeNote();
// > BOOKS
import function createBook(String, String,  String, String);
import bool getProposedArchiveBook(int);
import function show_book_gui(String);
import function setProposedArchiveBook(int);
import int findPageByExpressionInCurrentBook(String);
import bool isThisPageReadInCurrentBook(int);
import function readThis(String, String);
// > MEMORY
import function memorize(String);
import String getMemorisedThought();
import function loseThought();
// > MORSE
import function foundMorseClue(int);
import bool getMorseClues(int);//-1 return true for "all done"
// > BEARD
import function setBeardPercent(int);
import function getBeardPercent();
// > SHARED VARIABLES
import String carfaxSeller;

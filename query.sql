StepSQLCode
UPDATE G11 
INNER JOIN TreeList ON G11.[TreeSpecies] = TreeList.scientificName 
SET G11.treeName = TreeList.[englishName]
WHERE G11.[TreeSpecies]=TreeList.[scientificName];

INSERT INTO FlagTable (globalID, flag_initial)
SELECT globalID, uflag
FROM G11
WHERE [Tree Flag Answer] like someflag;

UPDATE FlagTable 
INNER JOIN FlagsRefTable ON FlagTable.flag_initial = FlagsRefTable.code 
SET FlagTable.description = FlagsRefTable.[description]
WHERE FlagTable.[flag_initial]=FlagsRefTable.[code];

UPDATE G7 
INNER JOIN TreeList ON G7.[Pick the most suitable option] = TreeList.scientificName 
SET G7.treeName = TreeList.[englishName]
WHERE G7.[Pick the most suitable option]=TreeList.[scientificName];

INSERT INTO FlagTable ( globalID, flag_initial )
SELECT globalID, uflag
FROM G7
WHERE [Flags] like someflag;

UPDATE FlagTable 
INNER JOIN FlagsRefTable ON FlagTable.flag_initial = FlagsRefTable.id 
SET FlagTable.description = FlagsRefTable.[description]
WHERE FlagTable.[flag_initial]=FlagsRefTable.[id];

UPDATE G11 
SET team=11;

INSERT INTO G7_11 ( globalID, surveyDate, surveyor, longitude, latitude, elevation, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, diameter, comments)
SELECT globalID, surveyDate, surveyor, longitude, latitude, elevation, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, diameter, comments
FROM G11

UPDATE TreeList 
SET native = IIF(TreeList.orign = "Native", "Yes", "No");
INSERT INTO Group10FlagTable ( GlobalID, Flag )
SELECT GlobalID, uflag
FROM Group10
WHERE (((Group10.[Flag]) Like someflag));

INSERT INTO Group1Flagtable ( GlobalID, Flag )
SELECT GlobalID, uflag
FROM Group1
WHERE (((Group1.[Flag]) Like someflag));

UPDATE Flagtable 
INNER JOIN Group10Flagtable ON [Flagtable].treeflagid=Group10Flagtable.Flag SET Group10Flagtable.FlagDescription = [Flagtable].flagdescription
WHERE [Flagtable].treeflagid=Group10Flagtable.Flag;

UPDATE Flagtable 
INNER JOIN Group1Flagtable ON [Flagtable].Flag=Group1Flagtable.Flag SET Group1Flagtable.Flagdescription = [Flagtable].flagdescription
WHERE ((([Flagtable].Flag)=Group1Flagtable.Flag));

UPDATE Group1, treeHealth SET Group1.treeHealth = treeHealth.[ID]
WHERE Group1.[treeHealthorginal]=treeHealth.[treeHealth];

UPDATE Group1
SET 
Diameter = ROUND(Diameter / 100, 3),
deadwoodPercentage = RIGHT(deadwoodPercentageorginal, LEN(deadwoodPercentageorginal) - 8);

UPDATE Group10
SET Diameter = ROUND(Diameter/100,3);

INSERT INTO G1_10copy ( globalID, team, surveyDate, surveyor, longitude, latitude, elevation, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, diameter, comments )
SELECT Group1.globalID, 1 , Group1.SurveyDate, Group1.Surveyor, Group1.Longitude, Group1.Latitude, Group1.Elevation, Group1.horizontalAccuracy, Group1.verticalAccuracy, Group1.treeName, Group1.treeHealth, Group1.deadwoodPercentage, Group1.treeHeight, Group1.canopyWidth, Group1.diameter, Group1.comments
FROM Group1;

INSERT INTO Flagtable1_10 (globalID, flag, flagDescription)
SELECT globalID, flag, flagDescription
FROM Group10Flagtable;

UPDATE G1_10 
SET surveyDate = cdate(left (mid(surveyDatein,6),4) + '/' + left (surveyDatein,2) + '/' + left (mid(surveyDatein,4),1));

UPDATE myGroup
INNER JOIN treeList ON myGroup.treeName = Replace(treeList.treeName,"","-")
SET myGroup.treeNameUpdate = treeList.treeName
INSERT INTO flags ( GlobalID, flags )
SELECT GlobalID, uflag
FROM myGroup
WHERE flags LIKE  someflags;

UPDATE Group5
SET treeHealthRemodel = x
WHERE treeHealth = y

UPDATE group5
SET deadwoodPercentage = x
WHERE GlobalID = y

UPDATE group5
SET treeHeight = 10.51
WHERE GlobalID = "fbb5504f-1388-4819-8b04-64936118f220"

UPDATE group5
SET canopyWidth = x
WHERE GlobalID = y

UPDATE Group5 
SET diameter = IIF(diameter>=2.23,(diameter*0.01),diameter);

INSERT INTO flags ( GlobalID, flags )
SELECT GlobalID, uflag
FROM group5
WHERE flags LIKE  someflags;

INSERT INTO flags ( GlobalID, flags )
SELECT GlobalID, uflag
FROM group4
WHERE flags LIKE  someflags;

INSERT INTO surveyTestTable (GlobalID,Team,surveyor,elevation,horizontalAccuracy,verticalAccuracy,treeName,treeHealth,deadwoodPercentage,treeHeight,canopyWidth,diameter,surveyDate,longitude,latitude,comments)

SELECT GlobalID,5,surveyor,elevation,horizontalAccuracy,NULL,treeName,treeHealthRemodel,deadwoodPercentage,treeHeight,canopyWidth,diameter,surveyDate,longitude,latitude,comments
FROM Group5

INSERT INTO surveyTestTable (GlobalID,Team,surveyor,elevation,horizontalAccuracy,verticalAccuracy,treeName,treeHealth,deadwoodPercentage,treeHeight,canopyWidth,diameter,surveyDate,longitude,latitude,comments)
SELECT GlobalID,4,surveyor,elevation,horizontalAccuracy,NULL,treeName,treeHealth,deadwoodPercentage,treeHeight,canopyWidth,diameter,surveyDate,longitude,latitude,comments
FROM Group4

INSERT INTO Flag ( GlobalID, Flag )
SELECT Group2.GlobalID, nflag
FROM Group2
WHERE Group2.Flag LIKE xflags;

UPDATE Group2 SET Diameter_M = Diameter/100;
INSERT INTO FlagG8 ( GlobalID, Flag )
SELECT Group8.GlobalID, nflag
FROM Group8
WHERE Group8.Flags LIKE xflags;

UPDATE Group8 
INNER JOIN TreeList ON Group8.treeName=REPLACE(REPLACE(REPLACE(TreeList.treeName," ",""),"-",""),"'","") 
SET Group8.treeNameU = TreeList.treeName;

UPDATE Group2
SET treeHealthN= N
where treeHealth=X;

UPDATE TreeList SET treenative = IIF(treenative="Native", "Yes", "No");

INSERT INTO Group2_8 ( GlobalID, team,elevation, surveydate, Surveyor, Longitude, Latitude, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, Diameter, comments )
SELECT GlobalID, 2,elevation, surveydate, Surveyor, Longitude, Latitude, horizontalAccuracy, NULL, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, Diameter, comments FROM Group2;

INSERT INTO Group2_8 ( GlobalID, team,elevation, surveydate, Surveyor, Longitude, Latitude, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, Diameter, comments )
SELECT GlobalID, 8,elevation, surveydate, Surveyor, Longitude,Latitude, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, Diameter, comments FROM Group8;

INSERT INTO FlagG2_8 ( GlobalID, Flag )
SELECT GlobalID, Flag
FROM FlagG2;

INSERT INTO FlagG2_8 ( GlobalID, Flag )
SELECT GlobalID, Flag
FROM FlagG8;

INSERT INTO Group9_3 ( globalID, team, surveyDate, surveyor, longitude, latitude, elevation, horizontalAccuracy, verticalAccuracy, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, diameter, comments )
SELECT globalID, 9, surveyDate, surveyor, longitude, latitude, elevation, horizontalAccuracy, NULL, treeName, treeHealth, deadwoodPercentage, treeHeight, canopyWidth, diameter, comments
FROM Group9_online1;

UPDATE Group9_online1 
SET treeName = coniferous &''& deciduous, treeHealth = LEFT (treeHealthRank,1);

UPDATE Group9_online1
SET diameter = diameter_cm/100;

UPDATE Group9_online1 
INNER JOIN TreeList
ON Group9_online1.treeName = REPLACE(TreeList.treeName,"" "",""_"")
SET Group9_online1.treeName = TreeList.treeName

INSERT INTO FlagTable ( globalID, flag )
SELECT Group9_online1.globalID, nflag 
FROM Group9_online1
WHERE Group9_online1.flagsg9 Like xflags;

UPDATE TreeList
SET native = IIF(origin = ""Native"",""Yes"",""No"");

UPDATE Group3 INNER JOIN TreeList ON Group3.treenum = TreeList.ID 
SET Group3.treeName = TreeList.treeName;

UPDATE Group3
SET treeHeight = VAL(treeHeight_o);

INSERT INTO FlagTable ( globalID, flag )
SELECT Group3.globalID, nflag 
FROM Group3
WHERE Group3.flagsg3 Like xflags;

UPDATE Group9_online1 
SET deadwoodPercentage = deadwoodPercentagen, treeHeight = treeHeightn, canopyWidth = canopyWidthn;

UPDATE Group3 
SET deadwoodPercentage = deadwoodPercentagel, treeHealth = treeHealthl, canopyWidth = canopyWidthd;

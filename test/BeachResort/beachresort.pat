; Mansion Layout
;
ENTRANCE 110


ROOM
	ID 110
	DROPZONE
	NAME "Resort"
	PICT "resort.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 6 NAME "beach2.gif" ENDPICTURE
	PICTURE ID 7 NAME "plant2.gif" ENDPICTURE
	SPOT
		ID 7
		NAME "palm"
		OUTLINE 45,290  70,290  70,315  45,315
		PICTS 7,0,0 ENDPICTS
		SCRIPT
ON ENTER { 30 ME SETALARM }
ON ALARM {
{ 0 ME SETSPOTSTATELOCAL }
{ ME GETSPOTSTATE 1 + ME SETSPOTSTATELOCAL }
ME GETSPOTSTATE 0 > IFELSE
85 ME SETALARM
}
		ENDSCRIPT
		ENDSPOT
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 120
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 140
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		SCRIPT
ON SIGNON
{
"Welcome to " SERVERNAME + ", " + USERNAME + "!" + LOCALMSG
}
		ENDSCRIPT
		ENDDOOR
	SPOT
		ID 6
		NAME "sea"
		OUTLINE 178,205  205,205  205,228  178,228
		PICTS 6,0,0 ENDPICTS
		SCRIPT
ON ENTER { 30 ME SETALARM }
ON ALARM {
{ 0 ME SETSPOTSTATELOCAL }
{ ME GETSPOTSTATE 1 + ME SETSPOTSTATELOCAL }
ME GETSPOTSTATE 0 > IFELSE
60 ME SETALARM
}
		ENDSCRIPT
		ENDSPOT
	ENDROOM


ROOM
	ID 120
	DROPZONE
	NAME "Resort Path"
	PICT "resortpath.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 130
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 110
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM


ROOM
	ID 130
	DROPZONE
	NAME "Resort Beach"
	PICT "resortbeach.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 140
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 120
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM


ROOM
	ID 140
	DROPZONE
	NAME "Beach Palms"
	PICT "beachpalms.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 110
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 130
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM

END
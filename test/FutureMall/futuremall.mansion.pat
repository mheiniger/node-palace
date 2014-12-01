; Mansion Layout
;
ENTRANCE 310


ROOM
	ID 310
	DROPZONE
	NAME "RiverCity Mall"
	PICT "rivermall.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 6 NAME "river1.gif" ENDPICTURE
	PICTURE ID 7 NAME "river2.gif" ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 320
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 340
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
		OUTLINE 139,302  167,302  167,330  139,330
		PICTS 6,0,0 7,0,0 ENDPICTS
		SCRIPT
ON ENTER { 0 ME SETALARM }
ON ALARM {
{ 0 ME SETSPOTSTATELOCAL }
{ ME GETSPOTSTATE 1 + ME SETSPOTSTATELOCAL }
ME GETSPOTSTATE 2 > IFELSE
14 ME SETALARM
}
		ENDSCRIPT
		ENDSPOT
	ENDROOM


ROOM
	ID 320
	DROPZONE
	NAME "Mall Foyer"
	PICT "mallfoyer.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 330
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 310
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM


ROOM
	ID 330
	DROPZONE
	NAME "Mall Stairs"
	PICT "mallstairs.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 340
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 320
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM


ROOM
	ID 340
	DROPZONE
	NAME "Mall Arch"
	PICT "mallarch.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 310
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 330
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM

END
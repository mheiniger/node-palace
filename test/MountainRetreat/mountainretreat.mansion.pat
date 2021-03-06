; Mansion Layout
;
ENTRANCE 510


ROOM
	ID 510
	DROPZONE
	NAME "Cliff House"
	PICT "cliffhouse.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 6 NAME "smokeb.gif" ENDPICTURE
	PICTURE ID 7 NAME "poolb.gif" ENDPICTURE
	SPOT
		ID 7
		NAME "pool"
		OUTLINE 246,358  284,358  284,373  246,373
		PICTS 7,0,0 ENDPICTS
		SCRIPT
ON ENTER { 10 ME SETALARM }
ON ALARM {
{ 0 ME SETSPOTSTATELOCAL }
{ ME GETSPOTSTATE 1 + ME SETSPOTSTATELOCAL }
ME GETSPOTSTATE 1 > IFELSE
10 ME SETALARM
}
		ENDSCRIPT
		ENDSPOT
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 520
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 540
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
		NAME "smoke"
		OUTLINE 230,14  246,14  246,31  230,31
		PICTS 6,0,0 ENDPICTS
		SCRIPT
ON ENTER { 25 ME SETALARM }
ON ALARM {
{ 0 ME SETSPOTSTATELOCAL }
{ ME GETSPOTSTATE 1 + ME SETSPOTSTATELOCAL }
ME GETSPOTSTATE 1 > IFELSE
25 ME SETALARM
}
		ENDSCRIPT
		ENDSPOT
	ENDROOM


ROOM
	ID 520
	DROPZONE
	NAME "Sun through the trees"
	PICT "sunstream.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 530
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 510
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM


ROOM
	ID 530
	DROPZONE
	NAME "Moonrise"
	PICT "moonrisetree.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 540
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 520
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM


ROOM
	ID 540
	DROPZONE
	NAME "Retreat Path"
	PICT "retreatpath.gif"
	ARTIST "StuShepherd"
	PICTURE ID 4 NAME "roomright.gif" TRANSCOLOR 0 ENDPICTURE
	PICTURE ID 5 NAME "roomleft.gif" TRANSCOLOR 0 ENDPICTURE
	DOOR
		ID 4
		NAME "Next"
		DONTMOVEHERE
		DEST 510
		OUTLINE 473,349  509,349  509,381  473,381
		PICTS 4,0,0 ENDPICTS
		ENDDOOR
	DOOR
		ID 5
		NAME "Previous"
		DONTMOVEHERE
		DEST 530
		OUTLINE 3,349  39,349  39,381  3,381
		PICTS 5,0,0 ENDPICTS
		ENDDOOR
	ENDROOM

END
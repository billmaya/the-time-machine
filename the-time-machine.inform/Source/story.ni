The story title is "The Time Machine".
The story author is "Bill Maya".
The story headline is "A Interactive Novella [unicode 169] 2021-2023".
The story genre is "Science Fiction".
The release number is 12.
The story description is "Did your good friend Wells really time travel into the future to the year 802,701 A.D. to the age of Eloi and Morlocks? Only you can investigate his story and determine if he is telling the truth or if he is delusional.".
The story creation year is 2021.
 
[ WORDS - 43228 ]

Table of Releases
release	notes
"1"	"beta-1.0.1 release"
"2"	"beta-1.0.2 release"
"3"	"v1.0 parsercomp 2021 release"
"4"	"v1.1 post-parsercomp 2021 release"
"5"	"v1.2"
"6"	"v1.3"
"7"	"v1.4"
"8"	"v1.5"
"9"	"v1.6"
"10"	"v1.7"
"11"	"v1.8"
"12"	"v1.9"
"13"	"v2.0 alpha"

Volume - Beginning The Story

The player is in Woking Street.  [the Main Room. [for compass test] ]
The description of the player is "You rarely think of yourself in those terms, preferring to focus your prodigious logical and legal faculties on the work that your profession and your clients demand.[first time] But if you had to waste time on something so introspective, you might describe yourself as a middle-aged man who has reached a certain station in life where success and social esteem allow you to enjoy all the benefits of this modern age.[only] Truly, this is the best of times." [Mention something about Wells here?]

Understand "player" or "protagonist" or "lawyer" as yourself. [https://intfiction.org/t/understand-something-else-as-the-player/54102]

The current-year is text that varies.
The current-year is "1895".

The numeric-year is a number that varies.
The numeric-year is 1895.

debug-mode is a truth state that varies.
debug-mode is false. [true.]

To say introduction:
	say "'Let me go!'

Wells struggles against the efforts of the two orderlies who are dragging him towards the horse-drawn ambulance parked in the street. Desperate, he pulls himself free and stumbles into you, almost knocking the both of you to the ground.

'My friend, I[']m not crazy,' he says, his eyes desperate and pleading. 'I know my story sounds insane, but it[']s true. Every word of it. You believe me, don[']t you?'

Dr. Humboldt intervenes, placing himself between you and Wells. 'There, there, Wells. Of course we believe you. You just had a terrible shock; you need to rest after all these...time traveling adventures of yours. Plenty of time to sort it all out after you[']ve had a bit of a break. Nothing to worry about.'

You look at the doctor and back at Wells, not knowing whom to believe. Wells is your oldest friend, but the doctor makes a good point, especially after the story you[']ve just heard from Wells['] own mouth. Morlocks. Eloi. Time travel. It sounds fantastical.

'I can prove it all,' Wells says. He starts fumbling in his vest pockets, looking for something. 'In my workshop you[']ll find[unicode 8212]Get your bloody hands off of me!' The orderlies have grabbed Wells a second time. 'No, damn you! Let me go!' 

Wells forgets whatever he was looking for in his pockets and struggles against the orderlies, but they[']re prepared this time, and manage to overpower your friend and manhandle him into the ambulance. But it[']s a near thing: So violent is Wells['] struggle that his pocket watch falls to the ground.

Humboldt notices your concerned look. 'Don[']t worry,' he says. 'They[']re professionals, used to dealing patients like this all the time. They[']re not being as rough with him as they look.'"

When play begins: 
	now the time of day is 10:00 PM;
	say "[introduction]";
	[center "Press SPACE to continue.";
	wait for the SPACE key;
	clear only the main screen;]
	open right-sidebar window;
	open title-inventory window;
	open list-inventory window;
	open title-characters window;
	open list-characters window;
	open title-topics window;
	open character-topics window;
	if debug-mode is true:
		open debug-title window;
		open debug-info window;
	now suggest-on-greeting is false.

After printing the banner text, say "[line break][italic type]Players can type 'about' or 'help' and then hit the Enter/Return key at any time."

Volume - Setup

Part - Missing Item Description Check

[Checks for missing item descriptions]
[
When play begins (this is the run property checks at the start of play rule): 
	repeat with item running through things: 
		if description of the item is "":
			say "[item] has no description."

[Writing §20.5. Matching and exact matching]	
[Writing §20.6. Regular expresssion matching]		
			
When play begins (this is the run TBD checks at the start of play rule):
	repeat with item running through things:
		if description of item matches the text "TBD":
			say "[item] description TBD."
]

Part - Extensions

Include Basic Help Menu by Emily Short.

Include Punctuation Removal by Emily Short. [Writing §17.21. Understanding mistakes]

Include Conversation Package by Eric Eve. [Contains Epistemology, Conversation Framework, Conversation Suggestions and Conversasional Defaults extensions]

Include Flexible Windows by Jon Ingold.

Include Basic Screen Effects by Emily Short.

After reading a command:
	resolve punctuated titles.
	
Part - User Interface

Chapter - Windows

Section - Setup

The right-sidebar window is a graphics g-window spawned by the main window.
The position of the right-sidebar window is g-placeright.
The scale method of the right-sidebar window is g-fixed-size.
The measurement of the right-sidebar window is 290.

The title-characters window is a text grid g-window spawned by the right-sidebar window.
The position of the title-characters window is g-placeabove.
The scale method of the title-characters window is g-fixed-size.
The measurement of the title-characters window is 2. 

The list-characters window is a text buffer g-window spawned by the right-sidebar window.
The position of the list-characters window is g-placeabove.
The scale method of the list-characters window is g-fixed-size.
The measurement of the list-characters window is 4. [8.]

The title-talking-to window is a text grid g-window spawned by the right-sidebar window.
The position of the title-talking-to window is g-placeabove.
The scale method of the title-talking-to window is g-fixed-size.
The measurement of the title-talking-to window is 2. 

The talking-to-character window is a text buffer g-window spawned by the right-sidebar window.
The position of the talking-to-character window is g-placeabove.
The scale method of the talking-to-character window is g-fixed-size.
The measurement of the talking-to-character window is 3.

The title-topics window is a text grid g-window spawned by the right-sidebar window.
The position of the title-topics window is g-placeabove.
The scale method of the title-topics window is g-fixed-size.
The measurement of the title-topics window is 2.

The character-topics window is a text buffer g-window spawned by the right-sidebar window.
The position of the character-topics window is g-placeabove.
The scale method of the character-topics window is g-fixed-size.
The measurement of the character-topics window is 9.

The title-inventory window is a text grid g-window spawned by the right-sidebar window.
The position of the title-inventory window is g-placeabove.
The scale method of the title-inventory window is g-fixed-size.
The measurement of the title-inventory window is 2.

The list-inventory window is a text buffer g-window spawned by the right-sidebar window.
The position of the list-inventory window is g-placeabove.
The scale method of the list-inventory window is g-fixed-size.
The measurement of the list-inventory window is 12. [16.]

The debug-title window is a text grid g-window spawned by the right-sidebar window.
The position of the debug-title window is g-placeabove.
The scale method of the debug-title window is g-fixed-size.
The measurement of the debug-title window is 2.

The debug-info window is a text buffer g-window spawned by the right-sidebar window.
The position of the debug-info window is g-placeabove.
The scale method of the debug-info window is g-fixed-size.
The measurement of the debug-info window is 9.

Section - Rules 

Rule for refreshing the title-characters window:
	let X be the list of people who are major that are not the player in the location of the player;
	if  X is not empty:
		say "People You Can Talk To By[line break]Saying 'Hello' To Them";
	otherwise:
		say "".

Rule for refreshing the list-characters window:
	let X be the list of people who are major that are not the player in location of player;
	if X is not empty:
		say "[X]";
	otherwise:
		say "".

Rule for refreshing the title-talking-to window:
	say "[if the current interlocutor is not nothing]You Are Now Talking To[line break]This Person[otherwise][end if]".
	
Rule for refreshing the talking-to-character window:
	if current interlocutor is not nothing:
		say current interlocutor.
	
Rule for refreshing the title-topics window:
	say "[if the current interlocutor is not nothing]Some Things You Can Talk[line break]About With [current interlocutor][otherwise][end if]".
	
Rule for refreshing the character-topics window:
	if current interlocutor is not nothing:
		try listing suggested topics;
	otherwise:
		say "".
	
Rule for refreshing the title-inventory window:
	say "Possessions". 
	
Rule for refreshing the list-inventory window:
	try taking inventory.

Rule for refreshing the debug-title window:
	say "DEBUG".
	
Section - Styles

[Table of User Styles (continued)
window	color	background color	font weight	fixed width
title-characters	"#FFFFFF"	"#000000"	light-weight	false
title-talking-to	"#FFFFFF"	"#000000"	light-weight	false
title-topics	"#FFFFFF"	"#000000"	light-weight	false
title-inventory	"#FFFFFF"	"#000000"	light-weight	false]

[
Table of User Styles (continued)
window (a g-window)    	
style name (a glulx text style)    	
background color (a text)    	
color (a text)    	
first line indentation (a number)    	
fixed width (a truth state)    	
font weight (a font weight)    	
indentation (a number)    	
italic (a truth state)    	
justification (a text justification)    	
relative size (a number)    	
reversed (a truth state)
]

Chapter - Status Line

[The original code was taken from the Improved Status Line section of "Bronze" by Emily Short and modified slightly. 
 See https://i7-examples.github.io/Bronze/source_43.html for the original code.]

Table of User Styles (continued)
window	style name	background color
all-grid-windows	special-style-1	"#FFFFFF" ["#FF0000" - Red]

Table of Fancy Status
left	central	right
" [if in darkness]Darkness[otherwise][location][end if]"	""	"[top rose]"
" [current-year]"	""	"[middle rose]"
" "	""	"[bottom rose]"

When play begins: now right alignment depth is 25;

To say red reverse:
	say special-style-1;

To say default letters:
	say roman type;

Definition: a room is discernible:
	if it is the River Bank and the Balcony is unvisited and the River Bank is unvisited, no;
	if it is the River Bank and the Balcony is unvisited and the River Bank is visited, yes;
	if it is the River Bank and the Balcony is visited and the River Bank is unvisited, yes;
	if it is the River Bank and the Balcony is visited and the River Bank is visited, yes;
	if it is the Top Well and the metal cover is on the circular well, no;
	if it is the Domed Building and the player is in the time machine, no;
	yes.

To say top rose:
	say "Exits    "; [Added]
	let place be the room up from the location;
	if the place is a discernible room, say "[if the place is unvisited][red reverse][end if]U [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room northwest from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]NW [default letters]"; otherwise say "   "; [Added two additional spaces to otherwise say]
	let place be the room north from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]N [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room northeast from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]NE[default letters]"; otherwise say " ".

To say middle rose:
	say "           "; [Added one additional space to say; added nine additional spaces]
	let place be the room west from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]W [default letters]"; otherwise say "  ";
	say " . ";
	let place be the room east from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if] E[default letters]"; otherwise say "  ".

To say bottom rose:
	say "         "; [Added nine additional spaces]
	let place be the room down from the location;
	if the place is a discernible room, say "[if the place is unvisited][red reverse][end if]D [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room southwest from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]SW [default letters]"; otherwise say "   "; [Added two additional spaces to otherwise say]
	let place be the room south from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]S [default letters]"; otherwise say "  "; [Added one additional space to otherwise say]
	let place be the room southeast from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]SE[default letters]"; otherwise say " ".

Rule for constructing the status line:
	fill status bar with Table of Fancy Status;
	say default letters;
	rule succeeds. 

Section - Compass Test Room

[This code is used just to test the positioning and appearance of the compass rose.]

Main Room is a room.

To The North is a room. To The North is north of the Main Room.
To The South is a room. To The South is south of the Main Room.
To The West is a room. To The West is west of the Main Room.
To The East is a room. To The East is east of the Main Room.

To The Northeast is a room. To The Northeast is northeast of the Main Room.
To The Northwest is a room. To The Northwest is northwest of the Main Room.
To The Southeast is a room. To The Southeast is southeast of the Main Room.
To The Southwest is a room. To The Southwest is southwest of the Main Room.

Up Above is a room. Up Above is up from the Main Room.
Down Below is a room. Down Below is down from the Main Room.


Part - Before Rules

Chapter - Listening

Before listening:
	if the player is in Woking Street:
		say "You hear the normal sounds of the city at this time of night along with the occassional gust of wind through the streets.";
		stop the action;
	else if the player is in the Clearing:
		say "You hear the wind through the trees as well as the sound of runnnig water to the southeast.";
		stop the action;
	else if the player is in the Top Well:
		say "You hear the faint sounds of machinery coming up from below.";
		stop the action;
	else if the player is in the Bottom Well:
		say "The soundof machinery is louder now and seems to come from the north.";
		stop the action;
	else if the player is in the Dining Room:
		say "[if the location of Watchett is the Kitchen] You hear faint sounds of movement through the kitchen door to the north.[otherwise]You hear nothing except the faint sounds of the fire to the south.[end if]";
		stop the action;
	else if the player is in the Living Quarters or the player is in the Catacombs:
		say "[morlock-sounds]";
		stop the action;
	otherwise:
		continue the action.

Part - Instead-Of Rules

Chapter - Waiting

Instead of waiting: say 
	"[if location is Woking Street]You shiver in the cold wind, drawing your light jacket closer around you[first time]. You really should get inside since you're not dressed appropriately for this winter weather[only].[otherwise]Time passes."

Chapter - Up

Instead of jumping in Woking Street: try going up.
Instead of going up in Woking Street: say "You jump up and down a few times, trying to warm yourself up, but it's a lost cause. Better get inside."

Instead of climbing the staircase in the Entryway: try going up.
Instead of taking the staircase in the Entryway: try going up.

Instead of going up in the Entryway: say "You wander around upstairs for a few minutes but find nothing of interest and return downstairs."

Chapter - Using

Instead of using things: say "You'll have to be more specific."

Chapter - Attack

To say no-violence: say "Violence [aren't] the answer here and quite out of character, given your years of jurisprudence and respect for the law."

Instead of attacking someone: say "[no-violence]".
Instead of attacking someone with something: say "[no-violence]".

Instead of attacking Gernsback: say "[no-violence]".

Instead of attacking something with the poker:
	if noun is orrery:
		say "Attempting to break such a marvelous device is criminal and against everything you stand for.";
	otherwise if noun is fireplace:
		say "Ludicrous. Why not keep your actions to the realm of the possible.";
	otherwise if noun is fire:
		say "You stir the coals a bit, spreading them evenly around the grate, causing a few sparks to rise up through the flue.";
	otherwise if the noun is statue:
		say "[statue-far-away]";
	otherwise:
		say "You can't attack [the noun] with the poker in this game[first time]. Violence of this sort isn't relevent to your investigation[only].";

To say attack-morlocks-poker:
	say "You attempt to take the battle to these loathsome creatures but they dodge easily around your ineffectual swings with the poker."

To say attack-morlocks-barehanded:
	say "Your barehand attempts to grapple with these subterraneon dwellers is a failure. They easily avoid your assaults. If only you had some sort of weapon."

To say attempt-attack-morlocks-before-attacked:
	say "Why would you provoke the Morlocks when they haven't shown the slightest agression against you. Hardly civilized behavior."

[You should be able to attack morlocks only if they have attacked you first]
Instead of attacking morlock-placeholder with poker:
	if morlocks-attacked is true:
		if the player has the poker:
			say "[attack-morlocks-poker]";
		otherwise: [This will never be reached since if you don't have a weapon you are captured immediately]
			say "[attack-morlocks-barehanded]";
	otherwise:
		say "[attempt-attack-morlocks-before-attacked]";

Part - Every Turn Rules

Chapter - User Interface

Every turn:
	refresh the title-characters window;
	refresh the list-characters window;
	refresh the title-talking-to window;
	refresh the talking-to-character window;
	refresh the title-topics window;
	refresh the character-topics window;
	refresh the list-inventory window.

Chapter - Woking Street

Every turn:
	if found-key is true:
		if Humboldt is in Woking Street:
			try silently going north.

Chapter - Parlor

Every turn:
	if a breaker (called fuse) is in the right panel:
		if the fuse is working:
			now the orrery is switched on;
		otherwise:
			now the orrery is switched off.

Chapter - Workshop

Every turn:
	if the player is in the Workshop and travel-to-802701 is true: 
		now humboldt-should-return is true.

Chapter - Underground Rooms	

Every turn:
	follow the morlock attack rule.

morlocks-attacked is a truth state that varies.
morlocks-attacked is false.

morlocks-capture-you is a truth state that varies.
morlocks-capture-you is false.

turns-since-attack is a number that varies.
turns-since-attack is 0.

[The Morlocks will get bolder after each attack so the time interval between attacks will be less.]
boldness-morlocks is a number that varies.
boldness-morlocks is 0.

max-morlock-defends is a number that varies.
max-morlock-defends is 3

This is the morlock defend rule:
	if the player is in the Year-802701-Underground:
		if the player is in Shaft 3:
			if the player-has-light is false:
				if the player has the poker:
					now fought-off-morlocks is fought-off-morlocks + 1;
					say "[morlocks-prevent-entry]";
					if fought-off-morlocks is max-morlock-defends:
						now fought-off-morlocks is 0;
						now morlocks-capture-you is true;
				otherwise:
					say "[captured-by-morlocks]";
					now morlocks-capture-you is true;
		if morlocks-capture-you is true:
			center "Press SPACE to continue.";
			wait for the SPACE key;
			clear only the main screen;
			say "[time-passes]";
			now the player is in the Holding Cell;
					
This is the morlock attack rule:
	if the player is in the Year-802701-Underground:
		if the player is in Living Quarters or the player is in Catacombs:
			if player-has-light is false:
				if morlocks-attacked is false:
					say "[morlocks-attack]";
					now morlocks-attacked is true;
					now boldness-morlocks is boldness-morlocks + 1; [DO I NEED THIS?]
					follow the morlock fight rule;
				otherwise:
					now turns-since-attack is turns-since-attack + 1;
					if turns-since-attack is 2: [(3 - boldness-morlocks):] [SHOULD I MAKE THIS 1?]
						now turns-since-attack is 0;
						now morlocks-attacked is false;
			otherwise:
				continue the action.

[You will get weaker as you fight off the morlocks and eventually captured despite having poker.]
fought-off-morlocks is a number that varies.
fought-off-morlocks is 0.

This is the morlock fight rule:
	if the player has the poker:
		if fought-off-morlocks is 0:
			say "[attack-morlocks-1]";
			now fought-off-morlocks is fought-off-morlocks + 1;
		otherwise if fought-off-morlocks is 1:
			say "[attack-morlocks-2]";
			now fought-off-morlocks is fought-off-morlocks + 1;
		otherwise if fought-off-morlocks is 2:
			say "[attack-morlocks-3]";
			now fought-off-morlocks is 0; 
			now morlocks-capture-you is true;
	otherwise:
		say "[captured-by-morlocks]";
		now morlocks-capture-you is true;
	if morlocks-capture-you is true:
		center "Press SPACE to continue.";
		wait for the SPACE key;
		clear only the main screen;
		say "[time-passes]";
		now the player is in the Holding Cell;

[Morlock Underground Substitution Text]

To say morlocks-prevent-entry:
	if fought-off-morlocks is:
		-- 1: 
			say "As you enter the darkened tunnel you're assaulted out of the darkness by shadowy figures. Swinging the poker at the Morlocks you manage to beat your attackers back and retreat to the north, tired but victorious.";
		-- 2: 
			say "Again you are attacked by the Morlocks. In the darkness, you manage to drive off a a few of them with your poker but more take their place and drive you back to the north, almost spent.";
		-- 3: 
			say "This time the Morlocks are ready for you and, despite your weapon, they surround you in the darkness and knock you to the ground, unconscious.";

To say morlocks-attack:
	say "Before you can take another step you're beset from all sides by shadowy brutes from the surrounding darkness—Morlocks![no line break]"

To say morlock-sounds:
	say "In the surrounding darkness you can hear scuttlings and mutterings of the Morlocks.";

To say attack-morlocks-1:
	say "Swinging the poker wildly around, you manage to drive the loathsome creatures away. But it appears only temporary as they gather just out of reach, muttering and gobbling to themselves in their strange tongue, obviously regrouping for another attack."
	
To say attack-morlocks-2:
	say "Slightly weaker now, you still manage to drive the Morlocks away temporarily. They retreat, wary but ready to attack again."
	
To say attack-morlocks-3:
	say "You attempt to drive the Morlocks off again but in your tired condition you are overpowered by their boldness and their sheer numbers and knocked unconscious to the ground."
		
To say captured-by-morlocks:
	if the player is in Shaft 3:
		say "As you enter the darkened tunnel you're assaulted out of the darkness by shadowy figures. Barehanded, you attempt to fight back, but are knocked unconscious to the ground.";
	otherwise if the player is in Living Quarters or the player is in Catacombs:
		say "You strike back at them but you but are soon overpowered by sheer numbers and knocked to the ground, unconscious."

To say time-passes:
	say "[line break]An unknown amount of time passes. You regain consciousness, unaware of where you are.[paragraph break]"

Chapter - Debug

Every turn (this is the Update Debug rule):
	if debug-mode is true: 
		focus debug-info window;
		clear debug-info window;
		if player is in Year-802701-Underground:
			say "location visibility: [visibility of location][line break]";
			say "player-has-light: [player-has-light][line break]";
			say "morlocks-attacked: [morlocks-attacked][line break]";
			say "turns-since-attack: [turns-since-attack][line break]";
			say "boldness-morlocks: [boldness-morlocks][line break]";
			say "fought-off-morlocks: [fought-off-morlocks][line break]";
			say "max-morlock-defends: [max-morlock-defends][line break]";
			say "morlocks-capture-you: [morlocks-capture-you]";
		otherwise if player is in Year-802701-Outside:
			say "ask-about-weena: [ask-about-weena][line break]";
			say "show-eloi-watch: [show-eloi-watch]";
		otherwise if Ending Scene is happening:
			say "humbold-endgame-begins: [humboldt-endgame-begins][line break]";
			say "weena-appears: [weena-appears][line break]";
			say "time-travel-seen: [time-travel-seen][line break]";
			say "endgame-success: [endgame-success][line break]";
			say "endgame-failure: [endgame-failure]";
		focus main window.
		

Part - Conversation

Understand "talk to [someone]" as saying hello to.

Understand "talk to [someone] about [any known thing]" as quizzing it about.
Understand "speak to [someone] about [any known thing]" as quizzing it about.

Part - Take All

[https://bit.ly/3xV8H3P]

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.

[This changes the default message “There are none at all available!”]
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say “Grabbing for everything at once isn't going to help your investigation one bit. A methodical, measured approach is called for.”
			
Part - Furniture Class

Furniture is a kind of supporter.
Furniture is either unmoveable or moveable. Furniture is usually unmoveable.
Furniture is scenery.

Instead of entering furniture: say "Such an action might make me question your acumen. You don't need to do that."

To say cannot-move:
	say "You would need one or two stronger men to help you move that."

To say should-not-move:
	say "Rearranging the furniture at this time won't accomplish anything constructive."

Before taking furniture:
	say "That's not portable.";
	stop the action.

[The portmanteau is furniture.
The portmanteau is in the Library.
The description of the portmanteau is "Created specifically to try and debug the new Furniture class."
The portmanteau is moveable.]

Part - Inventory

[This code came from the "Oyster Wide Shut" example.] 
[Note: The "Equipment List" example lists additional ways to modify the standard format of an inventory list.]

[Also see https://intfiction.org/t/overriding-the-display-of-a-containers-status/3644]

The print standard inventory rule is not listed in any rulebook.

Carry out taking inventory (this is the new print inventory rule):
	say "You are carrying: [line break]";
	list the contents of the player, with newlines, indented, including contents, with extra indentation.

After printing the name of something (called target) while taking inventory:
	follow the property-aggregation rules for the target.

The property-aggregation rules are an object-based rulebook.
The property-aggregation rulebook has a list of text called the tagline.
[
A first property-aggregation rule for an openable open thing (this is the mention open openables rule): 
    add "open" to the tagline.

A first property-aggregation rule for an openable closed thing (this is the mention closed openables rule): 
    add "closed" to the tagline.
]
A property-aggregation rule for a closed transparent container which contains nothing (this is the mention empty transparent containers rule):
	add "empty" to the tagline.

A property-aggregation rule for an open container which contains nothing (this is the mention empty open containers rule):
	add "empty" to the tagline.

A property-aggregation rule for a lit thing (this is the mention lit objects rule): 
    add "providing light" to the tagline.

The last property-aggregation rule (this is the print aggregated properties rule): 
	if the number of entries in the tagline is greater than 0: 
		say " ([tagline])"; 
		rule succeeds; 
	rule fails.
	

Part - Tests

[In the game type "> test" to see a list of all the available tests]

[v1.9]

Test go-eloi with "test go-802701 / exit / go east / go east / go south / go north / go west / go west / go southeast."
Test go-abattoir with "test go-underground / take lantern / turn on lantern / go north / go down / go down / go down / go south /go south."

Test escape-morlock with "test go-underground / go north / go down / go down / go down / go south / go south / go south."

Test create-torch with "examine tunic / search pile / examine poker / examine tunic / examine makeshift torch / tie tunic to poker / wrap tunic around poker / examine poker / examine tunic / examine makeshift torch."
Test light-torch with "turn lantern off / open box of matches / take match / light match / light torch with match."
Test light-newspaper with "turn lantern off / open box of matches / take match / light match / light newspaper with match."

Test torch-duration with "test go-abattoir / test create-torch / test light-torch."
Test news-duration with "test go-abattoir / test light-newspaper."

[v2.0 alpha]

Test go-802701 with "test key-1 / test fuse-t / test fuse-o1 / test prep / test 802701."
Test go-underground with "test key-1 / test fuse-t / test fuse-o1 / test prep / test 802701 / test underground."

[Testing for trying to get poker to show up in location when torch burns out]
Test make-torch with "search pile / wrap tunic around poker."
Test ttorch1 with "light torch with matches / wait / wait / wait / wait / wait / wait / wait / wait / wait / wait / wait / showme poker."
Test ttorch2 with "light torch with matches / wait / wait / wait / wait / wait / wait / wait / drop torch / wait / wait / wait / showme poker / look."
Test ttorch3 with "light torch with matches / wait / wait / wait / wait / wait / wait / wait / drop torch / north / wait / wait / south / showme poker / look."

[----------]

Test key-1 with "north / north / west / north / north / north / ask watchett about key / south / south / take poker / take newspaper / south / east / south / search area / search area / search area."

Test key-2 with "north / north / west / north / take poker / take newspaper / south / east / south / search area / search area / search area."

Test fuse-t with "north / unlock workshop door with key / north / flip switch / enter time machine / unlock panel with key / take time machine fuse."

Test fuse-o1 with "exit / south / west / north / examine orrery / examine right panel / examine right panel / slide right panel / take orrery fuse."

Test fuse-o2 with "exit / south / west / show time machine fuse to gernsback / take orrery fuse."

Test prep with "south / take box of matches / east / north / enter time machine / put orrery fuse in fuse holder."

Test success-4 with "exit / push lever / say hello to humboldt / tell humboldt about time machine / tell humboldt about time travel / tell humboldt about eloi / tell humboldt about weena / tell humboldt about morlocks."
	
Test success-5 with "push lever / push lever / exit / enter time machine / push lever."
		
Test 802701 with "push lever / exit."
		
Test underground with "remove cover / down / down / north / down / down / down / south / south."
	
Test rescue-1 with "search pile / south / tie tunic to poker / light torch with match / north / north / north / up / up / up / south / up / up."

Test success-1 with "show weena the petal / enter time machine / push lever / exit / show flower to humboldt."
		
Test rescue-2 with "south / light newspaper with match / north / north / north / up / up / up / south / up / up."

Test success-2 with "show weena the petal / enter time machine / push lever / exit / show flower to humboldt."
	
Test rescue-3 with "south / light match / north / north / south / light match / north / up / light match / north / up / down / light match / up / up / up / south / up / up."

Test success-3 with "show weena the petal / enter time machine / push lever / exit / show flower to humboldt."


Part - Release

Release along with cover art ("The Time Machine") and an interpreter. [and a solution. [and the source text.]]

Volume - Settings

Book - 1895

Part - Woking Street

Woking Street is a room. 
The description of Woking Street is "You are standing halfway down the street outside of Wells['] house. A heavy snowfall wafts down, undisturbed except for the [area] directly in front of you[if ambulance is in Woking Street] where the ambulance is parked.[otherwise] where the scuffle with Wells happened.[end if] The front door is to the north[first time] and the light from behind the curtains looks invitingly warm[only].[first time] To the west, the flickering [gaslights] in the square seem much further away than fifty paces. To the east, the street dead-ends into a small cul-de-sac.[only]"

The printed name of Woking Street is "68 Woking Street".

Chapter - Area

To say generic-area-description:
	say "Directly in front of you the falling snow is rapidly covering the signs of the earlier struggle."

To say key-area-description:
	say "Directly in front of you the falling snow is rapidly covering the signs of the earlier struggle, but you can't help but feel that a further search of the area might be warrented."

The area is scenery in Woking Street.
The area is a supporter.
The description of the area is "[if watchett-key is false][generic-area-description][otherwise if player has the key][generic-area-description][otherwise][key-area-description][end if]"

Understand "footsteps" or "carriage tracks" or "area of the street" or "street area" or "scuffle" or "struggle" as area.

The street-search is scenery in Woking Street. [https://bit.ly/3tvvi3z]
Understand "street" as street-search.
The printed name of street-search is "street".

Instead of examining the street-search: say "The falling snow covers the entire street evenly except for the area immediately in front of you." 
Instead of searching the street-search: try searching the area.

[> search area]

area-search is a number that varies.
area-search is 0. [You haven't searched the area yet]

found-key is a truth state that varies.
found-key is false.

To say find-key:
	[say "FIND KEY - watchett-key: [watchett-key], area-search [area-search]".]
	say "[fk-weather] [fk-action] [fk-result]".
	
To say no-find-key:
	[say "NO FIND KEY - watchett-key: [watchett-key], area-search [area-search]".]
	say "Despite a [nfk-weather] [nfk-action] [nfk-result]".
	
To say nfk-weather:
	say "[one of]severe[or]frigid[or]freezing[or]cold[or]bitter[or]bitterly cold[or]frosty[or]icy[or]icey[or]ice-cold[or]numbing[or]wintry[or]wintery[at random] [one of]gust[or]flurry[or]burst[or]blast[purely at random] [one of]of wind[or]of snow[or]of wind and snow[at random]".
	
To say nfk-action:
	say "you [one of]kick the snow around with your feet[or]bend down and search through the snow[or]shovel some snow to one side to expose the street below[or]push the snow in all directions[at random]".
	
To say nfk-result:
	say "without [one of]finding anything.[or]success.[or]any luck.[or]finding anything but the street beneath.[at random]".
	
To say fk-weather:
	say "Despite another [nfk-weather]".
	
To say fk-action:
	say "you make one last attempt".
	
To say fk-result:
	say "and find a small metal key that must have fallen out of Wells['] pocket during his struggle. You pick up the key and put it in your pocket.".

Instead of searching the area:
	if the player does not have metal key:
		now area-search is area-search + 1;
		if watchett-key is false:
			if area-search is 1: 
				if a random chance of 5 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
					now found-key is true;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 2: 
				if a random chance of 15 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
					now found-key is true;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 3: 
				if a random chance of 45 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
					now found-key is true;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 4: 
				say "[find-key]";
				now the player is carrying the metal key;	
				now found-key is true;			
		otherwise:
			if area-search is 1: 
				if a random chance of 75 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
					now found-key is true;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 2: 
				say "[find-key]";
				now the player is carrying the metal key;
				now found-key is true;
			otherwise if area-search is greater than 2: 
				say "[find-key]";
				now the player is carrying the metal key;
				now found-key is true;
	otherwise:
		say "You find nothing further of interest after searching the area again."

Instead of going down in Woking Street: try searching the area.


Chapter - Scenery

[Snow is handled in the Garden]

The gaslights are scenery in Woking Street. 
The description of the gaslights are "The incandescent globes of light hold steady against the early winter darkness and swirling snow.[first time] You recall Wells saying there's talk of replacing them with something he calls 'electrical fixtures.' You hope this is a product of his overactive imagination, since you would miss the soft green glow of gassified coal that lights your nightime steps.[only]".
Understand "gas" or "gas lights" or "flickering" or "flickering lights" or "flickering gas lights" as gaslights.

The cul-de-sac is scenery in Woking Street.
The description of the cul-de-sac is "A small roundabout with a fountain in the center terminates the street to the east."
Understand "close" or "dead end" or "impasse" or "blind alley" or "dead-end" or "dead-end street" or "roundabout" or "cul de sac" or "end of street" as cul-de-sac. 
	
The fountain is scenery in Woking Street.
The description of the fountain is "The fountain squats forlorn in the center of the roundabout, covered in snow."
Understand "water" or "sputtering" or "sputtering fountain" or "small fountain" or "small" as fountain.
	
The square is scenery in Woking Street.
The description of square is "During the day the road perpendicular to Woking Street and the park beyond is filled with carriages and pedestrians, even during this season. But now, at night and in this weather, both are empty except for the occasional carriage or pedestrian hurrying to a warmer location."
Understand "park" or "open space" or "municipal park" or "intersection" or "urban park" or "crossroads" or "main street" or "common" or "greenery" or "green park" as the square.

The houses are scenery in Woking Street.
The printed name of houses are "houses in the cul-de-sac".
The description of houses are "[first time]Twenty or thirty terraced houses ring the cul-de-sac, uniform in height and facade, each sharing walls with their neighbors except for the end-terrace units to the west. [paragraph break][only]Nothing much has changed since you last glanced around. [first time]Most of the houses are dark at this time of night, though scattered lights show in the odd window, probably due to the recent commotion. Maybe one or two of the lights have gone off as those residents have gone back to sleep.[only]"
	
Understand "other houses" or "dark houses" or "buildings" or "other buildings" or "windows" or "lit windows" [or "residences" or "other residences"] as houses.
		
The wells-house is scenery in Woking Street.
The printed name of wells-house is "Wells['] house".
The description of wells-house is "This is the house where your friend Wells has lived for many years, and which you have visited many times as friend and solicitor."
Understand "building" or "house" or "68 Woking Street" or "68" as wells-house.
	
Chapter - Wandering

Going west in Woking Street is wandering.
Going northwest in Woking Street is wandering.
Going northeast in Woking Street is wandering.
Going east in Woking Street is wandering.
Going southeast in Woking Street is wandering.
Going south in Woking Street is wandering.
Going southwest in Woking Street is wandering.

To say specific-destination:
	say "[if the noun is west]the intersection[else if the noun is east][one of]the fountain[or]the cul-de-sac[at random][otherwise]one of the other houses[end if]".

To say weather-adjectives:
	say "[one of]frigid[or]cold[or]bitter[or]frosty[or]ice-cold[or]numbing[or]wintery[or]icy[at random] [one of]gust[or]flurry[or]burst[or]blast[at random][one of] of wind[or] of snow[at random]".

Instead of wandering:
	say "You start walking away from the front door towards [specific-destination] but a sudden [weather-adjectives] makes you reconsider.[first time] You really should get inside since you're not dressed appropriately for this winter weather.[only]".


Chapter - Humbolt's Exit

Instead of entering the front door in Woking Street: try going north.
Instead of going inside in Woking Street: try going north.
Instead of entering wells-house in Woking Street: try going north.

To say humboldt-exit:
	say "[if found-key is true]Humboldt sees the key and says 'Marvelous! W[no line break][otherwise]Before you can leave, Humboldt stops you. 'W[no line break][end if]hile I'm gone see if you can find the rest of this.' He hands you a single petal. 'If we can find the rest of this flower we can convince Wells that all this time travel nonsense is just a figment of his imagination. Check out that workhop of his.'

[if player is not carrying the pocket watch]Humboldt bends down and picks up the pocket watch and hands it to you. 'Better hold on to this until I get back.' He[otherwise]Humboldt[end if] climbs into the ambulance and swings the rear doors shut. The driver cracks the reins and the ambulance starts down the street, turns the corner, and disappears."

Instead of going north in Woking Street: 
	if Humboldt is not nowhere:
		say "[humboldt-exit]";
		reset the interlocutor;
		now Humboldt is nowhere; 
		now the ambulance is nowhere;
		now the orderlies are nowhere;
		now the driver is nowhere;
		now the player is carrying the petal;
		now the player is carrying the pocket watch;
	otherwise:
		continue the action.


Chapter - Front Door

The front door is north of Woking Street and south of the Entryway. 
The front door is a door. It is openable. 
The front door is scenery.
Understand "wooden door" or "heavy wooden door" as front door.

The description of the front door is "[if location is Woking Street]The door [first time]to 68 Woking Street [only]is indistinguishable from every other door that lines the street.[otherwise]You see nothing special about the heavy wooden door leading to the street outside."
	
Instead of attacking the front door with the poker: say "The front door isn't locked so I don't see why you would think you had to pry it open.";
Instead of attacking the front door with something: say "Violence isn't the answer here."
	
Chapter - Ambulance
	
The ambulance is a opaque container in Woking Street.
The description of the ambulance is "The horse-drawn ambulance is a private carriage adapted for medical use.[first time] The driver waits impatiently in his enclosed glass cab at the front. Large rear doors at the back allow entry and exit to and from the vehicle.[only]".
The ambulance is fixed in place.
The ambulance is undescribed.
Understand "ambulence" or "cab" as ambulance.

The rear doors are scenery in Woking Street.
The description of rear doors is "The ambulance doors are open."
Understand "ambulence doors" or "ambulance doors" or "doors" as rear doors.

The horses are scenery in Woking Street.
The description of horses is "The two horses stand silently in their harnesses between the shafts of the ambulance, waiting for the driver's commands."
Understand "horse" as horses.

Instead of taking the ambulance: say "What delusions of grandeur. Perhaps they should break out a straightjacket for you."

Instead of searching the ambulance: try entering the ambulance.
Instead of entering the ambulance: say "With a steady hand Dr. Humboldt stops you. 'Better stay here.'"

Chapter - The Workshop Key

The metal key is a thing.
The metal key is in Woking Street.
The metal key is undescribed.
The description of metal key is "A small metal key to Wells['] workshop.[first time] You recall he always carried it around on his person, never letting it out of his sight.[only]".

Understand "glint" or "key" or "metallic" or "metallic object" as metal key.
The indefinite article of the metal key is "the".

The metal key unlocks the workshop-door.
The metal key unlocks the hinged panel.
		
Chapter - The Petal
	
The petal is a thing.
The petal is nowhere.

The description of the petal is "Even with its faded luminous colors, it doesn't resemble any flower petal you have ever seen. Wells said the flower was given to him by the girl he called Weena in 802,701 A.D.[first time] Perhaps the rest of the flower is somewhere in the house.[only]".

Instead of smelling the petal:
	say "It has no smell."
		
Chapter - Pocket Watch

The pocket watch is a thing.
The pocket watch is in Woking Street.
Understand "timepiece" or "chronometer" or "hands" or "stem" as pocket watch.

The description of the pocket watch is "A simple pocket watch, given to Wells by his father.[first time] Thinking back, you recall Wells telling the group that Weena was particularly enchanted by its moving hands and winding mechanism.[only]".
	
Instead of using the pocket watch: say "It's getting late. Doctor Humboldt will be back soon."
	
Winding is an action applying to one touchable thing.
Understand "wind [something]" as winding.
Instead of winding the watch: say "You turn the stem back and forth a few seconds, killing time and gathering your thoughts."


Part - Entryway

The Entryway is a room. 
The description of the Entryway is "From here you can reach all other parts of the house. To your right a staircase leads up to the second floor landing. To the west is the library. To the north is the [if workshop-door is open]open[otherwise]closed[end if] door of Wells[apostrophe] workshop. The front door is to the south."

The staircase is fixed in place in the Entryway.
The staircase is scenery. 
The description of the staircase is "Stairs going up to the second floor.[first time] You haven't ever been up there.[only]"

Understand "stairs" or "steps" as staircase.

After deciding the scope of the player when the location is the Entryway:
	place the Library in scope;
	place the library-books in scope.

Instead of examining west: try examining the Library.

Before examining the Library when the player is in the Entryway:
	say "To the west you can see shelves of books and someone standing near the window.";
	stop the action.

Instead of examining the library-books: try taking the library-books.

Before taking library-books in the Entryway: 
	say "You'd have to be in the library to do anything with the books.";
	stop the action.

Chapter - Workshop Door
	
The workshop-door is north of the Entryway and south of the Workshop. 
The workshop-door is a door. 
The workshop-door is lockable. The workshop-door is locked.
The workshop-door is scenery. 
Understand "workshop door" or "door" or "door of workshop" as workshop-door. 
The printed name of workshop-door is "workshop door".

Instead of examining the workshop-door:
	say "The [if workshop-door is open]open[otherwise]closed[end if] door leading to Wells[apostrophe] workshop."

[ Recipe §7.5. Combat and Death, Example Lanista 2]
Understand the commands "attack" and "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreak" as something new.
Attacking it with is an action applying to one visible thing and one carried thing. 
Understand "attack [something] with [something preferably held]" as attacking it with.
Understand the commands "punch" and "destroy" and "kill" and "murder" and "hit" and "thump" and "break" and "smash" and "torture" and "wreak" as "attack".

Hitting it with is an action applying to one visible thing and one carried thing. 
Understand "hit [something] with [something preferably held]" as hitting it with.

Prying it with is an action applying to one visible thing and one carried thing.
Understand "pry [something] with [something preferably held]" as prying it with.
Instead of prying the workshop-door with poker: try attacking the workshop-door with poker.

Instead of attacking the workshop-door with the poker: say "There's got to be a better way to get into the workshop.[no line break][first time] Even if you could somehow open the this way, you would damage the woodwork beyond repair.[only]".
Instead of attacking the workshop-door with something: say "Violence isn't the answer here."

Part - Library

The Library is a room. 
The Library is west of the Entryway. 
The description of the Library is "A desk and a leather chair positioned near the drawn curtains are the only things in the room besides hundreds of books that fill the floor-to-ceiling shelves on three of the walls. The room continues to the north and the entryway is back east.[if the location of Gernsback is the Library][paragraph break]Gernsback is sitting in the chair, reading his book.[end if] "

Chapter - Printing Library Description

[https://bit.ly/3NyqyEz - Suppressing the printed name of a room]
library-print-description is a truth state that varies.
library-print-description is true.
The room description body text rule does nothing when library-print-description is false.

Check going to the Library:
	if the library has not been visited: 
		[say "FIRST TIME!";]
		now library-print-description is false;
	otherwise: 
		[say "BEEN HERE BEFORE."]
		now library-print-description is true.

Check going to the Parlor: now library-print-description is true.
Check going to the Entryway: now library-print-description is true.

Chapter - Shelves 

The shelves are a thing.
The shelves are scenery in the Library.
The shelves are a supporter.
The description of shelves is "The shelves contain books of all sizes, types, and subjects." 
Understand "shelf" as shelves.

Instead of searching the shelves: try reading the shelves.

Chapter - Library Furniture

Section - Library Desk

The desk is a thing.
The desk is in the Library.
The desk is furniture.
The desk is moveable.
The description of the desk is "A small standing desk with a few handwritten papers on it."

Instead of searching the desk: 
	if the desk supports the box of matches:
		say "Shuffling through the papers on the desk you find a box of matches.";
	otherwise:
		say "You shuffle through the papers on the desk but find nothing of interest."

Instead of pulling the desk: try switching on the desk.
Before switching on the desk:
	if the desk is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

Instead of opening the desk, say "The desk doesn't have any drawers that you can open, only a writing surface."

Section - Desk Papers

The desk-papers are a thing.
The desk-papers are on the desk.
The desk-papers are scenery.
The printed name of desk-papers is "papers".

The description of desk-papers are "At first glance, the writing appears to be some of Wells[apostrophe] scientific correspondence.".

Understand "paper" or "papers" or "letter" as desk-papers.

Instead of taking desk-papers:
	say "If the papers were relevant to your task at hand you might, but since you can't come up a valid reason you leave them where they are."

Section - Library Chair

The library chair is a thing.
The library chair is in the Library.
The library chair is furniture.
The library chair is moveable.
The library chair is enterable.
The description of the library chair is "A small chair covered in worn leather[first time], positioned near the window[only]."
Understand "leather" as library chair.

Instead of pulling the library chair: try switching on the library chair.
Before switching on the library chair:
	if the library chair is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

Instead of entering the library chair:
	if Gernsback is in the Library:
		say "Impossible while Gernsback is still sitting in it.";
	otherwise:
		say "Well, maybe just for a minute while you gather your thoughts.";
		move the player to the library chair, without printing a room description.

Section - Library Curtains

The curtains are a thing.
The curtains are scenery in the Library.
The curtains are a container.
The description of the curtains is "Pulled shut, the heavy floor-to-ceiling fabric wards the room from the cold weather outside."
Understand "curtain" as curtains.

curtains-opened-once is a truth state that varies.
curtains-opened-once is false

Instead of pushing the curtains: try opening the curtains.
Instead of opening the curtains:
	say "Pulling the curtains aside, you glance[if curtains-opened-once is true] one more time[end if] at the snow-covered street outside before letting them fall back into place[first time]. The only change is that the falling snow that is rapidly covering the disturbed area out front where the ambulance was parked earlier[only].";
	now curtains-opened-once is true.

Instead of closing the curtains, say "They're already closed."

Instead of searching the curtains: say "You examine the folds of the fabric but find nothing."

[Writing §4.3. Degrees of certainty, Example 44 - different default messages for something nondescript]
[Writing §7.1. Actions]

Section - Library Window

The library window is a thing.
The library window is in the Library.
The library window is scenery.
The description of the library window is "A small paned window looking out onto the street."
The printed name of library window is "library window".

Instead of searching the library window, try opening the curtains.
Instead of opening the library window, say "That wouldn't be prudent, given the weather outside."
Instead of closing the library window, say "It's already closed."


Part - Parlor

The Parlor is a room. 
The Parlor is north of the Library.

The description of the Parlor is "A large fireplace is set into the west wall. On the fireplace mantle is an orrery[if poker is in Parlor], and leaning against the fireplace is a poker.[otherwise].[end if][if the newspaper is on the left armchair] A newspaper rests on the left armchair.[otherwise if the newspaper is on the right armchair] A newspaper rests on the right armchair.[otherwise] Two large armchairs are positioned in front of the fireplace.[end if] A set of glass doors to the east leads outside and the room continues to the north."

Chapter - Armchairs

The class-armchairs is a thing.
The class-armchairs is in the Parlor.
The class-armchairs is furniture.
The class-armchairs is moveable.
The description of class-armchairs is "Covered in worn leather and larger than their library counterpart, they are positioned directly in front of the fireplace."
The printed name of class-armchairs is "armchairs".
Understand "armchairs" as class-armchairs.

Instead of pulling the class-armchairs: try switching on the class-armchairs.
Before switching on the class-armchairs:
	if the class-armchairs is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

To say armchair-description:
	say "It looks extremely inviting and comfortable given the cold weather outside and its position in front of the fire. [first time]But you have no time to rest, you have a key to find.[no line break][only]"

The right armchair is a thing.
The right armchair is in the Parlor.
The right armchair is furniture.
The right armchair is moveable.
The right armchair is enterable.
The description of the right armchair is "[armchair-description]".
Understand "chair" as right armchair.

Instead of pulling the right armchair: try switching on the right armchair.
Before switching on the right armchair:
	if the right armchair is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

The left armchair is a thing.
The left armchair is in the Parlor.
The left armchair is furniture.
The left armchair is moveable.
The left armchair is enterable.
The description of the left armchair is "[armchair-description]".
Understand "chair" as left armchair.

Instead of pulling the left armchair: try switching on the left armchair.
Before switching on the left armchair:
	if the left armchair is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

Section - Sitting In Armchairs

Does the player mean entering the left armchair when the player is in the parlor: it is very likely.
Does the player mean examining the left armchair when the player is in the parlor: it is very likely.

To say armchair-sit:
	say "[first time]Well, maybe just for a minute while you gather your thoughts. [only]You sit in the [noun]."

To say armchair-move:
	say "You get up and move to the [noun]."

Instead of entering the right armchair:
	if the player is on the left armchair:
		say "[armchair-move]";
	otherwise:
		say "[armchair-sit]";
	move the player to the right armchair, without printing a room description;

Instead of entering the left armchair:
	if the player is on the right armchair:
		say "[armchair-move]";
	otherwise:
		say "[armchair-sit]";
	move the player to the left armchair, without printing a room description;
	

Chapter - Garden Door

The Garden Door is east of the Parlor and west of the Garden. 
The Garden Door is a door. 
The Garden Door is openable and lockable.
The Garden Door is scenery.
The printed name of Garden Door is "garden door".
The description of Garden Door is "[if location is Parlor]A set of glass doors leading outside.[otherwise]A pair of glass doors at the top of some stone steps leading inside."

Understand "glass" or "glass door" or "glass doors" as Garden Door.

Instead of searching the Garden Door: say "[if the location is the Parlor]Through the glass doors you can see a set of steps leading down into the garden.[otherwise]Through the glass doors you can see the parlor and fire inside.[end if]"

Chapter - Fireplace
	
The fireplace is a thing.
The fireplace is scenery in the Parlor.
The description of the fireplace is "A coal fire is burning in the grate[first time], providing light and heat[only]."

Instead of using the fireplace, say "That's not something you can use but just enjoy."

The parts-of-fireplace are scenery in the Parlor.
Understand "firebox" or "hearth" or "mantle" or "damper" or "flue" or "chimney" or "surround" or "grate" or "brick" as parts-of-fireplace.
The printed name is "that part of the fireplace".

Instead of using parts-of-fireplace: say "That's not something you can use.".

Instead of examining parts-of-fireplace: say "You see nothing special about [parts-of-fireplace]."
Instead of touching parts-of-fireplace: say "Not very likely."


Chapter - Fire

The fire is a thing.
The fire is in the parlor. 
The fire is undescribed.
The description of the fire is "The flames reflect off of the back of the fireplace and into the room, warming it.[first time] As the coals burn to embers the ashes fall through the grate onto the brick below.[only]"

Instead of touching fire: try touching parts-of-fire.
Instead of tasting fire: try tasting parts-of-fire.
Instead of searching fire: say "You stare for a moment at the flickering flames."
Instead of using the fire: try using parts-of-fire.

The parts-of-fire are scenery in the Parlor.
Understand "coal" or "coals" or "flame" or "flames" or "ash" or "ashes" or "ember" or "embers" as parts-of-fire.
The printed name of parts-of-fire is "fire".

Instead of examining parts-of-fire: try examining the fire.
Instead of touching the parts-of-fire: say "You briefly warm your hands in front of the fireplace."
Instead of tasting the parts-of-fire: say "The warmth on your face is quite pleasant after the cold wind outside."

Using is an action applying to one touchable thing. [see Writing 17.1]
	Understand "use [something]" as using.	

Understand the command "tend" as something new. [> tend the fire]
Understand "tend [something]" as using.

Understand the command "stir" as something new.
Understand "stir [something]" as pushing.

Instead of using parts-of-fire:
	if the player has the poker:
		say "You poke around a bit at the fire without effect.";
	otherwise:
		say "You will need something to do that with since your bare hands won't suffice.".

To say bare-hands: say "With your bare hands? You'd have to be as crazy as Humboldt thinks Wells to even consider that.".

Instead of taking parts-of-fire: try pushing parts-of-fire.
Instead of pushing the parts-of-fire:
	if the player has the poker:
		say "You poke around a bit at the fire without effect.";
	otherwise:
		say "[bare-hands]".


Chapter - Poker

The poker is a thing. [https://bit.ly/3sczKUx]
The poker is in the Parlor.
The poker is undescribed.
Understand "fire iron" or "fire hook" as poker.
The description of the poker is "[if the tunic is not part of the poker]About three feet long, pointed and hooked at one end, this weighted implement is used to stir up the coal embers to achieve even burning.[otherwise]With the Eloi tunic wrapped around one end you've turned this weapon into a makeshift torch.[end if]"

Instead of using the poker in the Parlor: [> use poker]
	say "[if the player is not carrying the poker]Taking the poker, y[otherwise]Y[end if]ou stir the coals a bit, spreading them evenly around the grate, causing a few sparks to rise up through the flue.";
	now the player is carrying the poker.

Instead of dropping the poker:
	if the location of the player is the Parlor:
		say "You lean the poker back against the fireplace where you found it.";
		now the poker is in the Parlor;
		now the poker is undescribed; [undescribed property automatically removed from anything carried by player - Writing §3.24]
	otherwise:
		continue the action.

Section - Poking

Poking is an action applying to one touchable thing and one carried thing.

Understand "poke [someone] with [something]" as poking.

To say no-poke-person: say "I don't see the logic of trying to assault [noun] with the [second noun], no matter how slightly." 

Instead of poking Watchett: say "[no-poke-person]".
Instead of poking Humboldt: say "[no-poke-person]".
Instead of poking Gernsback: say "[no-poke-person]".


Chapter - Breaker 

A breaker is a kind of thing.
The breaker is either working or not working. A breaker is usually working.


Chapter - Orrery

The orrery is a device. The orrery is switched on.
The orrery is scenery on the fireplace.

The description of the orrery is "A mechanical model of our solar system contained in a rectangular wooden box divided into three panels. The left and right panels of the tryptich are illustrated and half the width of the central panel.[if the right panel is open] The right panel has been slid up to expose the orrery's.[end if]"

Understand "planetarium" or "device" or "box" or "panels" or "triptych" as orrery.

[Suppresses "The orrery is currently switched on/off" message? See https://bit.ly/3ovZgnb]
The examine devices rule does nothing when examining the orrery.

Section - Orrery Panels

The left panel is a thing.
The description of the left panel is "The left panel is a stylized bas-relief illustration of a shadowy, ape-like figure crouched in front of what appears to be a cavernous wall of machinery."

Understand "left" or "left side" or "left side of orrery" as left panel.

Instead of opening the left panel: try switching on the left panel.
Instead of switching on the left panel: say "The left panel appears to be firmly fixed in place."

The central panel is a thing.
The description of the central panel is "The top half of the triptych's central panel contains a miniature model of our Sun and planets with the local time, seasonal information, and the phases of the Moon displayed below."

Understand "model" or "spheres" or " jeweled spheres" or "planets" or "phases" or "brass rings" or "rings" or "pointer" or "pointers" or "dial" or "dials" or "solar system" or "center panel" or "local date" or "date" or "local time" or "time" as central panel.

Instead of turning the central panel: try switching on the central panel.
Instead of switching on the central panel: say "All of the items in the central panel appear to be for viewing only."

Instead of opening the central panel: say "The central panel appears to be firmly fixed in place."

The right panel is a thing.
The right panel is a container. The right panel is closed.
The right panel is opaque.
The description of the right panel is "The right panel is a stylized bas-relief illustration of a slender, androgynous figure stretching upwards to grab what appears to be an apple from a canopy of foliage overhead[if the right panel is open] and has been slide up halfway to expose the inner workings of the orrery.[end if]."

Understand "right" or "right side" or "right side of orrery" as right panel.

Instead of examining the right panel for the second time:
	say "On closer examination, it appears that the right panel, unlike its counterparts, can be slid upwards." 

The left panel, central panel, and right panel are part of the orrery.

Section - Orrery Mechanism

The orrery-mechanism is a thing.
The orrery-mechanism is part of the right panel.
The orrery-mechanism is undescribed.
The description of orrery-mechanism is "ORRERY-MECHANISM."
Understand "mechanism" or "gears" or "shafts" or "slotted pin followers" or "pin followers" or "orrery mechanism" as orrery-mechanism.

Instead of examining the orrery-mechanism:
	if the right panel is closed:
		if player-knows-right-panel-slideable is true:
			try opening the right panel;
			try examining the orrery-mechanism;
		otherwise:
			say "You can't see any such thing.";
	otherwise:
		say "A dense and complicated collection of interwoven gears, shafts, and slotted pin followers, much like the inside of a pocket watch, [if the orrery is switched on]calculating[otherwise]used to calculate[end if] planetary positions and celestial information. In the lower right corner is a fuse holder." 

Section - Orrery Fuse Holder

The orrery-fuse-holder is a opaque container.
The orrery-fuse-holder is part of the orrery-mechanism.
The orrery-fuse-holder is undescribed.
The printed name of the orrery-fuse-holder is "orrery fuse holder".
The description of the orrery-fuse-holder is "Two metal clips that the ends of a fuse can snap in to.[no line break][if there is the fuse-orrery in the orrery-fuse-holder] Between the two clips is the orrery fuse.[otherwise if the fuse-time-machine is in the orrery-fuse-holder] Between the two clips is the time machine fuse.[otherwise] The [noun] is empty.[end if]"

Understand "fuse holder" or "orrery fuse holder" or "holder" as orrery-fuse-holder.

The examine containers rule does nothing when examining the orrery-fuse-holder. [Suppresses "In the fuse holder is an orrery fuse." after description printed] 
Understand "orrery fuse holder" or "fuse holder" or "clips" or "clip" as orrery-fuse-holder.

Section - Actions On Orrery

[ > move orrery ]	
Instead of turning the orrery: try switching off the orrery.
Instead of switching off the orrery: say "The orrery appears to be firmly fixed in place."

[ > search orrery ]
Instead of searching the orrery: say "Nothing extraordinary except for the device itself."

[ > use orrery ]
Instead of using the orrery:
	say "That's not something that can be used in the normal sense but just observed."

[ > open orrery ]
Understand "slide [a closed container]" as opening.

Before opening the orrery:
	if the right panel is closed:
		if player-knows-right-panel-slideable is true: 
			try opening the right panel;
		otherwise:
			say "It's not apparent how to do that.[no line break][first time] Maybe one of the panels...[only]";
	otherwise:
		say "You've already slid the right panel up as far as it can go.";
	stop the action.

[ > close orrery ]
Understand "slide [an open container]" as closing.

Before closing the orrery:
	try closing the right panel;
	stop the action.

player-knows-right-panel-slideable is a truth state that varies.
player-knows-right-panel-slideable is false.

[ > open right panel ]
Instead of opening the right panel:
	if the right panel is open:
		say "You've already slid the right panel up as far as it can go.";
	otherwise:
		say "You gently slide the right panel up until it stops halfway, revealing the inner workings of the orrery mechanism.";
		now the time of day is 11:00 PM;
		now player-knows-right-panel-slideable is true;
		now the right panel is open.

[ > close right panel ]
Instead of closing the right panel:
	if the right panel is closed:
		say "You've already slid the right panel closed.";
	otherwise:
		say "You gently slide the right panel down.";
		now the right panel is closed.

[ > pull right panel ]
Instead of pulling the right panel:
	try switching on the right panel;
	stop the action.

[ > push right panel ]
Instead of switching on the right panel:
	if the right panel is closed: 
		try opening the right panel;
	otherwise:
		try closing the right panel.
			
Section - Tests | Orrery | General
		
Test x-orrery with "x orrery / x planetarium / x device / x box."
Test x-triptych with "x triptych."
Test x-model with "x central panel / x model / x spheres / x jeweled spheres / x planets / x brass rings / x rings / x dials / x solar system."
Test x-mechanism with "slide right panel / x orrery-mechanism / x mechanism / x gears / x shafts / x slotted pin followers / x pin followers."
Test x-left-panel with "x left panel / x left / x left side / x left side of orrery."
Test x-right-panel with "x right panel / x right / x right side / x right side of orrery."
Test open-orrery with "open orrery."
Test close-orrery with "close orrery."
Test open-right-panel with "open right panel / open right panel / close right panel."
Test close-right-panel with "open right panel / close right panel / close right panel."
Test slide-right-panel with "slide right panel / slide right panel."
Test pull-right-panel with "pull right panel / pull right panel."
Test push-right-panel with "push right panel / push right panel."
Test switch-off-orrery with "switch off orrery / turn off orrery / purloin fuse / switch off orrery / put fuse in right panel / switch off orrery."

Test all-orrery with "test x-orrery / test x-triptych / test x-model / test x-mechanism / test x-left-panel / test x-right-panel / test open-orrery / test close-orrery / test open-right-panel / test close-right-panel / test slide-right-panel / test pull-right-panel / test push-right-panel / test switch-off-orrery."

Test all-text-orrery with "x orrery / x triptych / x central panel / x left panel / x right panel / open right panel / open right panel / x orrery / close right panel / close right panel / switch off orrery / purloin orrery fuse / switch off orrery."

Test new-config with "x orrery / slide right panel / x mechanism / x fuse / x fuse-holder / x holder."
			
Chapter - Orrery Fuse
			
The fuse-orrery is a breaker. "pristine".
The printed name of the fuse-orrery is "orrery fuse".
The fuse-orrery is working.
The fuse-orrery is undescribed.
The fuse-orrery is in the orrery-fuse-holder.
The description of the fuse-orrery is "Almost as big as your thumb, this cylindrical fuse is made of pasteboard with metal caps on either end.[if the fuse-orrery is in something] Each of the metal caps is held securely in a metal clip that makes contact with the rest of the machine.[end if] The pasteboard of the fuse looks [initial appearance]."
Understand "orrery fuse" or "pristine fuse" or "fuse" as fuse-orrery.

Section - Inserting Fuse In Orrery

Before inserting a breaker (called fuse) into the orrery:
	try inserting the fuse into the right panel;
	stop the action.

Before inserting a breaker (called fuse) into the right panel:
	try inserting the fuse into the orrery-fuse-holder;
	stop the action.

Before inserting something (called item) into the orrery-fuse-holder:
	if the item is not a breaker:
		say "The [second noun] isn't designed to hold a [noun].";
		stop the action;
	otherwise:
		 continue the action.

Before inserting a breaker (called fuse) into the orrery-fuse-holder:
	if the orrery-fuse-holder contains a breaker:
		say "You will need to remove the other fuse from the orrery first.";
		stop the action;
	otherwise:
		continue the action.

After inserting a breaker (called fuse) into the orrery-fuse-holder: 
	if the fuse is working:
		say "The gears inside begin turning slowly when you put that fuse back into the orrery[first time]. The planets on the front of the device begin their slow orbits around the Sun again[only].";
		now the fuse is in the orrery-fuse-holder; 
		now the orrery is switched on;
	otherwise:
		say "Putting that fuse into the orrery doesn't seem to have any effect."	


Section - Removing Fuse From Orrery

Before removing a breaker (called fuse) from the orrery: try taking the fuse.
Before removing a breaker (called fuse) from the right panel: try taking the fuse.

Before removing a breaker (called fuse) from the orrery-fuse-holder:
	try taking the fuse;
	stop the action.

Before taking a breaker (called fuse):
	if the fuse is contained in the orrery-fuse-holder:
		if the fuse is working:
			say "The minute you remove the fuse the gears inside stop moving[first time]. With no calculations being made, the planets on the front halt in their orbits[only]."; 
			now the orrery is switched off;
			now the player is carrying the fuse-orrery;
			stop the action;
		otherwise:
			say "Taken.";
			continue the action.

The standard report taking rule does nothing when taking a breaker.

Section - Tests | Orrery | Fuses
	
test fuse-prep with "north / north / west / north / slide right panel / purloin fuse-time-machine."

test orrery-fuse with "test fuse-prep / x mechanism / x orrery-fuse-holder / take fuse-orrery / x orrery-fuse-holder / x mechanism / put fuse-orrery in orrery-fuse-holder / x orrery-fuse-holder / x mechanism."

test fuse-time-machine with "test fuse-prep / x mechanism / x orrery-fuse-holder / take fuse-orrery / put fuse-time-machine in orrery-fuse-holder / x orrery-fuse-holder / x mechanism."

test two-fuses with "test fuse-prep / put fuse-time-machine in orrery / put fuse-time-machine in right panel / put fuse-time-machine in orrery-fuse-holder / take fuse-orrery / put fuse-time-machine in orrery-fuse-holder / put fuse-orrery in orrery-fuse-holder / take fuse-time-machine / put fuse-orrery in orrery-fuse-holder."



Part - Garden

[The windows are handled in the Workshop]

The Garden is a room.
The Garden is east of the Garden Door.
The description of the Garden is "White and featureless mounds of flora covered in snow surround you on all sides. A gate set into the north wall looks out onto a snow-covered side street. To the south, the dark panes of the workshop windows overlook a bench nestled among some snow-covered rhododendron bushes. The parlor doors are to the west." 

Understand "parlor" or "parlor doors" or "parlor door" as Garden Door.

The garden steps are scenery in the Garden.
The garden steps are a backdrop. They are in the Garden and the Parlor.
The description of garden steps is "[if the location is the Parlor]Three stone steps leading down into the garden.[otherwise]Three stone steps leading up into the parlor.[end if]"

The garden walls are a thing.
The garden walls are scenery in the Garden.
The printed name of garden walls is "walls".

The snow is a thing.
The snow is backdrop. It is in Woking Street and the Garden.
The description of snow is "Microscopic flakes of all shapes and sizes[one of] float [or] whirl [or] drift [at random]down to continue covering everything."
Understand "snowfall" as snow.

Instead of taking snow:
	say "You grab at a flake or two and watch it melt in your hand."

The gate is a thing.
The gate is scenery in the Garden.
The description of the gate is "The gate is locked and looks out onto a quiet side street."

Instead of going north in the Garden: try examining the gate.

Instead of unlocking the gate with something: try opening the gate.
Instead of switching on the gate: try opening the gate.
Instead of pulling the gate: try opening the gate.
Before opening the gate:
	say "It looks like the gate's lock is rusted shut.";
	stop the action.
	
Instead of climbing the gate: say "You're in no shape to attempt that."

The garden street is a thing.
The garden street is scenery in the Garden.
The printed name of the garden street is the "side street". 
The description of garden street is "The side street beyond the gate is quiet at this time of night."

The bench is a thing.
The bench is scenery in the Garden.
The bench is a supporter.
The bench is enterable.
The description of the bench is "It's a bench, covered in snow, but still just a bench."

Instead of rubbing the bench: say "You brush some snow off the surface of the bench but it's quick covered up again."

The garden bushes are a thing.
The garden bushes are scenery in the Garden.
The description of garden bushes is "Covered by snow, the flora you never knew much about is probably not much to look at right now."
Understand "mounds" or "bushes" or "flora" or "vegetation" or "plants" as garden bushes.


Part - Dining Room

The Dining Room is a room. 
The Dining Room is north of the Parlor.
The description of the Dining Room is "A mahogany dining table that could comfortably seat eight dominates the space. To the north, to the right of the kitchen door, is a [sideboard] that holds tableware, cutlery, and place settings between meals. The parlor is to the south."

The Kitchen Door is north of the Dining Room and south of the Kitchen. 
The Kitchen Door is a door. 
The Kitchen Door is openable.
The Kitchen Door is scenery.
The printed name of Kitchen Door is "kitchen door".

Chapter - Dining Room Furniture

Section - Dining Table

The dining table is a thing.
The dining table is in the Dining Room.
The dining table is furniture.
The description of the dining table is "An oval mahogany table with three chairs on both sides, and a single chair at each head."

Instead of pulling the dining table: try switching on the dining table.
Before switching on the dining table:
	if the dining table is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

Section - Dining Chairs

The dining room chairs are a thing.
The dining room chairs are in the Dining Room.
The dining room chairs are furniture.
The dining room chairs are moveable.
The dining room chairs are enterable.
The description of dining room chairs is "Eight mahogany chairs around the table."
Understand "chairs" as dining room chairs.

Instead of pulling the dining room chairs: try switching on the dining room chairs.
Before switching on the dining room chairs:
	if the dining room chairs are unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

The chair-at-table is scenery in the Dining Room.
The chair-at-table is a container.
The chair-at-table is enterable.
The printed name of chair-at-table is "chair".
The description of chair-at-table is "One of the eight mahogany chairs around the table."
Understand "chair" as chair-at-table.

Instead of pulling the chair-at-table: try switching on the dining room chairs.
Instead of switching on the chair-at-table: try switching on the dining room chairs.

Instead of entering the dining room chairs: try entering the chair-at-table.
Instead of entering the chair-at-table:
	say "Well, maybe just for a minute while you gather your thoughts. You sit in the one of the chairs.";
	move the player to the chair-at-table, without printing a room description.

Section - Sideboard

The sideboard is a thing.
The sideboard is in the Dining Room.
The sideboard is furniture.
The description of the sideboard is "A matching piece of furniture with compartments and drawers for holding articles of table service."
Understand "drawer" or "drawers" or "compartments" or "compartments" as sideboard.

Instead of pulling the sideboard: try switching on the sideboard.
Before switching on the sideboard:
	if the sideboard is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action.

Instead of opening the sideboard: try searching the sideboard.
Instead of searching the sideboard: say "I don't think Mrs. Watchett would appreciate you rummaging around in her sideboard."

To say fooling-around-watchett-stuff:
	say "I don't think Mrs. Watchett would appreciate you rummaging through the contents of her sideboard."

The contents-sideboard is scenery in the Dining Room. 

Instead of examining the contents-sideboard: say "[fooling-around-watchett-stuff]".
Instead of taking the contents-sideboard: say "[fooling-around-watchett-stuff]".
Instead of switching on the contents-sideboard: say "[fooling-around-watchett-stuff]".
Instead of switching off the contents-sideboard: say "[fooling-around-watchett-stuff]".

Understand "dishes" or "plates" or "bowls" or "glassware" or "glass" or "glasses" or "tableware" or "service" or "table service" as contents-sideboard.
Understand "silverware" or "knive" or "knives" or "cutlery" or "fork" or "forks" or "spoon" or "spoons" as contents-sideboard.


Part - Kitchen

The Kitchen is a room. 
The Kitchen is north of the Kitchen Door.

The description of the Kitchen is "A small room dominated by a sturdy wooden work table in the center of the room. Surrounding the table are cabinets and shelves with a stove and sink set against one wall. [if the location of Watchett is the Kitchen][Watchett] is at the sink, cleaning up.[otherwise]It looks like [Watchett] has finished her work and retired for the evening. [end if] The dining room is to the south."

To say getting-in-watchett-way:
	say "I don't think [Watchett] would appreciate you getting in the way of her cleaning up, especially at this late hour. She might be willing to talk while she works though.[paragraph break]"

The contents-of-kitchen is scenery in the Kitchen. 
Understand "table" or "work table" or "wooden work table" or "sturdy table" or "cabinets" or "shelves" or "stove" or "sink" as contents-of-kitchen.

Instead of examining the contents-of-kitchen: say "[getting-in-watchett-way]".
Instead of taking the contents-of-kitchen: say "[getting-in-watchett-way]".
Instead of switching on the contents-of-kitchen: say "[getting-in-watchett-way]".
Instead of switching off the contents-of-kitchen: say "[getting-in-watchett-way]".


Part - Workshop  

The Workshop is a dark room. 

The description of the Workshop is "Almost twice as long as it is wide, a long workbench runs down one side of the room; a large blackboard down the other. The workshop windows at the far end of the room look down into[if the Garden has been visited] the[otherwise] a[end if] garden."

Chapter - Workbench

The workbench is a thing.
The workbench is scenery in the Workshop.
The workbench is a supporter.
The description of the workbench is "You see nothing special about the workbench."
Understand "bench" as workbench.

Instead of searching the workbench: try examining the workbench.

Chapter - Scenery

The blackboard is a thing.
The blackboard is scenery in the Workshop.
The description of the blackboard is "Fastened to the wall and covered with equations and diagrams."

Instead of searching the blackboard: try reading the equations.
		
The equations are a thing.
The equations are scenery in the Workshop.
Instead of examining the equations: try reading the equations.
Instead of searching the equations: try reading the equations.

The diagrams are a thing.
The diagrams are scenery in the Workshop.
Instead of examining the diagrams: try reading the diagrams.
Instead of searching the diagrams: try reading the diagrams.

The shapes are a thing.
The shapes are scenery in the Workshop.

Instead of examining the shapes: try looking.

Chapter - Light Switch
		
The lights are a device. 
The lights are scenery in the Workshop.
The description of the lights is "You see nothing special about the lights except [if light switch is switched off]they are turned off (perhaps there's a switch here somewhere)[otherwise]they are turned on[end if]."

The examine devices rule does nothing when examining the lights.

Instead of switching off the lights: try switching off the light switch.
Instead of switching on the lights: try switching on the light switch.

The light switch is a device.
The light switch is in the Workshop.
The light switch is switched off.
The light switch is undescribed.

Instead of examining the light switch:
	say "A simple light switch by the door that you can flip on or off."

[Writing §3.14. Devices and descriptions, Down Below example]
Carry out switching off the light switch: 
	now the lights are switched off;
	now the Workshop is dark.

Carry out switching on the light switch: 
	now the lights are switched on;
	now the Workshop is lighted.

Understand "flip [something switched off]" as switching on.
Understand "flip [something switched on]" as switching off.

Understand "press [something switched off]" as switching on.
Understand "press [something switched on]" as switching off.

To say cannot-reach-light-switch: say "You'll have to get out of the time machine if you want to reach the workshop's light switch."
Before switching on the light switch: 
	if the player is in the time machine:
		say "[cannot-reach-light-switch]";
		stop the action;
	otherwise:
		continue the action.

Before switching off the light switch:
	if the player is in the time machine:
		say "[cannot-reach-light-switch]";
		stop the action;
	otherwise:
		continue the action.

After deciding the scope of the player when the location is the Workshop:
	place the lights in scope;
	place the shapes in scope;
	place the light switch in scope.

[Recipes §3.7. Lighting, Hohmann Transfer example]
[Writing §18.22. Printing the description of a dark room]
Rule for printing the description of a dark room:
	if the room is the Workshop:
		say "In the dim light you can see dark shapes scattered throughout the workshop and a light switch by the door."
		
[Writing §18.19. Printing the announcement of darkness]
Rule for printing the announcement of darkness:
	if the room is the Workshop:
		say "With the lights off you're back to seeing only dark, shadowy shapes instead of details."

[Writing §18.18. Printing a refusal to act in the dark]
[Objects must be in scope for > examine [object] or > search [object] to return text below instead of "You can't see any such thing."]
Rule for printing a refusal to act in the dark:
	if the room is the Workshop:
		if we are examining something:
			if we are not examining the light switch:
				say "You will need a bit more light before you can examine them in any detail.";
			otherwise:
				say "A simple light switch by the door that you can flip on or off.";
		if we are searching something:
			if we are not searching the light switch:
				say "You could use a little more light before you can do that successfully.";
			otherwise:
				say "It is a simple on/off switch. Not much to search."
	
Chapter - The Time Machine

[ Writing §18.10. Printing the name of something - omit contents in listing ]
After printing the name of the time machine:
	omit contents in listing.
	
The time machine is a opaque container. [thing.] [The indefinite article is "the".]
The time machine is in the Workshop.
The time machine is fixed in place. [This prevents > show time machine to humboldt]
The time machine is enterable. 

To say time-machine-description:
	if the player is not in the time machine:
		say "Rectangular in shape, the time machine is taller than it is wide, with a scaffolding of struts, wires, and other mechanisms rises up from a thick, square base to create a cage big enough for one or two occupants[first time]. It looks like you can enter the machine through an opening in one side[only][run paragraph on].";
	if the player is in the time machine:
		say "Inside the time machine is even more baffling than its outside. While you can look closer at the various components of the machine, the only one that makes the slightest send is a set of controls at waist height.[no line break]";
		if the time machine is in the Workshop:
			say "[first time] Through gaps in the time machine's frame you can see the workshop.[no line break][only]";
		if the time machine is in the Clearing:
			say "[first time] Through gaps in the time machine's frame you can see the clearing.[no line break][only]";

The description of the time machine is "[time-machine-description]".

Understand "mechanism" or "device" or "temporal" or "struts" or "wires" or "crystals" or "base" or "opening" or "latticework" or "lattice" or "cage" or "components" or "mechanisms" as time machine.

Instead of opening the time machine: say "The time machine is already open. All you have to do is [if the player is in the time machine]get out[otherwise]get inside[end if] if you desire."
[At some point should implement >climb in/out of time machine. TBD]

[Replaced "examining" with "searching" in Instead statement]
Instead of searching [examining] the time machine:
	if a breaker (called fuse) is contained in the time-fuse-holder:		
		if the fuse is working:
			say "A barely perceptible hum and the lit light among the controls makes it look like the time machine is ready to operate.";
		otherwise:
			say "The time machine sits there in silence.";
	otherwise:
		say "The time machine sits there in silence.";

Instead of switching on the time machine: try taking the time machine.
Instead of taking the time machine:
	if the player is in the time machine:
		say "You'd have to get out of the time machine to do that.";
	otherwise:
		say "That's too heavy for you to move."

Instead of going inside in the Workshop: try entering the time machine.

Section - Activating The Time Machine

Activating is an action applying to one touchable thing.
Understand "activate [something]" as activating.

To say nothing-happens:
	say "You push the lever forward until it stops but nothing happens[first time]. When you let go of the lever it returns slowly to its initial position[only]."

Instead of activating the time machine:
	if the player is in the time machine:
		if a breaker (called fuse) is contained in the time-fuse-holder:		
			if the small light is switched on:
				say "You push the lever forward until it stops.";
				now the lever is switched on;
			otherwise:
				say "[nothing-happens]";
		otherwise:
			say "[nothing-happens]";
	otherwise:
		if a breaker (called fuse) is contained in the time-fuse-holder: 
			if the small light is switched on:
				say "Reaching into the time machine, you push the lever forward. To your amazement and horror, the machine shimmers and disappears from the room, accompanied by a distinctive bass sound of metal grinding on metal.";
				now the time machine is nowhere;
				now humboldt-should-return is true;
		otherwise:
			say "[nothing-happens]".

Chapter - Time Machine Fuse

The fuse-time-machine is a breaker. "burnt".
The printed name of the fuse-time-machine is "time machine fuse".
The fuse-time-machine is not working.
The fuse-time-machine is undescribed.
The fuse-time-machine is in the time-fuse-holder.
The description of the fuse-time-machine is "Almost as big as your thumb, this cylindrical fuse is made of pasteboard with metal caps on either end.[if fuse-time-machine is in something] Each of the metal caps is held securely in a metal clip that makes contact with the rest of the machine.[end if] The pasteboard of the fuse looks [initial appearance] in places."
Understand "time machine fuse" or "burnt fuse" or "fuse" as fuse-time-machine.

Section - Inserting Fuse In Time Machine

Before inserting a breaker (called fuse) into the time machine:
	try inserting the fuse into the time-fuse-holder;
	stop the action.

Before inserting a breaker (called fuse) into the controls:
	try inserting the fuse into the time-fuse-holder;
	stop the action.

Before inserting a breaker (called fuse) into the hinged panel:
	try inserting the fuse into the time-fuse-holder;
	stop the action.

Before inserting something (called item) into the time-fuse-holder:
	if the item is not a breaker:
		say "The [second noun] isn't designed to hold a [noun].";
		stop the action;
	otherwise:
		 continue the action.

Before inserting a breaker (called fuse) into the time-fuse-holder:
	if the time-fuse-holder contains a breaker:
		say "You will need to remove the other fuse from the time machine first.";
		stop the action;
	otherwise:
		continue the action.

After inserting a breaker (called fuse) into the time-fuse-holder:
	if the fuse is working:
		say "The time machine shudders briefly and you hear a barely perceptible hum from the mechanism. [if we have examined the small light]The[otherwise]A[end if] small light among the controls glows brightly.";
		now the fuse is in the time-fuse-holder;
		now small light is switched on;
	otherwise:
		say "You insert the [fuse] but nothing happens.";
		now small light is switched off.

Section - Removing Fuse From Time Machine

Before removing a breaker (called fuse) from the time machine: try taking the fuse.
Before removing a breaker (called fuse) from the controls: try taking the fuse.
Before removing a breaker (called fuse) from the  hinged panel: try taking the fuse.

Before removing a breaker (called fuse) from the time-fuse-holder: try taking the fuse.

Before taking a breaker (called fuse):
	if the fuse is contained in the time-fuse-holder:
		if the fuse is working:
			now the small light is switched off;
			say "[if we have examined the small light]The[otherwise]A[end if] small light among the controls dims to black and the barely perceptible hum of the time machine fades away.";
		otherwise:
			say "Taken.";
		continue the action.

The standard report taking rule does nothing when taking a breaker.

Section - Tests | Time Machine | Fuses

test orrery-time with "test fp-time / put orrery fuse in time machine fuse holder / take time machine fuse / put orrery fuse in time machine fuse holder / put time machine fuse in time machine fuse holder / take orrery fuse / put orrery fuse in time machine fuse holder / take orrery fuse from time machine fuse holder / put time machine fuse in time machine fuse holder."

Chapter - Time Machine Controls 

The controls are a thing.
The controls are part of the time machine.
The controls are undescribed.

Understand "control" as controls.

[Tracking how many times you have examined the controls is only relevant when you are inside the time machine.] 	
controls-examined-already is a truth state that varies.
controls-examined-already is false.

[This code won't compile. Why? TBD]
[Every turn when the player is inside the time machine:
	Understand "[something]" as examining. [ Writing §17.10 ] ]

[This code won't compile. Why? TBD]		
[Every turn:
	Understand "[something]" as examining when the player is inside the time machine.]

[This code will compile]	
Understand "[something]" as examining when the player is inside the time machine. [ Writing §17.10 ]
	
To say controls-examine-internal:
	if controls-examined-already is true:
		say "What part of the controls would you like to examine in greater detail: the Elapsed Time dials, the Destination numbers, the Origin numbers, the hinged panel, the small light, or the lever?";
	otherwise:
		now controls-examined-already is true;
		say "The controls of the time machine are divided into two major sections. On the left, from top to bottom, are sections labeled Elapsed Time, Destination, and Origin. On the right, from top to bottom, are a hinged panel and a small light and a lever underneath it."
	
Instead of examining the controls:
	if the player is in the time machine:
		say "[controls-examine-internal]";
	otherwise:
		say "From here you see that the controls[first time] are wired in some unfathomable way into the time machine components and[only] consist of a menagerie of dials, numbers, a small light, and a lever[first time]. You would have to enter the time machine to get a closer look at them[only].";
	rule succeeds.

Test x-control with "test goto-workshop / get in time machine / x controls / x elapsed time section / x destination section / x origin section / x hinged panel / x small light / x lever / x time-fuse-holder."

Section - Elapsed Time Section

The elapsed time section is a thing.
The elapsed time section is part of the controls.

The description of the elapsed time section is "Two rows of brass dials indicate elapsed time. The top row displays seconds, minutes, hours, days, all the way up to years. The bottom row lists intervals of a more unwonted nature[unicode 8212]epochs, ages, millennia, centuries, and decades. [if numeric-year is 1895]All of the dial pointers are positioned at zero.[otherwise]The numbers on the dials indicate that 800,806 years have elapsed."

Understand "dial" or "dials" as elapsed time section.

Section - Destination Section

The destination section is a thing.
The destination section is part of the controls.
The description of the destination section is "This section displays a row of eight numbers, each separate from its neighbor, with a tiny dial to the right of each number. The number displayed is [if numeric-year is 1895][future][otherwise][present]."
Understand "destination date" or "date of destination" as destination section.

To say present:
	say "[bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]1[close bracket] [bracket]8[close bracket] [bracket]9[close bracket] [bracket]5[close bracket]".

To say future:
	say "[bracket]0[close bracket] [bracket]0[close bracket] [bracket]8[close bracket] [bracket]0[close bracket] [bracket]2[close bracket] [bracket]7[close bracket] [bracket]0[close bracket] [bracket]1[close bracket]".
		
Section - Origin Section

The origin section is a thing.
The origin section is part of the controls.
The description of the origin section is "This section displays a row of eight numbers, each separate from its neighbor, with a tiny dial to the right of each number. The number displayed is [if numeric-year is 1895][present][otherwise][future]."
Understand "origin date" or "date of origin" as origin section.
	
Section - Small Light

The small light is a device.
The small light is part of the controls.
The small light is switched off.
The description of the small light is "A small light set into the surface just below the hinged panel but above the lever. The light is [if small light is switched on]glowing brightly.[otherwise]off."

The examine devices rule does nothing when examining the small light.

Instead of switching on the small light: 
	if the hinged panel is open:
		say "Glancing over the controls you don't see an obvious way to do that. Maybe a closer look at the fuse...";
	otherwise:
		say "Glancing over the controls you don't see an obvious way to do that."

Section - Hinged Panel
			
The hinged panel is a locked container.
The hinged panel is openable.
The hinged panel is closed.
The hinged panel is locked.
The hinged panel is part of the controls.
The description of the hinged panel is "A small panel, hinged at the top, with a keyhole recessed in the center of its bottom edge. The panel is [if the hinged panel is open]open[otherwise]shut."

The keyhole is an open container.
The keyhole is part of the hinged panel.
The description of the keyhole is "The perfect receptacle for just the right key."

Section - Time Machine Fuse Holder

The time-fuse-holder is a container.
The time-fuse-holder is inside the hinged panel.
The printed name of time-fuse-holder is "time machine fuse holder".
The description of the time-fuse-holder is "Two metal clips that the ends of a fuse can snap in to.[if there is the fuse-orrery in the time-fuse-holder] Between the two clips is the orrery fuse.[otherwise if the fuse-time-machine is in the time-fuse-holder] Between the two clips is the time machine fuse.[otherwise] The [noun] is empty.[end if]"

Understand "fuse holder" or "time machine fuse holder" or "clip" or "clips" or "holder" as time-fuse-holder.
		
[Actions on controls]
	
To say dont-see-how:
	say "I don[']t see how you would do that right now."

[Adjusting -> Modifying]
Adjusting is an action applying to one thing.
Understand "adjust [something]" as adjusting.
Instead of adjusting: say "[dont-see-how]".

Instead of adjusting the destination section: try modifying the destination section.
Instead of adjusting the origin section: try modifying the origin section.
Instead of adjusting the elapsed time section: try modifying the elapsed time section.

[Changing -> Modifying]
Changing is an action applying to one thing.
Understand "change [something]" as changing.
Instead of changing: say "[dont-see-how]".

Instead of changing the destination section: try modifying the destination section.
Instead of changing the origin section: try modifying the origin section.
Instead of changing the elapsed time section: try modifying the elapsed time section.

[Setting -> Modifying]
Setting is an action applying to one thing.
Understand "set [something]" as setting.
Instead of setting: say "[dont-see-how]".

Instead of setting the destination section: try modifying the destination section.
Instead of setting the origin section: try modifying the origin section.
Instead of setting the elapsed time section: try modifying the elapsed time section.

[Modifying]
Modifying is an action applying to one thing.
Understand "modify [something]" as modifying.
Instead of modifying: say "[dont-see-how]".
		
To say leave-alone:
	say "It would probably be best to leave the settings as they are for now."

Instead of modifying the destination section:
	say "[leave-alone]".

Instead of modifying the origin section:
	say "[leave-alone]".

Instead of modifying the elapsed time section:
	say "It looks like these dials are just for display. You'd probably have to actually travel in time to change them."

[Unlocking the hinged panel]

Instead of unlocking the keyhole with the metal key:
	try inserting the metal key into the keyhole.

Instead of inserting the metal key into the keyhole:
	if the hinged panel is unlocked:
		say "The hinged panel is already unlocked.";
	otherwise:
		say "Inserting the key into the keyhole you turn it.";
		now the metal key is in the keyhole;
		try unlocking the hinged panel with the metal key.

After unlocking the hinged panel with the metal key:
	[say "You swing the panel upwards.";]
	try opening the hinged panel.

Section - Lever

The on-off-switch is a kind of device.
The on-off-switch is either forward or backwards. The on-off-switch is usually backwards.

The lever is a on-off-switch.
The lever is switched off.
The lever is part of the controls.
The description of the lever is "A small lever that can be pushed vertically from bottom to top."

The examine devices rule does nothing when examining the lever.

Instead of pulling the lever: say "The lever is designed to be pushed instead of pulled."

Instead of switching on the lever: try activating the time machine.

Chapter - Workshop Windows

The windows are a thing. 
The windows are a backdrop. The windows are in the Workshop and the Garden.
Understand "workshop windows" or "window" or "hinge" or "hinges" or "pane" or "panes" or "leaded" or "lead" or "glass" as windows.

Instead of examining the windows: say "Large casement windows hinged on the outer edges and opening inward, secured by a single latch[first time]. The windows are constructed from many small panes of leaded glass in a lattice pattern[only]."

[This code isn't used because of the "Instead of examining the windows:" clause above.]
[>search the windows is handled in Look Through/In Windows section below.]
[Should I incorporate this description code into the Instead response above? TBD]
The description of the windows is "[if the player is in the Garden and the light switch is switched off]Above the bench you can see the darkened workshop windows.[else if the player is in the Garden and the light switch is switched on]Above you the lit windows of the workshop cast a warm light over the snow-covered garden.[else if the player is in the Workshop and the light switch is switched off]The windows look down into the snow-covered garden below.[else if the player is in the workshop and the light switch is switched on]The warm glow from the lights illuminates the snow-covered garden below."

The windows can be open or closed.
The windows can be openable. The windows are openable.

The windows can be locked or unlocked.
The windows are locked.

The latch is a thing.
The latch is part of the windows.
The latch can be open or closed.
The latch can be openable. The latch is closed.

The latch unlocks the windows.

window-latch-broken is a truth state that varies.
window-latch-broken is false.

Instead of examining the latch: 
	if window-latch-broken is false:
		say "A simple but strong latch on the inside of the windows that can be pulled to unlock or lock the windows themselves.[no line break][if windows are locked] The latch appears to be closed, locking the windows shut.[otherwise] The latch appears to be open; the windows unlocked.";
	otherwise:
		say "The latch appears to be broken and hanging down on one side."

Section - Look Through/In Windows

After deciding the scope of the player when the location is the Garden:
	place the Workshop in scope.

Instead of examining the Workshop when the player is on the bench:
	try searching the windows.

Instead of searching the windows: [Recipe §3.6 Windows]
	if light switch is switched on:
		if the player is in the Garden:
			say "Climbing onto the bench, you peer through the glass into the workshop. Twice as long as it is wide, it ends thirty feet away in a locked door. A long workbench runs down one side of the room and a large blackboard covers the opposite wall. In the center of the workshop is a strange mechanical device which must be Wells['] time machine.";
			move the player to the bench, without printing a room description;
		else if the player is in the Workshop:
			say "The workshop lights cast a warm glow onto the snow-covered garden outside.";
		else if the player is on the bench:
			say "The workbench, blackboard, and time machine are still where they were when you last looked.";
	else if light switch is switched off:
		if the player is in the Garden:
			say "Climbing onto the bench, you peer through the glass into the darkened workshop.";
			move the player to the bench, without printing a room description;
		else if the player is in the Workshop:
			say "Through the windows you can see down into the snow-covered garden outside."; [This never displays since windows are out of scope when workshop lights are off]
		else if the player is on the bench:
			say "You can[']t see anything inside the darkened workshop."


Section - Pull/Open/Close Latch

To say latch-broken:
	say "The latch has been broken and serves no function."

To say latch-unreachable:
	say "You cannot reach the latch from outside the workshop."

Before opening the latch:
	if the player is not in the Workshop:
		if the player is in the Garden:
			say "[cannot-reach]";
		else if the player is on the bench:
			say "[latch-unreachable]";
		stop the action.

Instead of opening the latch:
	if window-latch-broken is false:
		if the windows are unlocked:
			say "The latch is already open.";
		otherwise:
			try pulling the latch;
	otherwise:
		say "[latch-broken]".

Before closing the latch:
	if the player is not in the Workshop:
		say "[latch-unreachable]";
		stop the action.

Instead of closing the latch:
	if window-latch-broken is false:
		if the windows are locked:
			say "The latch is already closed.";
		otherwise:
			try pulling the latch;
	otherwise:
		say "[latch-broken]".

Instead of switching on the latch: try pulling the latch.

Before pulling the latch:
	if the player is not in the Workshop:
		say "[latch-unreachable]";
		stop the action.

After pulling the latch:
	if window-latch-broken is false:
		if the windows are unlocked:
			now the windows are locked;
			say "The windows are now locked.";
		else:
			now the windows are unlocked;
			say "The windows are now unlocked.";
	otherwise:
		say "[latch-broken]".

Section - Unlock/Lock Windows

Understand "unlock windows" as unlock-windows-action. 
unlock-windows-action is an action applying to nothing.

Instead of unlock-windows-action:
	if the windows are unlocked:
		say "The windows are already unlocked.";
	otherwise:
		try pulling the latch.

Understand "lock windows" as lock-windows-action.
lock-windows-action is an action applying to nothing.
	
Instead of lock-windows-action:
	if the windows are locked:
		say "The windows are already locked.";
	otherwise:
		try pulling the latch.

Instead of unlocking the windows with the key:
	say "You can unlock the windows with the latch. The workshop key is not needed."

Understand "latch windows" as latch-windows-action.
latch-windows-action is an action applying to nothing.

Instead of latch-windows-action:
	if the windows are locked:
		say "The windows are already locked.";
	otherwise:
		try pulling the latch.

Understand "unlatch windows" as unlatch-windows-action.
unlatch-windows-action is an action applying to nothing.

Instead of unlatch-windows-action:
	if the windows are unlocked:
		say "The windows are already unlocked.";
	otherwise:
		try pulling the latch.

Understand "unlock windows with latch" as unlock-windows-latch-action.
unlock-windows-latch-action is an action applying to nothing.

Instead of unlock-windows-latch-action:
	if the windows are unlocked:
		say "The windows are already unlocked.";
	otherwise:
		try pulling the latch.

Understand "lock windows with latch" as lock-windows-latch-action.
lock-windows-latch-action is an action applying to nothing.

Instead of lock-windows-latch-action:
	if the windows are locked:
		say "The windows are already locked.";
	otherwise:
		try pulling the latch.

Section - Open/Close Windows

To say windows-locked:
	say "The windows are locked."

To say windows-closed:
	say "The workshop windows are closed."

to say cannot-reach:
	say "You cannot reach the workshop windows from here."

Instead of opening the windows:
	if the player is in the Garden:
		say "[cannot-reach]";
	else if the player is on the bench:
		if the windows are unlocked:
			say "You push the windows open, letting the cold and snow into the workshop.";
			now the windows are open;
		otherwise:
			say "[windows-locked]";
	otherwise: [in the Workshop]
		if the windows are unlocked:
			say "You pull the windows open, letting in the cold and snow.";
			now the windows are open;
		else:
			say "[windows-locked]".
		
Instead of closing the windows:
	if the windows are closed:
		say "[windows-closed]";
	otherwise:
		if the player is in the Garden:
			say "[cannot-reach]";
		otherwise:
			if the player is on the bench:
				say "Reaching inside you grab both windows and swing them shut.";
			otherwise: [in the Workshop]
				say "You push both windows shut.";
			now the windows are closed.

Instead of switching on the windows: try pulling the windows.
Instead of pulling the windows: 
	if the windows are unlocked:
		if the windows are open:
			try closing the windows;
		otherwise:
			try opening the windows;
	otherwise:
		say "[windows-locked]";

Section - Using Poker On Windows

[> break windows with poker -> attack windows with poker
 > smash windows with poker -> attack windows with poker
 > pry windows with poker -> prying windows with poker
 > open windows with poker ->unlocking windows with poker
 > use poker on windows]

To say cannot-reach-window:
	say "You wave the poker around a few times but cannot reach the windows."

To say why-break:
	say "Why break the windows when you can just unlock them?"

Instead of attacking windows with poker: 
	if the player is in the Garden:
		say "[cannot-reach-window]";
	else if the player is on the bench:
		try prying the windows with poker;
	otherwise: [in the Workshop]
		say "[why-break]".
	
Instead of unlocking windows with poker:
	try prying windows with poker.
		
Instead of prying the windows with something:
	if the second noun is poker:
		if the player is in the Garden:
			say "[cannot-reach-window]";
		else if the player is on the bench:
			if window-latch-broken is false:
				say "Looking around quickly, you carefully place the tip of the poker where the windows meet and pry them apart. With a loud snap, the latch that secures them shut breaks. The windows are now unlocked.";
				now window-latch-broken is true;
				now the windows are unlocked;
			otherwise:
				say "[latch-broken]";
		otherwise: [in the Workshop]
			say "[why-break]";
	otherwise:
		say "[cannot-use]".

To say cannot-use:
	say "I don't think using the [noun] on the [second noun] in this particular situation will be effective."

Understand "use [a carried thing] on [something]" as use-on-action. [https://bit.ly/3CMwSDm]
use-on-action is an action applying to two things.
			
Instead of use-on-action:
	if noun is poker:
		if the player is in the Garden:
			say "[cannot-reach-window]";
		else if the player is on the bench:
			try prying windows with poker;
		else if the player is in the Workshop:
			say "[why-break]";
		else if the player is in the Entryway:
			if current action involves workshop-door:
				say "The [first time]initial [only]thought of prying open the locked door with the poker might have worked, but the door and its frame are solidly made[first time]. You wouldn't be able to get into the workshop without destroying a large section of the surrounding woodwork. Perhaps there's another way into Wells['] workshop[only].";
			else if current action involves front door:
				say "The front door isn't locked so I don't see why you would think you had to pry it open.";
			otherwise:
				say "[cannot-use]";
		otherwise:
			say "[cannot-use]";
	otherwise:
		say "[cannot-use]".

Section - Climbing Through Windows From Garden	
	
Instead of going south in the Garden:
	if the player is not on the bench:
		try entering the bench;
	else if the player is on the bench:
		try going up;
	otherwise:
		continue the action.

Instead of going inside when the player is on the bench:
	try going up.

Instead of climbing into the windows:
	try going up.

Instead of going up in the Garden:
	if the player is on the bench:
		if the windows are open:
			say "Grabbing onto the sill of the opened windows you manage to hoist yourself into the [if the lights are switched on]lit [otherwise] dark [end if]workshop with some difficulty.[if the lights are switched off] Stumbling through the darkness you manage to get to the workshop door without too many bumps and bruises.[end if]";
			now the player is in the Workshop;
		otherwise:
			say "[windows-closed]";
	otherwise:
		say "You jump up and down a few times in the snow-covered garden, warming yourself slightly but not accomplishing much else."

Section - Climbing Through Windows From Workshop

Instead of going north in the Workshop:
	try going down.

Instead of going down in the Workshop:
	if the Ending Scene is happening:
		say "[first time]Humboldt stops you from leaving. [only]'Wait a minute, what have you found?'";
		stop the action;
	otherwise if the windows are open:
		say "Throwing your legs over the sill of the opened windows you carefully lower yourself onto the snow-covered bench in the garden below with some difficulty.";
		now the player is on the bench;
	otherwise:
		say "[windows-closed]".

Instead of going south in the Workshop:
	if the Ending Scene is happening:
		say "[first time]Humboldt stops you from leaving. [only]'Wait a minute, what have you found?'";
	otherwise:
		continue the action.
		
Book - 802,701

Part - Clearing

can-go-clearing-to-river is a truth state that varies.
can-go-clearing-to-river is true.

The Clearing is a room. 
The description of the Clearing is "A midsized clearing dominated by a circular well in the center that rises about three feet above the ground. High above you, the face of a foreboding statue looks down on you through a gap in the trees. A path to the east leads to a white dome in the distance.[if the Balcony has been visited] Now that you know it exists, you can clearly see the overgrown path that you saw from the balcony leading southeast.[end if]"

Inside from the Clearing is Top Well.

Instead of going inside in the Clearing:
	if the metal cover is on the circular well:
		try entering the time machine;
	otherwise:
		continue the action.

Instead of going down in the Clearing: 
	if the metal cover is on the circular well:
		say "You might be able to if that grate wasn't in the way.";
	if the metal cover is not on the circular well:
		try entering the circular well.

Chapter - Printing Clearing Description

[https://bit.ly/3NyqyEz]
clearing-print-description is a truth state that varies.
clearing-print-description is true.
The room description body text rule does nothing when clearing-print-description is false.

Check going to the River Bank: now clearing-print-description is true.
Check going to the Domed Building: now clearing-print-description is true.

Chapter - Scenery

The circular well is a thing.
The circular well is scenery in the Clearing.
The circular well is a supporter.
Instead of examining the circular well: say "Three feet in diameter, the circular well appears to be made of some unknown metal. [if metal cover is on circular well]A circular cover rests on the top of the shaft, flush with the surface.[otherwise]You can see the rungs of a ladder going down into darkness.[end if]"

The statue is scenery in the Clearing.
The description of statue is "The sightless eyes of the weather-worn marble face stare down at you, inhuman and unsympathetic."
Understand "sphinx" or "carved figure" or "face" or "marble" as statue.

To say statue-far-away:
	say "High above your head, surrounded by trees and dense undergrowth, the statue is out of reach."

Instead of doing something with the statue:
	say "[statue-far-away]".

The treetops are a thing.
The treetops are backdrop. They are in the Clearing and the Sphinx Steps and the Balcony.
Understand "forest" or "trees" or "tree" or "foliage" as treetops.
The description of treetops is "[if the location is the Clearing]Above your head the leafy canopy of deciduous and evergreen trees filters the midday sunlight.[otherwise]Below you the leafy canopy of deciduous and evergreen trees covers everything except your view of the river, the clearing below and the overgrown path connecting them."

The clearing bushes are a thing.
The clearing bushes are scenery in the Clearing.
The description of the clearing bushes are "The overgrown bushes make it difficult to see what lies beyond the clearing."
The printed name of clearing bushes is "bushes".

The undergrowth is a thing.
The undergrowth is scenery in the Clearing.
The description of the undergrowth is "The undergrowth would make passage in any direction but east difficult."

To say attempt-cutting-foliage: say "[if the player has the poker]You swing the poker at the [noun] a few times but it is too dull to accomplish anything.[otherwise]You have nothing in your hands that could be used to attempt that."
Instead of cutting the clearing bushes: say "[attempt-cutting-foliage]".
instead of cutting the undergrowth: say "[attempt-cutting-foliage]".

Chapter - Metal Cover

The metal cover is a thing.
The metal cover is portable.
The metal cover is on the circular well.
The metal cover is a supporter.
The metal cover is undescribed.
The description of the metal cover is "About three feet in diameter, the cover is made of wide slats of metal arranged in a waffle pattern. Despite the patina of rust, it looks extremely sturdy and heavy.[if the metal cover is not on the circular well] The cover is lying on the ground next to the open well.[end if]"

Understand "grate" as metal cover.

[ > Remove grate ]

Understand the command "remove" as something new.
Understand the command "remove" as "take".

Instead of pulling the metal cover: try taking the metal cover.
Instead of pushing the metal cover: try taking the metal cover.

Instead of attacking the metal cover with something: say "The [second noun] has no effect on the metal of the cover, despite its rusted appearance. But you might be able to move the cover out of its current position if you try."
		
Instead of switching on the metal cover:
	try taking the metal cover.

Instead of taking the metal cover:
	if the player is in the time machine:
		say "You'll have to get out of the time machine first.";
	otherwise:
		if the metal cover is on the circular well in the Clearing:
			say "Grabbing the cover at the edges and bracing yourself against the side of the well, you manage to lever it up and out of its resting position. It's extremely heavy, but you succeed in toppling it to one side and onto the ground, narrowly missing your feet.";
			move the metal cover to the Clearing;
			now the metal cover is described;
		otherwise:
			say "It is way too heavy to try and move a second time from its position on the ground."

Climbing into is an action applying to one touchable thing.
Understand "climb in [something]" as climbing into.
Understand "climb into [something]" as climbing into.
Instead of climbing into the circular well: try entering the circular well.

[If you remove the metal cover from the circular well you can climb into it]
Instead of entering the circular well:
	if the metal cover is on the circular well:
		say "If the cover wasn't on top of the well you might be able to.";
	otherwise:
		say "Carefully you climb over the lip of the well and onto the ladder.[line break]";
		now the player is in the Top Well.

Going north in the Clearing is wandering.
Going northeast in the Clearing is wandering.
Going south in the Clearing is wandering.
Going southwest in the Clearing is wandering.
Going west in the Clearing is wandering.
Going northwest in the Clearing is wandering.

Instead of wandering in the Clearing:
	if the player is in the time machine:
		say "You would have to get out of the time machine first.";
	otherwise:
		say "You poke around the bushes and tangled undergrowth to the [noun] but cannot find any path going in that direction."
						
Before going southeast in the Clearing:
	if the player is in the time machine:
		say "You would have to get out of the time machine first.";
		stop the action;
	otherwise:
		if can-go-clearing-to-river is false: [This variable is always set to "true"]
			say "A cursory examination of the tangled undergrowth to the [noun] reveals no visible path.";
			stop the action;
		otherwise:
			continue the action.

Part - Top Well

The Top Well is a room.
Down from Top Well is the Bottom Well. [Located in Underground - Level 1]
Up from Top Well is the Clearing.
The description of Top Well is "You[']re hanging at the top of the shaft on the ladder leading down[first time]. Exiting the shaft will put you back in the clearing[only]."

Instead of going up from the Top Well: try exiting.

Instead of exiting in the Top Well: 
	say "You carefully climb out of the well.";
	now the player is in the Clearing.
	
The ladder is a thing.
The ladder is a backdrop. It is in the Clearing, Top Well and Bottom Well.
The description of the ladder is "A series of rusting iron bars sunk into the side of the shaft, [if location of player is Clearing or location of player is Top Well]leading down into the gloom.[otherwise]leading up into the sunlight."

Understand "rungs" or "rung" or "bars" or "bar" as ladder.

Instead of climbing the ladder:
	if the location of the player is Top Well:
		say "You can't climb up any further.";
	otherwise if the location of the player is Bottom Well:
		now the player is in Top Well.

Instead of descending the ladder:
	if the location of the player is Top Well:
		now the player is in Bottom Well;
	otherwise if the location of the player is Bottom Well:
		say "You can't climb down any further."

Instead of going down in the Bottom Well, try descending the ladder.
	
Part - Domed Building

The Domed Building is a room.
The Domed Building is east of the Clearing.
The Domed Building is west of the Inside Dome.
Inside from the Domed Building is Inside Dome.

The dome-outside is a backdrop. It is in the Clearing and the Domed Building.
Understand "concrete" or "building" or "pantheon" or "columned" or "columns" or "column" or "portico" or "entrance" or "dome" as dome-outside.

To say dome-from-clearing:
	say "What you can see through the trees appears to be an arrangement of triagular facets in a curved shape[first time]. You won't be able to tell more until you get closer[only]."

To say dome-from-building:
	say "From this distance, you can definitely make out the individual interlocking triangular panels fastened together into a dome that extends down to the foundation around it[first time]. It's unlike any other dome you have every seen and you can't fathom the weathered material it's made of[only]."

Instead of examining dome-outside: say "[if the player is in the Clearing][dome-from-clearing][otherwise][dome-from-building]" 

The description of the Domed Building is "The massive geodesic dome squats among the encroaching vegetation. The entrance to the dome is to the east up some steps and through a columned portico."


Part - Inside Dome

The Inside Dome is a room.
The Inside Dome is north of the Balcony.
Understand "dome" as Inside Dome.

The description of Inside Dome is "Sunlight streams through the dome's oculus, illuminating the entire room. Low stone tables are arranged in a circular pattern around a large central well at the center of the dome. A series of murals circles the perimeter of the dome except for the exits. There is an small archway to the south and the main exit to the west."

[DEL Circling the entire wall of the dome except for the exits is a series of murals.]
	
The printed name of Inside Dome is "Inside the Domed Building"

The dome-inside is scenery in Inside Dome.
Understand "dome" as dome-inside.
Instead of examining dome-inside: try looking.

The oculus is a thing.
The oculus is scenery in the Inside Dome.
The description of oculus is "A circular opening at the dome's apex far above your head allowing sunlight and the elements to enter.[first time] From this distance it looks small, but given the size of the dome you estimate it to be at least thirty or thirty-five feet in diameter.[only]"

Understand "apex" as oculus.

The sun is scenery in the Inside Dome.
The description of the sun is "The light from the midday [noun] streams through the opening in the center of the dome and into the room below."
Understand "sunlight" or "light" as the sun.

The archway is scenery in the Inside Dome.
The description of the archway is "A small archway to the south leading outside."
Understand "arch" as archway.

The tables are a thing.
The tables are scenery in the Inside Dome.
The description of the tables are "The low-slung stone tables are arranged symmetrically around the well." 
Understand "circular" or "container" or "depression" or "table" as tables.

Instead of entering the tables: say "You sit briefly on the edge of one of the tables to gather your thoughts."

The round well is a thing.
The round well is a container.
The round well is open.
The round well is scenery in the Inside Dome.
The description of the round well is "The well is circular and filled with what appears to be fresh water. The same size as the oculus far above, a knee-high wall runs around its circumference."

Instead of inserting things into the round well: say "I don't see the purpose of dropping [the noun] in the water."

instead of drinking the round well: try eating the well-water.

Instead of searching the round well: say "You see nothing unusual in the well's water."

Instead of entering the round well: say "The logic behind that action escapes me."

The wall is scenery in the Inside Dome.
The description of the wall is "The wall runs around the entire outer edge of the well."

Instead of entering the round well: try entering the round well;
Instead of entering the round well: say "You rest briefly at the edge of the well to gather your thoughts."

The well-water is a thing.
The well-water is scenery in the Inside Dome.
The well-water is edible.
The description of the well-water is "The water appears fresh, replenished by some unseen mechanism far below.[first time] Of course, if Wells were here he would be able figure out the mechanics of such an engineering feat but you can only puzzle at its' execution.[only]"

The printed name of well-water is "water".
Understand "water" as well-water.

Before taking the well-water:
	try eating the well-water;
	stop the action.

Instead of tasting the well-water:
	try eating the well-water.

Instead of eating the well-water:
	say "You cup some water in your hands for a quick drink.";
	stop the action.

Instead of drinking the well-water, say "You cup some water in your hand and take a quick drink." [Recipe §10.2. Liquids]

Instead of smelling the well-water: say "It smells fine."
	
Instead of touching the well-water: say "It feels cool and wet like you would expect."
	
Instead of inserting things into the well-water: say "I don't see the purpose of dropping [the noun] in the water."

The murals are a thing.
The murals are scenery in the Inside Dome.

The description of the murals are "Each panel is a mosaic devoted to a specific pastoral scene being performed by a group of people who must be Wells['] Eloi[unicode 8212]gathering fruit, bathing and swimming in a river, wandering the countryside, eating, dancing, and other questionable activities.

In one or two of the dusk scenes you can make out small silhouettes hidden in the undergrowth and shadows, spying on the Eloi's activities[unicode 8212]Wells['] Morlocks."

Understand "cyclorama" or "mural" or "panel" or "panels" or "walls" as murals.

Instead of switching on the murals: try taking the murals.
Before taking the murals:
	say "They're fastened to the walls of the dome.";
	stop the action.

Instead of searching the murals: say "They're mosaics. You look at them, no searching necessary."

instead of touching the murals: try examining the mosaics.

The mosaics are a thing.
The mosaics are scenery in the Inside Dome.
The description of the mosaics are "Each panel is composed of thousands of small square pieces of colored stone, tile, and glass best viewed at a slight distance. In certain places, individual pieces have fallen out unmaintained by future generations."
Understand "mosaic" or "square" or "stone" or "tile" or "glass" or "colored pieces" or "pieces" as mosaics.


Part - Balcony

[Treetops, foliage, and forest are handled in the Clearing]

The Balcony is a room.
The Balcony is south of Inside Dome.
The description of the Balcony is "This small concrete balcony looks down on the treetops below. To the south, through a break in the foliage, you can see a river[if the location of the Eloi is not nowhere] with many tiny figures around it.[otherwise].[end if][first time] From up here you can also see an overgrown path leading southeast from the clearing to the river, probably obscured by undergrowth at ground level.[only]"

The balcony-river is scenery in the Balcony.
The description of the balcony-river is "The river winds its way through the forest below you. Looking closely, you can see groups of people in the river and on its banks."

The printed name of balcony-river is "river".

Understand "river" as balcony-river.

The balcony-people is scenery in the Balcony.
The description of balcony-people is "From this distance it is difficult to make out specific details about the group gathered at the river below. They all appear to be similar in stature and dressed in the same garments, but you[']ll have to get closer to confirm these initial observations."

Understand "people" or "figures" or "group" or "groups" as balcony-people.

The balcony-clearing is scenery in the Balcony.
The description of balcony-clearing is "The sunlight reflecting off the time machine almost obscures it from view but you can just make the machine out in the clearing next to the circular well."
Understand "clearing" as balcony-clearing.

The balcony-path is scenery in the Balcony.
The description of balcony-path is "Though overgrown, the path clearly makes its way southeast from the clearing to the river."
Understand "path" as balcony-path.
	
The balcony-statue is scenery in the Balcony.
The description of balcony-statue is "Dark and alien, the statue towers over the treetops, its sinister gaze casting a dark pall over the sunlit landscape below."
Understand "statue" as balcony-statue.


Part - River Bank

The River Bank is a room.
The River Bank is southeast of the Clearing.
The description of the River Bank is "[first time]The southeast path winds its way downhill through dense undergrowth. [only]After a brief hike, you emerge from the woods onto the northwest bank of a sizeable river."

The river-river is scenery in the River Bank.
The description of the river-river is "The river curves its way through the forest from the northeast to the southwest. The rushing water looks cool and inviting."
The printed name of river-river is "river".
Understand "river" as river-river.

The river-water is scenery in the River Bank.
The description of the river-water is "The rushing water is cloudy and filled with debris from somewhere upstream."
The printed name of river-water is "water".
Understand "water" as river-water.

Before taking the river-water:
	try eating the river-water;
	stop the action.

Instead of eating the river-water:
	try drinking the river-water;
	stop the action.

Instead of drinking the river-water, say "I don't see why you would choose to drink out of this murky river when [if the Inside Dome has been visited]there's[otherwise]there might be[end if] a source of fresh water elsewhere." 

The river-bushes is scenery in the River Bank.
The description of river-bushes is "The dense and overgrown flora parallels the river bank, dense with flowers."
Understand "bush" or "bushes" as river-bushes.

Gathering is an action applying to one thing.
Understand "gather [something]" as gathering.
Instead of gathering: say "The Eloi don[']t seem to need your help. Perhaps another time."

Instead of going southeast in the River Bank: try swimming.

Swimming is an action applying to nothing.
Understand "swim" as swimming.
Instead of swimming: say "You[']re not dressed for swimming. Perhaps another time."

Resting is an action applying to nothing.
Understand "rest" as resting.
Instead of resting: say "You[']re not tired right now. Perhaps another time."

Chapter - Flowers/Flower

The flowers are a thing.
The flowers are in the River Bank.
The flowers are undescribed

The description of flowers is "The petals of these flowers seem to match [if the player has the petal]the one you've got in your pocket.[otherwise]the one Humboldt gave you earlier.[end if]"

Understand "flora" as flowers.

The flower is a thing.
The flower is in the River Bank.
The flower is undescribed.

The description of the flower is "The petals of this flower's blossom exactly match the the one that Humboldt gave you earlier. If this complete speciman won't convince the doctor of Wells[apostrophe] sanity then nothing will."

Instead of taking the flower:
	if the player has the flower:
		say "One should suffice to convince the doctor of Wells[apostrophe] sanity.";
	otherwise:
		continue the action.

Instead of smelling the flower:
	say "The blossom has a delicate perfumed fragrance that you can't place."

Part - Underground - General

Chapter - Light Level

Light level is a kind of value.
The light levels are day, shadow, twilight, night.
[The light levels are dawn, day, shadow, twilight, dusk, night.]

Chapter - Visibility

Section - Room Visibility

A room has a light level called visibility.
The visibility of a room is usually day.

Section - Underground Visibility

underground is a kind of lighted room.
underground has a light level called visibility.
The visibility of underground is usually night.

Chapter - Player-Has-Light Variable

player-has-light is a truth state that varies.
player-has-light is false.

Part - Underground - Shaft

Chapter - Shaft Description

To say shaft-description:
	if the location of the player is:
		-- Shaft 1: say "The small tunnel opens up into a large shaft that extends high up above your head and down into the darkness below.";
		-- Shaft 2: say "You're standing on a small platform anchored to the side of the shaft.";
		-- Shaft 3: say "You're standing on a small platform anchored to the side of the shaft.";
		-- Shaft 4: say "You're standing on a small platform anchored to the side of the shaft.";
		-- otherwise: say "NULL";

Section - Generic Shaft Description

The generic-shaft is a backdrop.
The generic-shaft is in Shaft 1.
The generic-shaft is in Shaft 2.
The generic-shaft is in Shaft 3.
The generic-shaft is in Shaft 4.

The description of generic-shaft is "[generic-shaft-description]".

To say generic-shaft-description:
	if the location of the player is:
		-- Shaft 1: say  "Carved out of solid rock, the circular shaft surrounds you on all sides and continues down into the darkness below.";
		-- Shaft 4: say "Carved out of solid rock, the circular shaft surrounds you on all sides and continues down into the darkness below.";
		-- otherwise: say "Carved out of solid rock, the circular shaft surrounds you on all sides and continues down into the darkness below.";

Understand "shaft" as generic-shaft.

Chapter - Shaft Directions

To say shaft-directions:
	if the location of the player is Shaft 1:
		say "down";
	otherwise:
		if the location of the player is Shaft 4:
			say "up";
		otherwise:
			say "up and down".

Chapter - Shaft Ladder

The shaft-ladder is a backdrop.
The shaft-ladder is in Shaft 0.
The shaft-ladder is in Shaft 1.
The shaft-ladder is in Shaft 2.
The shaft-ladder is in Shaft 3.
The shaft-ladder is in Shaft 4.

The description of the shaft-ladder is "A series of metal rungs set into the metal wall of the shaft." [Carved into the metal next to the ladder are a series of glyphs [ladder-glyphs]."]

Understand "ladder" or "rungs" as shaft-ladder.
	
Instead of climbing the shaft-ladder:
	if the location of the player is Shaft 1:
		say "You can't climb up any further.";
	otherwise if the location of the player is Shaft 2:
		now the player is in Shaft 1;
	otherwise if the location of the player is Shaft 3:
		now the player is in Shaft 2;
	otherwise if the location of the player is Shaft 4: 
		now the player is in Shaft 3.	

Descending is an action applying to one touchable thing.
Understand "descend [something]" as descending.

Instead of descending shaft-ladder:
	if the location of the player is Shaft 1:
		now the player is in Shaft 2;
	otherwise if the location of the player is Shaft 2:
		now the player is in Shaft 3;
	otherwise if the location of the player is Shaft 3:
		now the player is in Shaft 4;
	otherwise if the location of the player is Shaft 4: 
		say "You can't climb down any further."

Chapter - Shaft Platform

The shaft-platform is a backdrop.
The shaft-platform is in Shaft 1.
The shaft-platform is in Shaft 2.
The shaft-platform is in Shaft 3.
The shaft-platform is in Shaft 4.

The description of shaft-platform is "Anchored to the side of the shaft, the small platform gives you a bit of room to move around carefully."

Understand "platform" as shaft-platform.

Chapter - Ladder Glyphs

To say level-0-light: say "[unicode 9672][unicode 9677]".
To say level-1-light: say "[unicode 9675][unicode 9672][unicode 9677]".
To say level-2-light: say "[unicode 9675][unicode 9672][unicode 9677]".
To say level-3-light: say "[unicode 9675][unicode 9672][unicode 9677]".
To say level-4-light: say "[unicode 9677][unicode 9672][unicode 9679]".
To say level-5-light: say "[unicode 9673][unicode 9672]".

To say tamil-look: say "பார்".
To say tamil-surface: say "மேற்பரப்பு".
To say tamil-social: say "சமூக".
To say tamil-sleep: say "தூங்கு".
To say tamil-eat: say "சாப்பிடு".
to say tamil-work: say "வேலை".

To say ladder-glyphs:
	if the location of the player is:
		-- Shaft 1: say "[level-1-light] [tamil-surface]";
		-- Shaft 2: say "[level-2-light] [tamil-social]";
		-- Shaft 3: say "[level-3-light] [tamil-sleep]";
		-- Shaft 4: say "[level-4-light] [tamil-eat]";
		-- otherwise: say "NULL";



Part - Underground - Level 1

Chapter - Bottom Well

The Bottom Well is underground.
Up from the Bottom Well is the Top Well.
North from the Bottom Well is Shaft 1.
[The description of Bottom Well is "The light from above illuminates the bottom of what appears to be merely a dry well."]

The description of Bottom Well is "The light from above illuminates the bottom of what appears to be merely a dry well.[paragraph break]The ladder leads up and there is an opening to the north."

[> x metal grate]

The visibility of Bottom Well is day.

The printed name of Bottom Well is "Bottom of the Well"

Before going north in the Bottom Well:
	say "Ducking your head you head north."

Chapter - Brass Lantern (not used)


The brass lantern is a device.
The brass lantern is nowhere.
[The brass lantern is in the Bottom Well.]
The description of the brass lantern is "A battered brass police lantern that can be turned on or off."

After switching on the brass lantern:
	now player-has-light is true;
	now the lantern is lit.

After switching off the brass lantern:
	now player-has-light is false;
	now the lantern is not lit.


Chapter - Shaft 1

Shaft 1 is underground.
Shaft 1 is north of Bottom Well.
Shaft 1 is up from Shaft 2.

The description of Shaft 1 is "[shaft-description] You're standing on a small platform anchored to the side of a large cylindrical shaft.[paragraph break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."

The printed name of Shaft 1 is "Shaft - Level 1". [[ladder-glyphs]".]

The visibility of Shaft 1 is day.

Part - Underground - Level 2

Chapter - Shaft 2

Shaft 2 is underground.
Shaft 2 is down from Shaft 1.
Shaft 2 is up from Shaft 3.

The description of Shaft 2 is "[shaft-description][line break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."
	
The printed name of Shaft 2 is "Shaft - Level 2". [[ladder-glyphs]".]

The visibility of Shaft 2 is day.

Instead of going south in Shaft 2:
	say "YOU CAN'T GO THAT WAY - TUNNEL COLLAPSE."


Part - Underground - Level 3

Chapter - Shaft 3

Shaft 3 is underground.
Shaft 3 is down from Shaft 2.
Shaft 3 is up from Shaft 4.
Shaft 3 is north of the Living Quarters.

The description of Shaft 3 is "[shaft-description][line break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."

The printed name of Shaft 3 is "Shaft - Level 3". [[ladder-glyphs]".]

The visibility of Shaft 3 is twilight. [day.]

Before going south in Shaft 3:
	if player-has-light is false:
		follow morlock defend rule;
		stop the action.

Chapter - Living Quarters

The Living Quarters are underground.
The Living Quarters are south of Shaft 3.
The Living Quarters are up from the Catacombs.

To say living-quarters-description:
	if player-has-light is true:
		say "In the flickering light, you see hundreds of individual cubbyholes carved into the walls around you ascending in symmetrical rows into the darkness above, connected by an intricate cats cradle of ropes and platforms that rises up the wall. There's an exit north and a small tunnel leading down.";
	otherwise:
		say "Without light it is almost impossible to make out any details in this room except for the exit north and a small tunnel leading down.";

The description of Living Quarters is "[living-quarters-description]".

Understand "cubbyholes" or "rows" or "wall" or "walls" as Living Quarters
		
The visibility of Living Quarters is night. [shadow.]

Section - Cats Cradle

The Cats Cradle is scenery in the Living Quarters.

To say cats-cradle-description:
	if player-has-light is true:
		say "Obvious designed to allow vertical ascent, the intricate ropework is obviously the product of generations of Morlock ingenuity and craftsmanship.";
	otherwise:
		say "Without light it is almost impossible to make out the details of this intricate ropework.";

The description of Cats Cradle is "[cats-cradle-description]".

Understand "rope" or "ropes" or "platform" or "platforms" as Cats Cradle.

To say climbing-cats-cradle:
	if player-has-light is true:
		say "It would require someone more dexterous than yourself, with both hands free, to even begin such an ascent.";
	otherwise:
		say "In the dark? Not likely.";

Instead of climbing the Cats Cradle: say "[climbing-cats-cradle]".

Chapter - Catacombs

The Catacombs are underground.
The Catacombs are down from the Living Quarters.

To say catacombs-description:
	if player-has-light is true:
		say "In the flickering light, you see the bones of dead Morlocks arranged in tunnels extending into the distance as far as the eye can see.";
	otherwise:
		say "Without light it is almost impossible to make out any details in this room except for the tunnel leading back up.";

The description of Catacombs is "[catacombs-description]".

Understand "tunnels" as Catacombs.

The visibility of Catacombs is night. [shadow.]

Section - Bones

The bones are a thing.
The bones are in the Catacombs.
The bones are scenery.

The description of bones is "They appear to be carefully arranged according to some unknown taxonomy by size, shape, and function."

Understand "remains" or "skeletons" or "mummified" or "dead" or "tombs" as bones.
	
Instead of searching the bones: try taking the bones.
Instead of taking the bones: say "Graverobbing is probably as much a sacrilege now as it is in your time."

Section - Wandering In Catacombs

Going north in the Catacombs is wandering.
Going west in the Catacombs is wandering.
Going northwest in the Catacombs is wandering.
Going northeast in the Catacombs is wandering.
Going east in the Catacombs is wandering.
Going southeast in the Catacombs is wandering.
Going south in the Catacombs is wandering.
Going southwest in the Catacombs is wandering.

To say catacombs-wandering:
	if player-has-light is true:
		say "You wander [noun] past a series of [one of]alcoves[or]niches[or]recesses[or]shrines[then at random] filled to the brim with [one of]bones[or]mummified remains[or]skeletons[then at random] of long-dead inhabitants of this underground arcology before arriving back at the tunnel entrance.";
	otherwise:
		say "Without light you stumble around the oppressive tunnels until somehow you arrive back at the entrance.";
	
Instead of wandering in the Catacombs:
	say "[catacombs-wandering]";


Part - Underground - Level 4

Chapter - Shaft 4

Shaft 4 is underground.
Shaft 4 is down from Shaft 3.
Shaft 4 is north of the Eating Area.

Instead of going down in Shaft 4:
	say "THE LADDER IS BROKEN. THE SHAFT CONTINUES DOWN INTO THE DARKNESS."

The description of Shaft 4 is "[shaft-description][line break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."

The printed name of Shaft 4 is "Shaft - Level 4". [[ladder-glyphs]".]

The visibility of Shaft 4 is twilight.

Chapter - Eating Area

The Eating Area is underground.
The Eating Area is south of Shaft 4.
The Eating Area is north of the Abattoir.

The description of Eating Area is "Rows of parallel troughs in various states of repair fill this room.[paragraph break]There are exits to the north and south."

The visibility of Eating Area is night.

Section - Troughs

The troughs are a thing.
The troughs are in the Eating Area.
The troughs are scenery.

The description of the troughs are "Only a few are still intact and only one or two appear to have been used recently."

Understand "trough" or "meal" or "remains" or "recent meal" or "grisly" as troughs.

Instead of examining the troughs: try searching the troughs.

Instead of searching the troughs for the first time, say "Aside from the grisly remains of a recent meal you find nothing else even remotely interesting."
Instead of searching the troughs for the second time, say "You fined nothing else of interest."
Instead of searching the troughs for more than two times, say "There really isn't anything else to find here."

Chapter - Abattoir

The Abattoir is underground.
The Abattoir is south of the Eating Area.
The Abattoir is north of the holding-cell-gate. [Holding Cell.]

The description of Abattoir is "A cross between a workshop and a charnel house, this room is dominated by a large metal table. There is a pile of bloodstained clothing at the base of the table. There's a gated exit to the south and another exit to the north."

The visibility of Abattoir is twilight. [day.]

Section - Table

The metal table is a thing.
The metal table is in the Abattoir.
The metal table is furniture.
The description of metal table is "Stained with blood, the metal table has what appear to be drainage channels cut into its surface."

Instead of pulling the metal table: try switching on the metal table.
Before switching on the metal table:
	if the metal table is unmoveable:
		say "[cannot-move]";
	otherwise:
		say "[should-not-move]";
	stop the action. 

Section - Channels

The channels are a thing.
The channels are in the Abattoir.
The channels are scenery. 
The description of channels are "Cut into the surface of the metal table, the channels appear to be designed to drain excess liquid off the table.[first time] The pile of bloodstained clothing just happens to be underneath the channel exit point.[only]"

Section - Pile of Bloodstained Clothing

The pile of bloodstained clothing is a thing.
The pile of bloodstained clothing is in the Abattoir.
The pile of bloodstained clothing is undescribed.
The description of the pile of bloodstained clothing is "A large number of Eloi tunics and smocks piled together. At first glance, they all appear to be covered in blood: some dried, some still wet."
Understand "clothes" as pile of bloodstained clothing.

Instead of searching the pile of bloodstained clothing when the tunic is unfound:
	now the tunic is found;
	say "Searching through the loathsome pile you find one article of clothing, an Eloi tunic, that is relatively clean and unstained by blood and separate it from the rest.";
	move the tunic to the player.

Instead of searching the pile of bloodstained clothing:
	say "Further investigation reveals nothing else of importance."

Section - Tunic

The tunic is a thing.
The tunic is in the Abattoir.
The tunic is undescribed.
The description of the tunic is "[if the tunic is unfound]You can't see any such thing.[otherwise if the tunic is not part of the poker]A small Eloi tunic, somehow untouched by blood, made up a dense weave of cottoney fibers.[otherwise]Wrapped around the end of the poker.[end if]"

The printed name of tunic is "Eloi tunic".

Understand "smock" or "cotton" or "weave" or "eloi tunic" as tunic.

The tunic can be found or unfound.
The tunic is unfound.

Instead of wearing the tunic:
	say "It's not your size. And frankly, you'd look ridiculous wearing it if it was."
	
Chapter - Gate
	
The holding-cell-gate is a door.
The holding-cell-gate is north of the Holding Cell and south of the Abattoir.
The holding-cell-gate is closed.
The holding-cell-gate is unlocked.
The holding-cell-gate is openable.
	
The holding-cell-gate is scenery.
Understand "gate" or "rusted gate" or "rust" as holding-cell-gate.
			
The description of holding-cell-gate is "Despite the lock having rusted away, the gate is still capable of being opened and closed."
			
The printed name of holding-cell-gate is "rusted gate".

Chapter - Holding Cell

The Holding Cell is underground.
The Holding Cell is south of the holding-cell-gate. [Abattoir.]
	
The description of Holding Cell is "A small cell large enough to hold two or three Eloi. The exit is to the north through a rusted gate."
	
The visibility of Holding Cell is twilight. [day.]

Instead of exiting when the player is in the Holding Cell:
	try going north.
	
Before going north when the player is in the Holding Cell:
	if player-has-light is false:
		say "Weena grabs at you as you attempt to leave, obviously wanting to follow you into the darkness but terrified to do so without a light."


Book - Regions

[I might be able to give rooms an "inside" and "outside" property and not use regions.]

Year-1895-Outside is a region.
Woking Street and Garden are in Year-1895-Outside.

Year-1895-Inside is a region. 
Entryway and Library and Parlor and Dining Room and Kitchen and Workshop are in Year-1895-Inside.

Year-802701-Outside is a region.
Clearing and Domed Building and River Bank and Top Well are in Year-802701-Outside.

Year-802701-Inside is a region.
The Balcony and the Inside Dome are in Year-802701-Inside.

Year-802701-Underground is a region. 
Shaft 1 and Bottom Well are in Year-802701-Underground.
Shaft 3 and Living Quarters and Catacombs are in Year-802701-Underground.
Shaft 4 and Eating Area and Abattoir and Holding Cell are in Year-802701-Underground.
			
Volume - Characters

A person can be either fixed or mobile. 
A person is usually fixed.

A person can be either major or minor.
A person is usually minor.

Book - Familiarity 

Wells is a familiar man.
Humboldt is a familiar man.
Watchett is a familiar woman. [If commented out = "Dr. Humboldt does not respond."]

The key is familiar. The printed name is "workshop key".
The workshop-room is a familiar thing. Understand "workshop" as workshop-room. The printed name of workshop-room is "workshop".
The workshop-door is a familiar thing. Understand "workshop door" as workshop-door.
The front door is a familiar thing.

The pocket watch is familiar.
The orrery is familiar.
The petal is familiar.
Food is familiar.
The poker is familiar.
The newspaper is familiar.
The time machine is familiar.

[The fuse is familiar.]
The fuse-orrery is familiar. 
The fuse-time-machine is familiar.

The Eloi are a familiar people.
Weena is a familiar woman.
The Morlocks are a familiar people.

Book - Subjects 

experiments are a subject. The printed name is "Wells['] experiments".
her-work is a subject. Understand "work" or "her work" as her-work. The printed name of her-work is "her work".

diagnosis is a subject.
examination is a subject.

future is a subject. The printed name of future is "the future".
time travel is a subject.
[Morlocks are a subject. The printed name of Morlocks is "the Morlocks". Understand "morlock" or "morlocks" as Morlocks. ]

information is a subject.

future-people is a subject.

Book - Watchett

Watchett is a female person.
Watchett is in the Kitchen.
The printed name of Watchett is "Mrs. Watchett". 
The description of Watchett is "Wells['] steadfast aged housekeeper, she has been cleaning his house and cooking his meals for years. If you could steal her away from Wells you would in a heartbeat, but she would never leave him in a million years."

Watchett is major.

Understand "mrs" or "watchett" or "watchet" or "cook" or "maid" or "housekeeper" or "old lady" as Watchett.
[See §17.3. Overriding existing commands - New tokens for ^]

Part - Suggestions 

The ask-suggestions are { Wells, workshop-room, time travel, her-work, self-suggestion }.
The tell-suggestions are { Humboldt }.
[The other-suggestions are { xyz-suggestion, abc-suggestion, yes-no-suggestion }.]

Part - Conversation 

Chapter - Hello

After saying hello to Watchett when the greeting type is explicit: 
	say "[first time]Mrs. Watchett pauses in her work. [only][one of]'Good evening sir,' she replies.[or]'Yes sir?' she replies.[or]'Can I help you sir?' she replies.[at random]"

After saying hello to Watchett when the greeting type is implicit:
	say "Mrs. Watchett pauses briefly before answering. [run paragraph on]"

Chapter - Goodbye

After saying goodbye to Watchett when the farewell type is explicit: 
	say "'You have a good evening, sir.'"
	
After saying goodbye to Watchett when the farewell type is implicit:
	say "Mrs. Watchett continues her work."
	
Chapter - In The Kitchen

Section - Requests - "Ask [someone] for [thing]"

After requesting Watchett for the key: say "'I'm sorry sir, I don't have it.'"

After requesting Watchett for information: say "'I'm afraid you'll have to be more specific, sir.'"

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Watchett about Wells: say "[remove Wells ask suggestion][add experiments ask suggestion]'Always working too hard on his experiments, he is. He probably just needs a bit of a rest.'"

After quizzing Watchett about Humboldt: say "'The doctors has been a friend of Mr. Wells for years. Not as long as you but almost as long.'"

After quizzing Watchett about Watchett: say "[remove self-suggestion ask suggestion]'I[']m really not one to talk about myself,' she says. 'Can I help you in any other way?'"

After quizzing Watchett about the key:
	say "'[key-start] [key-middle] [key-end]'[line break]";
	now watchett-key is true.

After quizzing Watchett about workshop-room: 
	say "[remove workshop-room ask suggestion]";
	say "'I've never been in there, not even to clean. Mr. Wells had the only key to that door.'"

After quizzing Watchett about the workshop-door: 
	say "[remove workshop-door ask suggestion]";
	say "'Locked, always locked. Mr. Wells had the only key.'"

After quizzing Watchett about the front door: say "'Best you warm up by the fire first. Much too cold to be outside the way you're dressed.'"

After quizzing Watchett about the pocket watch: say "'That looks like Mr. Wells['] watch. I'd put it on the desk in the library for when he gets back.'"

After quizzing Watchett about the orrery: say "'Built by Mr. Wells,' she says. 'He's quite the inventor, he is.'"

After quizzing Watchett about the petal: say "'Very pretty, I guess. But you cannot tell much about a flower from a single petal.'"

After quizzing Watchett about food: say "'Still hungry after that meal all of you had?' she says. 'Perhaps a cup of tea to calm your stomach?'" 

After quizzing Watchett about her-work: 
	say "[remove her-work ask suggestion]";
	say "'Just cleaning up after tonight's meal,' she says. 'Should be done soon.'"

After quizzing Watchett about poker:
	if the player has the poker:
		say "'Perhaps you should put that back by the fire where it belongs. Best place for it, I think.' she says.";
	otherwise:
		say "'I think that's in the parlor by the fireplace, sir.'".

After quizzing Watchett about experiments:
	say "[remove experiments ask suggestion]";
	say "'I wouldn't know anything about Mr. Wells['] experiments. He never talked to me about his work. Did all those things in his workshop behind closed doors. Raised a dreadful racket sometimes, I tell you.'"

After quizzing Watchett about time travel:
	say "[remove time travel ask suggestion]";
	say "'I wouldn't know anything about that. Running a house, one day at a time, that's my lot in life.'"

Section - Informing - "Tell [someone] about [thing]"

After informing Watchett about Wells: say "'Very sad,' she says. 'I'm glad the doctor is involved.'"
			
After informing Watchett about Humboldt: 
	say "[remove Humboldt tell suggestion]";
	say "'That's very interesting. I'm sure the doctor knows what he's doing.'"

After informing Watchett about the key: say "'I told Mr. Wells that he should have a copy of that key made for times just like this,' she says, tutting softly to herself." 

After informing Watchett about the orrery: say "'Keeps perfect time,' she says. Nothing like it I've ever seen elsewhere."

After informing Watchett about time travel: say "'That's quite the imagination you have sir. You should consider writing books like that Frenchman Mr. Verne.'"

Section - Imploring - "Ask [someone] for ['text']"

After imploring Watchett for "facts/details/ideas": say "'You'll have to more specific, sir.'"

Section - Showing

After showing noun to Watchett: try quizzing Watchett about noun.

After showing key to Watchett: say "[one of]'Looks like you've found it.'[or]'I knew you'd find it if you looked.'[or]'Good for you, sir.'[at random]"

Chapter - Default Responses

Default ask response for Watchett: 
	say "[one of]'I'm afraid I don't have much to say about that, sir. Anything else I can help you with?'[or]Thinking for a moment, she replies 'I wouldn't know anything about that, sir.'[at random]"

[Default answer response for ]

Default tell response for Watchett: 
	say "[one of]'That's very interesting, sir.'[or]'I'm not sure I understand what you're talking about, sir.'[at random]"

[Default ask-tell response for ]

[Default give response for ]
[Default show response for ]
[Defautl give-show response for ]

Default ask-for response for Watchett: 
	say "'I am afraid I cannot help you with that, sir.'"

[Default yes-no response for ]

[Default response for ]

Part - Key

[See Writing §11.5. Conditions and question ]
watchett-key is a truth state that varies.
watchett-key is false.

To say key-start:
	say "Mr. Wells always kept it on his person.[no line break]".

To say key-middle:
	say "[one of]That's where it still must be.[no line break][or]But it never stayed there for long.[no line break][or]But it was always falling out of his pocket at the drop of a hat.[no line break][or]But he was always losing it.[no line break][at random]".

To say key-end:
	if the player has the key:
		say "Looks like you found it.[no line break]";
	otherwise:
		say "[one of]Perhaps it's somewhere around the house.[no line break][or]The places I'd find it.[no line break][or]Where was the last place you saw Mr. Wells?[no line break][at random]".

Part - Testing

Test ask-w with "a key / a workshop / a workshop door / a front door / a pocket watch / a orrery / a petal / a food / a her work / a poker / purloin poker / a poker / a experiments / a time travel".

Test tell-w with "t wells / t humboldt / t key / t orrery / t time travel".

Test ask-for-w with "ask watchett for key / ask watchett for information".

Test show-w with "show watchett poker / purloin poker / show watchett poker / show watchett pocket watch / show watchett snow".

Test basic-w with "say hi to watchett / ask watchett for key / ask watchett about wells / tell watchett about wells / ask watchett for information / ask watchett for experiments / show watch to watchett".


Book - Humboldt 

Humboldt is a person.
Humboldt is a male.
Humboldt is fixed.
Humboldt is in Woking Street.
The description of Humboldt is "A reputable physician and alienist, he has also known Wells for years. You are confident that his methodical nature, combined with his diagnostic skills, will enable him to determine what ails your friend." [enable him to determine what truth lies at the heart of Wells['] story about time travel. - modify description.]

Humboldt is major.

The printed name of Humboldt is "Dr. Humboldt"

Understand "doctor" or "physician" or "dr" or "psychologist" or "alienist" or "dr humboldt" as Humboldt.

humboldt-should-return is a truth state that varies.
humboldt-should-return is false.

humboldt-endgame-begins is a truth state that varies.
humboldt-endgame-begins is false.

Part - Suggestions

[The ask-suggestions are { self-suggestion, Wells, workshop-room, pocket watch, time travel }.]
[The tell-suggestions are {  }.]
[The other-suggestions are { }.]

Part - Conversation

Chapter - Hello

After saying hello to Humboldt when the greeting type is explicit: [or the greeting type is implicit:]
	say "[Humboldt] returns your greeting and waits expectantly.";
	if the Ending Scene is happening:
		say "[add time machine tell suggestion]";
		say "[add Eloi tell suggestion]";
		say "[add Weena tell suggestion]";
		say "[add Morlocks tell suggestion]";
	if the Opening Scene is happening:
		[say "OPENING SCENE RUNNING."]
		say "[add self-suggestion ask suggestion]";
		say "[add Wells ask suggestion]";
		say "[add workshop-room ask suggestion]";
		say "[add pocket watch ask suggestion]";
		say "[add time travel ask suggestion]".
	
After saying hello to Humboldt when the greeting type is implicit:
	say "Dr. Humboldt [one of]pauses [or]thinks [or]clears his throat [or]stares at you [at random]for a moment before answering. [run paragraph on]";
	if the Ending Scene is happening:
		say "[add time machine tell suggestion]";
		say "[add future tell suggestion]";
		say "[add Eloi tell suggestion]";
		say "[add Weena tell suggestion]";
		say "[add Morlocks tell suggestion]";
	if the Opening Scene is happening:
		say "[add self-suggestion ask suggestion]";
		say "[add Wells ask suggestion]";
		say "[add workshop-room ask suggestion]";
		say "[add pocket watch ask suggestion]";
		say "[add time travel ask suggestion]".

test go-end with "n / test goto-workshop / get in time machine / unlock hinged panel with key / open hinged panel / take time machine fuse / purloin orrery fuse / put orrery fuse in time machine fuse holder / exit / push lever."

Chapter - Goodbye

Chapter - Both Opening & Ending Scenes

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"
	
To say science-fiction: say "'Science fiction if you ask me.'"

After quizzing Humboldt about time travel:
	say "[remove time travel ask suggestion]";
	say "[add future ask suggestion]";
	say "[add Eloi ask suggestion]";
	say "[add Weena ask suggestion]";
	say "[add Morlocks ask suggestion]";
	say "[science-fiction]".
	
After quizzing Humboldt about the future:
	say "[remove future ask suggestion]";
	say "Thinking for a moment, he replies 'In due time.'"

After quizzing Humboldt about the poker: say "'Where did you get that?'"
	
After quizzing Humboldt about Humboldt: 
	say "[remove self-suggestion ask suggestion]";
	say "Dr. Humboldt is much too professional and polite to start rambling on about himself, especially in this sort of situation."

After quizzing Humboldt about player: say "Perhaps you should focus on the situation at hand instead of yourself."
After quizzing Humboldt about Watchett: say "'I think she is in the kitchen.'"
	
After quizzing Humboldt about the newspaper: say "He throws it on the workbench without a second glance. 'I've already read it.'"

Section - Informing - "Tell [someone] about [thing]"	
	
After informing Humboldt about Wells:
	say "Humboldt gives you an incredulous look as he listens to your laymans opinion on Wells's condition."

After informing Humboldt about the time machine:
	try quizzing Humboldt about the second noun.

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing
	
After showing noun to Humboldt: try quizzing Humboldt about noun.
After showing something to Humboldt: say "SHOWING [noun]".
	
Section - Testing
	
Test both-humboldt with "say hello to humboldt / ask humboldt about time travel / ask humboldt about poker / ask humboldt about himself / ask humboldt about watchett / ask humboldt about self / tell humboldt about wells / tell humboldt about workshop / tell humboldt about time machine".

Chapter - Opening Scene Only

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Humboldt about Wells during Opening Scene: 
	say "[remove Wells ask suggestion]";
	say "[add diagnosis ask suggestion]";
	say "[add examination ask suggestion]";
	say "'I don't know enough to make a proper diagnosis right now. I'll know more after we get him to the hospital, calm him down, and do a proper examination.'"
	
After quizzing Humboldt about workshop-room during Opening Scene: 
	say "[remove workshop-room ask suggestion]";
	say "[add key ask suggestion]";
	say "'Never seen the inside of it. I don't think anyone has. Best to ask Mrs. Watchett. She might have a key.'"
	
After quizzing Humboldt about diagnosis during Opening Scene: 
	say "[remove diagnosis ask suggestion]";
	say "'Too early to tell.'"

After quizzing Humboldt about examination during Opening Scene: 
	say "[remove examination ask suggestion]";
	say "'First thing to do is get him to my hospital. Get him admitted and sedated. Probably won't be able to do a proper examination until he's calmed down.'";

After quizzing Humboldt about time machine during Opening Scene:
	say "[remove time machine ask suggestion]"; 
	say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'";

After quizzing Humboldt about pocket watch during Opening Scene:
	say "[remove pocket watch ask suggestion]";
	say "'Looks like Wells['] watch. I[']ll have my hands full with him so why don't you hold onto it until we get back.'"

After quizzing Humboldt about the petal during Opening Scene: 
	say "'You going to find the rest of it so we can convince Wells that his story is nonsense, a figment of his imagination.'"

After quizzing Humboldt about the key during Opening Scene: 
	say "[remove key ask suggestion]";
	say "'You[']ll have to ask Mrs. Watchett about that.'"

To say figment-imagination: say "'Figment of Wells['] imagination I assume.'"

After quizzing Humboldt about Eloi during the Opening Scene:
	say "[remove Eloi ask suggestion]";
	say "[figment-imagination]".

After quizzing Humboldt about Weena during the Opening Scene:
	say "[remove Weena ask suggestion]";
	say "[figment-imagination]".

After quizzing Humboldt about Morlocks during the Opening Scene:
	say "[remove Morlocks ask suggestion]";
	say "[figment-imagination]".
				
Section - Informing - "Tell [someone] about [thing]"

Before informing Humboldt about the workshop-room during the Opening Scene: 
	try quizzing Humboldt about the second noun;
	stop the action.

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing noun to Humboldt during Opening Scene: try quizzing Humboldt about noun.
After showing something to Humboldt during Opening Scene: say "SHOWING [noun]".

Section - Giving
		
Instead of giving something to Humboldt:
	try showing the noun to Humboldt.

Section - Testing

Test open-humboldt with "say hello to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about time machine / ask humboldt about pocket watch / ask humboldt about petal / ask humboldt about key / ask humboldt about eloi / ask humboldt about  weena / ask humboldt about morlocks / show pocket watch to humboldt / show petal to humboldt / show key to humboldt".

Chapter - Ending Scene Only

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Humboldt about Wells during Ending Scene: 
	say "'He's sedated and resting.'"

After quizzing Humboldt about workshop-room during Ending Scene: 
	say "Humboldt looks around the workshop. He examines [one of]some machinery[or]some tools[or]the blackboard equations[or]the blackboard diagrams[or]the workbench[or]the time machine[at random]. '[one of]Interesting[or]Fascinating[or]Hmm[or]That's odd[at random]' is his only comment."

After quizzing Humboldt about diagnosis during Ending Scene: 
	say "'Unless you found some new evidence it doesn't look good for Wells. He still insists he travelled to the year 802,701 A.D.'"

After quizzing Humboldt about examination during Ending Scene: 
	say "'The preliminaries are already completed. I'll write my summary after you tell me what you found here."

After quizzing Humboldt about time machine during Ending Scene:
	say "[remove time machine ask suggestion]";  
	say "[if the time machine is not nowhere]'Outside my area of expertise, I'm afraid.'[otherwise]'Don't see anything remotely like that.'[end if]"

After quizzing Humboldt about pocket watch during Ending Scene: 
	say "'I[']m glad to see that you have held onto Wells['] watch. He was asking about it.'"

After quizzing Humboldt about the petal during Ending Scene: 
	say "'I gave that to you earlier. You were supposed to find the rest of the flower so we could convince Wells that his story was nonsense, a figment of his imagination. Did you find it?'"

After quizzing Humboldt about the key during Ending Scene:
	say "'[one of]I knew you would find it. [or]Mrs. Watchett knew where it was, I bet. [or]Good job. [or]Obviously it[']s the workshop key since we[']re standing in the bloody place. [at random]What have you found?'"

After quizzing Humboldt about the breaker during the Ending Scene:
	say "'Looks like it fits into that contraption Wells has constructed.'"

After quizzing Humboldt about Eloi during the Ending Scene:
	say "[remove Eloi ask suggestion]"; [NO ASK SUGGESTION]
	say "[figment-imagination]".

After quizzing Humboldt about Weena during the Ending Scene:
	say "[remove Weena ask suggestion]"; [NO ASK SUGGESTION]
	say "[figment-imagination]".

After quizzing Humboldt about Morlocks during the Ending Scene:
	say "[remove Morlocks ask suggestion]"; [NO ASK SUGGESTION]
	say "[figment-imagination]".

After quizzing Humboldt about the fuse-orrery during the Ending Scene: 
	say "Humbold briefly examines the fuse, turning it over in his hands, before returning it to you." [BURNT OUT vs. WORKING ?]

Section - Informing - "Tell [someone] about [thing]"

After informing Humboldt about the petal during the Ending Scene: 
	say "'I know all that. But did you find the rest of the flower?'"

After informing Humboldt about the time machine during the Ending Scene:
	say "'Impressive.'[no line break] [first time] Humboldt glances over the product of Wells['] experiments. 'If we could only prove it does what Wells say it's designed to do then our problems would be solved.[no line break][only] He turns back towards you. 'But what about finding that flower that goes with the petal I gave you earlier?'"

[Before informing Humboldt about the workshop-room during the Ending Scene: 
	try quizzing Humboldt about the second noun;
	stop the action.]

After informing Humboldt about the workshop-room during the Ending Scene: 
	say "Humboldt listens dispassionately as you enthusiastically point out various areas of the workshop, a nonplussed look on his face."

After informing Humboldt about the breaker during the Ending Scene: 
	say "Humboldt nods slightly as you explain how the fuse is necessary for the time machine[']s operation."

After informing Humboldt about the pocket watch during the Ending Scene: 
	say "Humboldt nods slightly as you show him Wells['] pocket watch."
	
Instead of informing Humboldt about the key during the Ending Scene:
	try quizzing Humboldt about the second noun.

Section - Informing - With Patience Rules

[Modify [second noun] based on what you tell him about, maybe add more descriptive text like replacing "shaft" with "shaft and the underground tunnels"]
To say reply-intro: 
	say "Humboldt listens to you talk about [second noun]".

To say reply-response:
	if the patience of Humboldt is:
		-- tolerant-1:
			say ". Nodding his head as you speak, he waits paitiently until you've finished. 'But what about what I asked you to do?'";
		-- tolerant-2:
			say ", but it's obvious he's already heard something similar from Wells. 'Obviously you were able to get into the workshop. Did you find anything?'";
		-- frustrated-1:
			say ", waiting in frustration for you to finish. 'But any luck finding the rest of that flower?'";
		-- frustrated-2:
			say ". He stares at you, his annoyance clearly visible on his face as you finish. He looks around the room, his patience obviously exhausted, not knowing what to say.";
		-- angry-1:
			let current location be the location of Humboldt;
			say " but cuts you off before you're finished. 'I know you want to help Wells, we both do. But repeating his delusional nonsense without any proof won't convince me no matter how many times I hear it. In fact, it makes me doubt your own sanity. Good evening.'[paragraph break]Humboldt turns and storms out of [the current location].";
			now Gernsback is nowhere;
			now Humboldt is nowhere.

After informing Humboldt about time travel during the Ending Scene:
	[say "Humboldt listens as you try to expain your time travel experience in the future as best you can with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.

After informing Humboldt about the future during the Ending Scene:
	say "[remove future tell suggestion]";
	[say "Humboldt listens as you recount your experiences in 802,701 A.D. with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.

After informing Humboldt about Eloi during the Ending Scene:
	say "[remove Eloi tell suggestion]";
	[say "Humboldt listens as you recount your experience with the Eloi with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.

After informing Humboldt about Weena during the Ending Scene:
	say "[remove Weena tell suggestion]";
	[say "Humboldt listens to you recount your experience with Weena with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.

After informing Humboldt about Morlocks during the Ending Scene:
	say "[remove Morlocks tell suggestion]";
	[say "Humboldt listens to you recount your experience with the Morlocks with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.
	
After informing Humboldt about River Bank during the Ending Scene:
	[say "Humboldt listens to you recount your experience at the river with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.

After informing Humboldt about sphinx during the Ending Scene:
	[say "Humboldt listens to you recount your description of the clearing and the sphinx with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.
	
After informing Humboldt about dome during the Ending Scene:
	[say "Humboldt listens to you recount your description of the domed building with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.
	
After informing Humboldt about shaft during the Ending Scene:
	[say "Humboldt listens to you recount your description of the shaft and tunnels with a [patience of Humboldt] look on his face.";]
	say "[reply-intro][reply-response]";
	follow Patience rules.

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing noun to Humboldt during Ending Scene: try quizzing Humboldt about noun. 
After showing something to Humboldt during Ending Scene: say "SHOWING [noun]".

Section - Testing

Test end-humboldt with "say hello to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about time machine / ask humboldt about pocket watch / ask humboldt about petal / ask humboldt about key / ask humboldt about fuse / ask humboldt about eloi / ask humboldt about  weena / ask humboldt about morlocks / show poker to humboldt / show pocket watch to humboldt / show petal to humboldt / tell humboldt about petal / tell humboldt about time machine / tell humboldt about workshop / tell humboldt about fuse".

Test patience-humboldt with "say hello to humboldt / tell humboldt about time travel / tell humboldt about future / tell humboldt about eloi / tell humboldt about weena / tell humboldt about morlocks / tell humboldt about river / tell humboldt about sphinx / tell humboldt about dome / tell humboldt about shaft / tell humboldt about tunnels".

Chapter - Default Responses

Default ask response for Humboldt:
	say "Thinking for a moment, he replies 'I don[']t believe I[']ve got an opinion about that.'"
	
[Default answer response for ]

Default tell response for Humboldt:
	say "'That's very interesting...'"

[Default ask-tell response for ]

[Default give response for ]
[Default show response for ]
[Defautl give-show response for ]

Default ask-for response for Humboldt:
	say "'I[']m afraid I can[']t help you with that.'"

[Default yes-no response for ]

[Default response for ]

Part - Testing

Test basic-humboldt with "say hi to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination".

Part - Patience

[Writing §4.9. Using new kinds of value in properties]
patience is a kind of a value.

Humboldt has patience.

Patience rules is a rulebook. [Writing §19. Rulebooks - §19.2, §19.3, §19.8]

[The patiences are accepting, tolerant, impatient, frustrated, angry.]
The patiences are tolerant-1, tolerant-2, frustrated-1, frustrated-2, angry-1.

Humboldt is tolerant-1.
	
A patience rule:
	if the patience of Humboldt is:
		-- tolerant-1:
			now the patience of Humboldt is tolerant-2;
		-- tolerant-2:
			now the patience of Humboldt is frustrated-1;
		-- frustrated-1:
			now the patience of Humboldt is frustrated-2;
		-- frustrated-2:
			now the patience of Humboldt is angry-1;
		-- angry-1:
			now endgame-failure is true.

			
Book - Gernsback
[https://bit.ly/3rYUPl8]

Gernsback is a person.
Gernsback is a male.
Gernsback is fixed.
Gernsback is in the Library.

The description of Gernsback is "The perfect picture of Victorian masculinity and success in his double breasted lounge suit, his tailored attire offsets the somewhat brutish features below a high forehead and thinning hair styled in a combover, his only concession to vanity. It's said around town that his piercing gaze misses no chance to increase his family fortunes. He is reading a book and smoking a cigar."

Gernsback is scenery. [This prevents "You can see Gernsback here." being printed out in room descriptions.]
Gernsback is major.

Part - Suggestions 

Part - Conversation 

Chapter - Hello

After saying hello to Gernsback when the greeting type is explicit: 
	say "[first time]Gernsback marks his place in his book and looks up at you. [only][one of]'Evening Filby.'[or]'How can I help you Filby?[or]'Filby.'[at random]";
	say "[add wells-book ask suggestion]";
	say "[add workshop-room ask suggestion]";
	say "[add key ask suggestion]";
	say "[add Wells ask suggestion]";
	say "[add Watchett ask suggestion]";
	say "[add self-suggestion ask suggestion]";
	say "[add Wells tell suggestion]";

After saying hello to Gernsback when the greeting type is implicit:
	say "Gernsback pauses in his reading and marks his place in his book before answering. [run paragraph on]";
	say "[first time]Gernsback marks his place in his book and looks up at you. [only][one of]'Evening Filby.'[or]'How can I help you Filby?[or]'Filby.'[at random]";
	say "[add wells-book ask suggestion]";
	say "[add workshop-room ask suggestion]";
	say "[add key ask suggestion]";
	say "[add Wells ask suggestion]";
	say "[add Watchett ask suggestion]";
	say "[add self-suggestion ask suggestion]";
	say "[add Wells tell suggestion]";

Chapter - Goodbye

After saying goodbye to Gernsback when the farewell type is explicit: 
	say "'Mmph...Let me know if I can help in any way,' he says, going back to his reading.";
	
After saying goodbye to Gernsback when the farewell type is implicit:
	say "Gernsback watches you head into the[if the room gone to is the Parlor] parlor[otherwise] entryway[end if] before returning to his book.[line break]";

Chapter - In The Library

Section - Requests - "Ask [someone] for [thing]"

After requesting Gernsback for the newspaper: 
	say "'I don[']t have it.'"

Does the player mean requesting Gernsback for the wells-book: it is very likely.
Does the player mean requesting Gernsback for the library-books: it is very unlikely.

After requesting Gernsback for the wells-book: say "'Plenty of other books in the library for you to look at.'"

After requesting Gernsback for the library-books:
	say "[first time]Without pausing his reading, he motions towards the shelves with a wave of his hand. [only][one of]'I would think you would want to pick out something for yourself.'[or]'Plenty to choose from.'[or]'I'm sure you can find something that interests you on the shelves.'[in random order]"

After requesting Gernsback for the box of matches:
	say "'Of course, how silly of me to forget. Keep them.'";
	now the player has box of matches.


Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Gernsback about Wells:
	say "[remove Wells ask suggestion]";
	say "'[one of]Sad. If I had known it would have led to this I never would have given him encouragement.'[or]'The doctor is probably in a better position to answer that question.'[in random order]"

After quizzing Gernsback about Humboldt:
	say "'[one of]Smart man. A bit full of himself though. Not as practical as you and me.'[or]'Best man in his field, they say.'[in random order]"

After quizzing Gernsback about Watchett: 
	say "[remove Watchett ask suggestion]";
	say "'I believe she's still in the kitchen.'"
	
After quizzing Gernsback about Gernsback: 
	say "[remove self-suggestion ask suggestion]";
	say "[one of]'Business is good. Having a few labor problems but profits are up.'[or]'Never really felt comfortable talking about myself. Rather stay focused on business.'[or]'Not much more to say.'[stopping]"

After quizzing Gernsback about Weena: 
	say "'Sounds like a bit of a dollymop if you ask me. Bit of wishful thinking on Wells['] part, if you know what I mean.'" [+Eloi, Morlocks as part of "about"?]

After quizzing Gernsback about Eloi: 
	say "'I only wish it were true. Group like that, probably make excellent factory workers. Sounds like they don[']t need to get paid. Docile, don[']t cause troubles. Could setup a factory in the future and make a mint.'"

After quizzing Gernsback about Morlocks: 
	say "Pretty handy bunch. Sound like those chaps up at the mill who keep the machines running.'";

Understand "his-work" as experiments.
After quizzing Gernsback about experiments: 
	say "'Told Wells that if he stuck to practical endeavors, like trying to figure out how to increase the yields of my Derbyshire looms, I'd pay him a tidy sum. Enough to fund a lifetime of crazy ideas.'"
	
After quizzing Gernsback about time travel:
	say "'Traveling one way through time is good enough for me.' He turns to the finance page in the paper. 'Though I must admit I wouldn't mind being able to travel a week back to the Exchange after finding out how the market's done today. Know what I mean?' "
	
After quizzing Gernsback about the time machine: 
	say "'I've seen bits and pieces but I can't say I've really understood what I was seeing. I've got my own 'Morlocks' at the mills for things like that.' He chuckles to himself."

After quizzing Gernsback about orrery: 
	say "'Only practical thing Wells has made up until now. Tried to get him to patent and sell it. Though what use knowing what the Man in the Moon is up to is beyond me.'."

After quizzing Gernsback about workshop-room: 
	say "[remove workshop-room ask suggestion]";
	say "'Only been inside a couple of times with Wells. Tools and materials and such. Terrible mess.'"

After quizzing Gernsback about box of matches: 
	say "Gernsback briefly opens the box of matches. 'Only [the number of s-matches in words] left. I[']ll have to stop by the divan on the way home and get some more.'"

After quizzing Gernsback about pocket watch: say "'That looks like Wells['] watch.'"

After quizzing Gernsback about newspaper: 
	say "'It[']s there in the other room if you want to read it.'"

After quizzing Gernsback about key:
	say "[remove key ask suggestion]";
	if the player has the key:
		if the workshop is visited:
			say "'What did you find?'";
		otherwise:
			say "'Well done. Let me know what you find.'";
	otherwise:
		say "'Probably plenty of keys around here. Mrs. Watchett would probably know where they are.'"

ask-about-gernsback-book is a truth state that varies.
ask-about-gernsback-book is false.
	
Does the player mean quizzing Gernsback about the wells-book: it is very likely.
Does the player mean quizzing Gernsback about the library-books: it is very unlikely.

[TBD - Fix Gernsback responses about wells-book]
After quizzing Gernsback about wells-book:
	say "[first time]Gernsback marks his place with a finger and glances at the spine. [no line break][only][one of]'The title pretty much says it all if the rest of the stories in this book are like the one I'm reading.[no line break][or]'Based on the story I'm reading I'd say the title is pretty accurate.[no line break][or]'Scientific romance I think they call it. Like some of the stuff I read as a boy, Verne and Doyle you know, if this story is any indication.[no line break][in random order][first time] Hope the chap who wrote it made some money off of it, unlike our poor friend' He nods his head in the direction of the workshop and continues reading.[only]"

After quizzing Gernsback about story-being-read:
	if ask-about-gernsback-book is false:
		say "[remove wells-book ask suggestion]";
		choose a random row from Table of Gernsback Book;
		say "'[one of]Fascinating[or]Interesting[or]Strange[or]Intriguing[or]Engaging[or]Entertaining[or]Amusing[at random] story. Called ['][Title entry].['] About [Comment entry] Never heard of the author though.'";
		now ask-about-gernsback-book is true;
	otherwise:
		say "'I just told you about it.'".

Table of Gernsback Book
Title	Comment
"The Island of Doctor Moreau"	"an exiled scientist on an island turning animals into people. Don’t really understand the reasons why. Doesn’t seem to be money in it unless you can turn them into domestics."
"The Invisible Man"	"an albino scientist who makes himself invisible. Can’t reverse the process and goes a bit crazy. Shot dead before he can turn himself back. Probably check up on my competitors if I were invisible instead of wasting time terrorizing the nation. No money in it."
"The War of the Worlds"	"an invasion from Mars by slugs in some sort of walking machines with three legs, if you can believe that. Wouldn’t mind having the patent on those, I tell you."
"When the Sleeper Wakes"	"a man who sleeps for two hundred years. Wakes up to find he’s become the richest man in the world. Wouldn’t mind that happening to me. Richest man in the world, not the sleeping part."
"The First Men in the Moon"	"a scientist chap like Wells who invents some of anti-gravity material. Uses it to travel to the Moon instead of making a fortune off of it, if you can believe that."
	
After quizzing Gernsback about library-books:
	say "Looking around at the shelves Gernsback says 'Quite a nice collection, though a lot of the stuff is over my head.'"

Section - Informing - "Tell [someone] about [thing]"

To say dont-know:
	say "'Don't know what you're talking about.'" 

To say fascinating-but:
	say "'Fascinating. But I don't see how this helps Wells.'"

After informing Gernsback about Wells:
	say "[remove Wells tell suggestion]";
	say "'I'm not a medical man, but I think the best thing you could do as his attorney is have him committed. Protect him from himself. Only my opinion mind you.'";

After informing Gernsback about Humboldt: 
	say "'He'll be back soon. Tell us what he's found and we'll decide what to do then.'";

After informing Gernsback about Watchett: 
	say "'Wonderful meal that was, as always.  That woman's a treasure. Don't know where Wells found her.'";

After informing Gernsback about time machine:
	if time machine has been seen: 
		say "'Fascinating. But I don't see how this can help Wells if it doesn't actually work.'"; 
	otherwise:
		say "'We'll never know for sure unless you find a way into Wells' workshop.'";

After informing Gernsback about orrery:
	if the orrery has been seen:
		say "[fascinating-but]";
	otherwise:
		say "'I think you'll find what you're looking for in the next room.'";
		
Before informing Gernsback about fuse-orrery:
	if the player does not have fuse-orrery:
		say "You can't see any such thing.";
		stop the action.
	
After informing Gernsback about fuse-orrery:
	if fuse-orrery has been seen: 
		say "[fascinating-but]";
	otherwise:
		say "[dont-know]";

Before informing Gernsback about fuse-time-machine:
	if fuse-time-machine has not been seen:
		say "You can't see any such thing.";
		stop the action.

gernsback-shows-fuse is a truth state that varies.
gernsback-shows-fuse is false.
	
After informing Gernsback about fuse-time-machine:
	if fuse-time-machine has been seen:
		[say "[fascinating-but]";]
		now gernsback-shows-fuse is true;
	otherwise:
		say "[dont-know]";

After informing Gernsback about workshop-room:
	if the workshop is visited:
		say "'What did you find?'";
	otherwise:
		say "'Well done. Let me know what you find.'";

After informing Gernsback about key: 
	if the player has the key: 
		if the workshop is visited:
			say "'What did you find?'";
		otherwise:
			say "'Well done. Let me know what you find.'";
	otherwise:
		say "'The doctor has the right idea. If there's a key to get into that workshop Mrs. Watchett might have a good idea where it might be.'";

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing noun to Gernsback: try informing Gernsback about noun.

Chapter - Default Responses

Default ask response for Gernsback:
	say "'I don't know anything about that.'"

Default tell response for Gernsback:
	say "'That's very interesting...'";

[Default ask-tell response for Gernsback:]
[Default give response for Gernsback:]
[Default show response for Gernsback:]
[Default give-show response for Gernsback:]

Default ask-for response for Gernsback:
	say "'I[']m afraid I can[']t help you with that.'"

[Default yes-no response for Gernsback:]
[Default response for Gernsback:]
	
Section - Commands To Gernsback

Instead of asking Gernsback to try going somewhere: say "'Maybe after I finish this.'"

Part - Testing
	
Test g-hello with "say hello to gernsback / say goodbye to gernsback / ask gernsback about wells / north."

Test g-convo with "test g-req / test g-quiz / test g-tell."
	
Test g-req with "ask gernsback for newspaper / ask gernsback for book / ask gernsback for box of matches / ask gernsback for cigar."
	
Test g-quiz with "ask gernsback about wells / ask gernsback about humboldt / ask gernsback about watchett / ask gernsback about weena / ask gernsback about eloi / ask gernsback about morlocks / ask gernsback about experiments / ask gernsback about his-work / ask gernsback about time travel / ask gernsback about time machine / ask gernsback about orrery / ask gernsback about workshop-room / ask gernsback about box of matches / ask gernsback about cigar / ask gernsback about  pocket watch / ask gernsback about petal / ask gernsback about key / ask gernsback about newspaper / ask gernsback about book."

[The game must be restarted before running each of these tests]

Test go-gernsback with "go north / go north / go west."
		
Test g-start-tell with "go-gernsback / tell gernsback about wells / tell gernsback about humboldt / tell gernsback about watchett / tell gernsback about weena / tell gernsback about eloi / tell gernsback about morlocks / tell gernsback about time machine / tell gernsback about orrery / tell gernsback about breaker / tell gernsback about fuse / tell gernsback about experiments / tell gernsback about time travel / tell gernsback about workshop-room / tell gernsback about petal / tell gernsback about key."

Test g-end-tell with "test xpl-802701 / exit / test g-start-tell."

Test g-time with "test go-gernsback / tell gernsback about time machine / go east / purloin key / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about time machine."

Test g-orrery with "test go-gernsback / tell gernsback about orrery / go north / go south / tell gernsback about orrery."

Test g-fuse-orrery with "test go-gernsback / tell gernsback about fuse / tell gernsback about orrery fuse / tell gernsback about fuse-orrery / go north / slide right panel / take orrery fuse / go south / tell gernsback about fuse / tell gernsback about orrery fuse / tell gernsback about fuse-orrery."
	
Test g-fuse-time with "test go-gernsback / tell gernsback about fuse / tell gernsback about time machine fuse / tell gernsback about fuse-time-machine / test see-fuse-time / tell gernsback about fuse / tell gernsback about time machine fuse / tell gernsback about fuse-time-machine."
Test see-fuse-time with "go east / purloin key / unlock workshop door with key / go north / flip switch / enter time machine / unlock hinged panel with key / open hinged panel / examine time machine fuse holder / exit / go south / go west."

Test g-blue with "test go-gernsback / go east / purloin key / unlock workshop door with key / go north / flip switch / go south / go west."

Test g-work with "test go-gernsback / tell gernsback about workshop / tell gernsback about workshop-room / go east / purloin key / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about workshop / tell gernsback about workshop-room."

Test g-key with "test go-gernsback / tell gernsback about key / purloin key / tell gernsback about key / go east / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about key."
	
Test g-topics with "test go-gernsback / say hello to gernsback / ask gernsback about book / ask gernsback about cigar / ask gernsback about workshop / ask gernsback about key / ask gernsback about wells / ask gernsback about watchett / tell gernsback about wells / ask gernsback about himself / ask gernsback about gernsback."



Book - Eloi

The Eloi are people. "[if location of Eloi is River Bank][eloi-initial-appearance][end if]"

To say eloi-initial-appearance:
	say "[if the player is in the River Bank for more than the first time]A few of the Eloi gather around you.[otherwise]A small group of individuals—twenty or thirty by your count—are spread out along this section of the river bank, involved in a variety of activities. Some are swimming in the shallows, others are resting on the river bank, a few gather flowers or fruit, and, to your horror, a few are involved in prurient matters in the shadows of nearby bushes. These must be the Eloi from Wells['] story.[paragraph break]Noticing your presence, a few of the Eloi gather around you.[end if]" 

To say eloi-in-clearing:
	say "One of the Eloi points at the circular well and cover and back at the watch in your hands."

The indefinite article is "the".
The Eloi are in the River Bank.
The Eloi are fixed.
The Eloi are major.

The description of the Eloi is "All of the Eloi are slight and short, about four feet tall. All are dressed in the same type of manufactured tunic, belted at the waist, and wearing buskins on their feet. The homogeneity of their features, their build, and their dress make it hard to distinguish one from the other."

eloi-couples are scenery in the River.
The description of eloi-couples are "Best to focus on the task at hand, which is finding Weena."
Understand "couples" as eloi-couples.

Part - Suggestions 

Part - Conversation 

Chapter - Hello

Chapter - Goodbye

Chapter - River Bank

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing the Eloi about Morlocks:
	say "The Eloi within earshot glance at one another at the word 'Morlocks,' but, after a brief fearful silence, they continue chattering among themselves."

ask-about-weena is a truth state that varies.
ask-about-weena is false.

asked-about-weena is a number that varies.
asked-about-weena is 0.

To say weena-needs-rescuing:
	if asked-about-weena is 0:
		say "One of the Eloi points at the metal cover of the well and says a single word - 'Weena.'";
	otherwise if asked-about-weena is 1:
		say "The Eloi spokesperson points at the metal cover of the well a second time and says the words 'Weena...Morlocks' followed by a grabbing motion with both hands.";
	otherwise if asked-about-weena is 2:
		say "The look of frustration clearly visible in their face, the Eloi pleads with you one last time. 'Rescue Weena.'";
	otherwise:
		say "Obvious frustrated with your lack of understanding, the Eloi says something to the group and they quickly disappear into the forest.";
		now the Eloi are nowhere;
	now asked-about-weena is asked-about-weena + 1.

After quizzing the Eloi about Weena:
	if show-eloi-watch is true:
		say "[weena-needs-rescuing]";
	otherwise:
		now ask-about-weena is true;
		try showing the pocket watch to the Eloi.

To say eloi-say-morlocks:
	say "One of the Eloi looks apprehensively at the [second noun] and says a single word - 'Morlocks.'"

After quizzing the Eloi about the circular well:
	say "[eloi-say-morlocks]".

After quizzing the Eloi about metal cover:
	say "[eloi-say-morlocks]".

Section - Informing - "Tell [someone] about [thing]"

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing the pocket watch to the Eloi:
	if the player is in the River Bank:
		say "Suddenly, all the Eloi stop their chattering when you bring out the pocket watch[if ask-about-weena is true] and mention Weena[end if]. One of them takes the pocket watch from you and turns it over in his hands before handing it to another Eloi, who examines it as well. This Eloi hands the pocket watch back to you, looks at the group, and nods briefly.[paragraph break]Several of the Eloi grab you gently and walk with you to the northwest.";
		now clearing-print-description is false;
		now the Eloi are in the Clearing;
		now the player is in the Clearing;
		now show-eloi-watch is true;
		say "[eloi-in-clearing]";
		now clearing-print-description is true;
	otherwise if the player is in the Clearing:
		try quizzing the Eloi about Weena. [Should use this to give better explanation of Weena's situation and that player is supposed to rescue her.]

Section - Giving
		
Instead of giving the pocket watch to the Eloi:
	try showing the pocket watch to the Eloi.

Chapter - Default Responses

[Default ask response for Eloi:] 
[Default answer response for Eloi:]
[Default tell response for Eloi:]
	
Default ask-tell response for Eloi:
	say "Try as you might you can[']t make the Eloi understand what you are saying. Some of them laugh at your strange pronunciation while others coo and chatter among themselves quietly. Others become bored and drift off into other pursuits, while still others walk over to see the new oddity." 
	
Default give response for Eloi:
	say "You hand the [noun] to one of the Eloi. Puzzled, they look at it a for a few seconds before passing it around the group. Finally, it's returned to you." 
		
Default show response for Eloi:
	say "The group looks at the [noun] with various degrees of puzzlement on their faces but no recognition of the [noun]'s function."	
	
[Default give-show response for Eloi:]
[Default ask-for response for Eloi:]
[Default yes-no response for Eloi:]
[Default response for Eloi:]


Book - Weena

Weena is a person.
Weena is in the Holding Cell. [nowhere.]
Weena is fixed.
Weena is major.
The description of Weena is "[if the River Bank is visited]Slightly taller than the other Eloi, but dressed as they are and with the same similarity of features and build, t[otherwise]Slight, just over four feet tall, and dressed in some type of manufactured tunic, belted at the waist, and wearing buskins on her feet, t[end if]his is clearly the girl Wells described." 

Understand "girl" or "features" as Weena.

weena-tunic is a thing.
weena-tunic is part of Weena.
The printed name of weena-tunic is "Weena's tunic".

The description of weena-tunic is "A dense weave of cottoney fibers,[first time] obviously machine made, and[only] cinched at the waist."

Understand "tunic" or "dress" or "weena's tunic" as weena-tunic. 

Part - Suggestions 

Part - Conversation 

Chapter - Hello

Chapter - Goodbye

Chapter - River Bank

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"

Section - Informing - "Tell [someone] about [thing]"

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

Instead of showing the pocket watch to Weena:
	say "She cocks her head and smiles back at you, waiting."

Instead of showing the petal to Weena:
	if Weena is in the Year-802701-Outside:
		say "Weena looks at the petal in your hand. Reaching into her hair, she removes a single flower and hands it to you before running off.";
		now the player is carrying the flower;
		reset the interlocutor;
		now Weena is nowhere;
	otherwise:
		say "Given the circumstances, Weena looks at the petal, but is too terrified right now to react appropriately.";
		reset the interlocutor.
		
Instead of showing the tunic to Weena:
	say "Weena glances at the tunic and then at her own clothes but says nothing."

Section - Giving

Instead of giving the pocket watch to Weena:
	say "She looks at the pocket watch, smiles, and then returns it to you."

Instead of giving the petal to Weena: try showing the petal to Weena.

Instead of giving the tunic to Weena:
	say "You hand the tunic to Weena. Puzzled, she compares it her own clothing, before returning the tunic to you [if the player has the poker]and pointing to the poker in your hand.[otherwise].[end if]"

Chapter - Default Responses

[Default ask response for Weena:] 
[Default answer response for Weena:]
[Default tell response for Weena:]

Default ask-tell response for Weena:
	say "Try as you might you can't make Weena understand what you are talking about. At times she laughs at your strange pronunciations."

To say default-weena-give-response:
	if Weena is in the Year-802701-Underground:
		say "You hand the [noun] to Weena. Puzzled, she looks at it a for a few seconds and, unable to discern its purpose, returns it to you.";
	otherwise if Weena is in the Year-802701-Outside:
		say "You hand the [noun] to Weena. Puzzled, she looks at it a for a few seconds and, unable to discern its purpose, passes it around the small group gathered until the [noun] is returned to you." 

Default give response for Weena:
	say "[default-weena-give-response]".

Default show response for Weena:
	say "Weena looks at the [noun] with a degree of puzzlement on her face but no recognition of the [noun]'s function."

[Default give-show response for Weena:]
[Default ask-for response for Weena:]
[Default yes-no response for Weena:]
[Default response for Weena:]

Part - Pushing Weena

To say immovable-weena:
	say "She obviously wants to go but is too terrified to move without some sort of light to protect you both."

Instead of switching on Weena: say "[immovable-weena]" [for >push Weena.]

Instead of pulling Weena: say "[immovable-weena]" [for >pull Weena.]

Check the player pushing Weena to (this is the push weena rule):
	if the noun is not pushable between rooms:
		say "[immovable-weena]"; [for >push weena north.]
 	stop the action.

Instead of asking Weena to try going somewhere: say "[immovable-weena]" [for >weena, go north.]


Book - Morlocks

morlock-placeholder is a thing.
morlock-placeholder is scenery.
The description of morlock-placeholder is "The pallid skin, luminous eyes, and hunched posture of these pale, ape-like creatures attacking you engenders a visceral reaction of horror and disgust in you."

morlock-placeholder is a backdrop.
morlock-placeholder is in the Year-802701-Underground.

The printed name of morlock-placeholder is "the Morlocks".

Understand "morlocks" or "morlock" or "figures" as morlock-placeholder.

Book - Wells

Wells is a person. [in Woking Street.]
Wells is undescribed.
Wells is in the ambulance.

Instead of examining Wells: say "Your last glimpse of your friend was so unlike his usual composed and methodical self that it was like seeing another person entirely. You want to believe his story but without proof or witnesses you don't know what to think."

After saying hello to Wells when the greeting type is explicit or the greeting type is implicit: 
	say "[default-wells-response]".

Part - Rescuing

Understand "save [someone]" as rescuing.

Rescuing is an action applying to one visible thing.
Understand "rescue [someone]" as rescuing.

Instead of rescuing Wells: try entering ambulance.
Instead of rescuing someone: say "It does not look like [the noun] is in need of any rescuing. But the thought is nice."

Part - Default Responses

To say default-wells-response: say "Wells is being held inside the ambulance and can't hear you."

[Default ask response for Wells: ]
[Default answer response for ]
[Default tell response for Wells: ]
[Default ask-tell response for Wells: ]
[Default give response for Wells: ]
[Default show response for Wells: ]
[Default give-show response for Wells: ]
[Default ask-for response for Wells: ]
[Default yes-no response for Wells: ]

Default response for Wells:
	say "[default-wells-response]".


Book - Orderlies

The orderlies are people in the ambulance.
The orderlies are undescribed.
The description of the orderlies is "They're out of sight, inside the ambulance with Wells but, from what you remember, the two men were entirely professional, stronger than they looked, and had no trouble getting Wells into the ambulance against his will."
Understand "attendant" or "attendants" or "orderly" as orderlies.

Instead of taking the orderlies: say "Given the ease with which they got Wells into the ambulance against his will, you chance of overpowering even one of them against his will is slight. Best stick to the intellectual pursuits you're known for."

After saying hello to the orderlies when the greeting type is explicit or the greeting type is implicit: 
	say "If they both weren't out of sight in the ambulance you could." 

Part - Default Responses

To say default-orderlies-response: say "The orderlies are inside the ambulance and can't hear you."

[Default ask response for orderlies: ]
[Default answer response for orderlies: ]
[Default tell response for orderlies: ]
[Default ask-tell response for orderlies: ]
[Default give response for orderlies: ]
[Default show response for orderlies: ]
[Defautl give-show response for orderlies: ]
[Default ask-for response for orderlies: ]
[Default yes-no response for orderlies: ]

Default response for orderlies: 
	say "[default-orderlies-response]".


Book - Driver

The driver is a person.
The driver is a male.
The driver is fixed.
The driver is undescribed.
The driver is in Woking Street.
The description of the driver is "Trying to stay warm in the front of the ambulance, the driver waits for Humboldt to give him the signal to get going."

After saying hello to the driver when the greeting type is explicit or the greeting type is implicit: 
	say "[default-driver-response]".

To say default-driver-response: say "The driver nods silently in your direction."

Default ask response for driver: say "'I'm just a driver, sir. I'm sure the doctor there's the one who could aswer that for you.'"

[Default answer response for driver: ]

Default tell response for driver: say "'Fascinating, sir. I'm sure the doctor would be might interested to hear more about that.'"

[Default ask-tell response for driver: ]
[Default give response for driver: ]
[Default show response for driver: ]

Default give-show response for driver: say "'Very nice, sir. I've got one like it that was me granddads. I'd hold on to that.'"

[Default ask-for response for driver: ]
[Default yes-no response for driver: ]

Default response for driver: 
	say "[default-driver-response]".

Volume - Things

Book - Fire
[This code came from "The Cow Exonerated" example in Chapter 10.8 - Fire.]
[Currently it is unmodified]

Part - Simple Burning

Understand the commands "light" and "burn" as something new.

Understand "burn [something] with [strikable-match]" as burning it with. 
Understand "burn [something] with [something preferably held]" as burning it with. Burning it with is an action applying to one thing and one carried thing.

Understand the command "light" as "burn".

A thing can be flammable or impervious. A thing is usually impervious.

Check burning something with something (this is the burn only with flaming matches rule):
	if the second noun is not a strikable-match, say "You can only light things with matches." instead;
	if the second noun is not flaming, say "[The second noun] needs to be burning first." instead.

Check burning something with something (this is the burn only flammable things rule):
	if the noun is impervious, say "[The noun] cannot be burned." instead.
[
Check burning something with something (this is the burn only things not held rule):
	say "[one of]It occurs to you to set down [the noun] before burning, just for safety's sake. [or]Again, you decide to put down [the noun] prior to burning. [or]You try setting down [the noun] as usual. [stopping][run paragraph on]";
	silently try the player dropping the noun;
	if player encloses the noun, stop the action.
]
[Remove or modify Carry/Report to allow newspaper to be used as a torch; give burning newspaper a duration]
Carry out burning something with something (this is the simplistic burning rule):
	now the noun is nowhere.

Report burning something with something:
	say "You burn up [the noun]."

Rule for implicitly taking the second noun while burning something with something which is not a strikable-match:
	[say "You can only light things with matches.";]
	if the second noun is not a strikable-match:
		if the second noun is the fire: 
			say "The newspaper ignites and is quickly reduced to ashes.";
			now the newspaper is nowhere;
		otherwise: 
			say "You can only light things with matches.";
	stop the action.

Part - Matches

A strikable-match is a kind of thing.
The plural of strikable-match is s-matches.

A strikable-match has a number called duration.
The duration of a strikable-match is usually 3.

Rule for printing the name of a strikable-match: say "match".
Rule for printing the plural name of a strikable-match: say "matches".

Understand "match" as strikable-match. 
Understand "matches" as strikable-match.

Flame-state is a kind of value.
The flame-states are burnt, flaming, and new.
Understand "burning" or "lit" as flaming.
Understand "unused" as new.

A strikable-match has a flame-state. A strikable-match is usually new.
Understand the flame-state property as describing a strikable-match.

Before printing the name of a strikable-match while asking which do you mean: say "[flame-state] ".
Before printing the name of a strikable-match while taking inventory: say "[flame-state] ".
Before printing the name of a strikable-match while clarifying the parser's choice of something: if not taking inventory, say "[flame-state] ".

After printing the name of a strikable-match (called special-target) while clarifying the parser's choice of something:
	if the player carries the special-target:
		say " you're carrying";
	otherwise if the special-target is in the location:
		say " on the ground";
	otherwise:
		say " [if the holder of the special-target is a container]in[otherwise]on[end if] [the holder of the special-target]".

Understand "strike [something]" as attacking.
Understand "strike [strikable-match]" as striking. Striking is an action applying to one carried thing.
Understand "burn [strikable-match]" as striking.
	
Does the player mean striking a new strikable-match: it is very likely.
Does the player mean striking a burnt strikable-match: it is unlikely.
	
Check striking a strikable-match (this is the strike only new matches rule):
	if the noun is burnt:
		say "[The noun] has already burnt down and cannot be relit." instead;
	if the noun is flaming:
		say "[The noun] is already burning." instead.
	
Carry out striking a strikable-match (this is the standard striking rule):
	now the noun is flaming;
	now the noun is lit;
	now player-has-light is true.

Report striking a strikable-match (this is the standard report striking rule):
	say "You light [the noun]."

Before burning something with a new strikable-match (this is the prior lighting rule):
	say "(first [if the player does not carry the second noun]taking and [end if]lighting [the second noun])[command clarification break]";
	silently try striking the second noun;
	if the second noun is not flaming, stop the action.

Rule for implicitly taking a strikable-match (called target) while striking:
	try silently taking the target.

Rule for implicitly taking a strikable-match (called target):
	try silently taking the target.
			
Does the player mean burning something with a flaming strikable-match:
	it is very likely.

Does the player mean burning something with a new strikable-match:
	it is likely.

Does the player mean burning something with a burnt strikable-match:
	it is unlikely.

Instead of burning a burnt strikable-match with something:
	say "[The noun] is completely consumed and cannot be relit."

Part - Putting Matches Out

Every turn (this is the Putting Matches Out rule):
	let N be 0; [here we track how many matches are being put out during a turn, so that we don't have to mention each match individually if several go out during the same move]
	repeat with item running through flaming s-matches:
		decrement the duration of the item;
		[say "[N] : [duration of the item][paragraph break]";]
		if the duration of the item is 0:
			now the item is burnt;
			now the item is unlit;
			if the item is visible, increment N;
			[say "[N] : [duration of the item][paragraph break]";]
	if N is 1:
		say "[if the number of visible flaming s-matches is greater than 0]One of the matches [otherwise if the number of burnt visible s-matches is greater than 1]Your last burning match [otherwise]The match [end if]goes out.";
	otherwise if N is greater than 1:
		let enumeration be "[N in words]";
		if N is the number of visible s-matches:
			if N is two, say "Both";
			otherwise say "All [enumeration]";
		otherwise:
			say "[enumeration in title case]";
		say " matches go out[if a visible strikable-match is flaming],ff leaving [number of visible flaming s-matches in words] still let[end if].";
	repeat with item running through burnt s-matches:
		if the item is not nowhere:
			say "You drop the [flame-state of the item] [item][if the player is in Year-1895-Inside or the player is in Year-802701-Inside] on the floor.[otherwise] on the ground.";
			now the item is nowhere;
			refresh the list-inventory window;
[	let M be 0; [track lit matches]
	repeat with item running through flaming s-matches:
		if the item is visible, increment M;
	if M is 0: [if no lit matches]
		now player-has-light is false. ]

Part - Checking For Flaming Things

Every turn (this is the Check For Flaming Things rule):
	if the player is in the Year-802701-Underground:
		let L be 0;
		repeat with item running through flaming s-matches:
			if the item is visible, increment L;
		repeat with item running through flaming newspaper:
			if item is visible, increment L;
		repeat with item running through flaming makeshift torch:
			if item is visible, increment L;
		[say "OTHER FLAMING ITEMS: [L]";]
		if L is not 0:
			now player-has-light is true;
		otherwise:
			now player-has-light is false.

Book - Newspaper

The newspaper is a thing.
The newspaper is on the left armchair.
The newspaper is undescribed. 
Understand "news" or "paper" as newspaper.
The description of the newspaper is "Today[']s edition of 'The Guardian,' which you[']ve already read."

The newspaper-reads is a number that varies.
The newspaper-reads is 0.

The penultimate-read is a number that varies.
The penultimate-read is 2.

[Suppress "On the left armchair is a newspaper." and "On the right armchair is a newspaper." text]
The describe what's on scenery supporters in room descriptions rule does nothing when the newspaper is on the left armchair.
The describe what's on scenery supporters in room descriptions rule does nothing when the newspaper is on the right armchair

Before putting the newspaper on the right armchair:
	if the location of Gernsback is the Parlor:
		say "You can't while Gernsback is sitting there.";
		stop the action;
	otherwise:
		continue the action.

Instead of searching the newspaper: try reading the newspaper.

Part - Putting Newspaper in Fireplace

To say newspaper-into-fire:
	say "The newspaper ignites and is quickly reduced to ashes."

To say burning-newspaper-into-fire:
	say "You throw the burning newspaper into the fire, where it is consumed."

Instead of dropping the newspaper:
	if the flame-state of the newspaper is flaming:
		say "[burning-newspaper-into-fire]";
		now the newspaper is nowhere;
	otherwise:
		continue the action.

Instead of inserting the newspaper into the fireplace: try inserting the newspaper into the fire.

Instead of putting the newspaper on the fire: try inserting the newspaper into the fire.
Instead of burning the newspaper with the fire: try inserting the newspaper into the fire.

Instead of inserting the newspaper into the fire: 
	if the flame-state of the newspaper is new:
		say "[newspaper-into-fire]";
	otherwise if the flame-state of the newspaper is flaming:
		say "[burning-newspaper-into-fire]";
	now the newspaper is nowhere.


Book - Box Of Matches

The box of matches is an open [a closed] openable transparent container.
The box of matches contains five s-matches.

Understand "matchbox" or "match box" as box of matches.

The box of matches is held by Gernsback.
[The box of matches is held by the player.] [When assigned this way the box of matches show up in the visible inventory right away instead of needing to type >wait]


Book - Books

Part - Library Books

library-books are a thing in the Library.
library-books are scenery.
The description of library-books are "A variety of titles on various topics, some familiar, some not."
The printed name of library-books is "library books".
Understand "book/books" or "books on shelf/shelves"  or "library book/books" or "shelved book/books"  as library-books. [§17.12. This/that]

Instead of searching the library-books: try reading the library-books.

To say taking-library-books: 
	say "You take [one of]one of the books[or]another book[stopping] off the shelves and leaf through a few of its pages. The subject doesn't[one of] interest you[or] seem relevant to your investigation[in random order] so you return it to its place on the shelf."

Instead of taking library-books for the first time: say "[taking-library-books]".
Instead of taking library-books for the second time: say "[taking-library-books]".
Instead of taking library-books: say "[one of]I probably shouldn't be telling you this but the shelves and the books are scenery, just for show.[or]Again, just scenery.[or]I'd suggest moving along to something more important and relevant to your investigation.[stopping]"

Part - HG Wells Book

[The] wells-book is a thing. "A thick volume."
The description of wells-book is "You can't make out the author's name from this distance but the title 'Fantastic Fiction' is clearly visible on the spine."
Understand "gernsback book" or "gernsback's book" or "book" or "fantastic fiction" or "stories" or "title" as wells-book

The printed name of wells-book is "book he is reading".

[The] wells-book is held by Gernsback.

Instead of taking wells-book:
	if the wells-book is held by Gernsback:
		say "Gernsback is currently reading it. Perhaps you should find another book if you want to read something.";
	otherwise:
		say "YOU CAN TAKE THE BOOK." [Gernsback reading book or puts it back on shelf when he leaves so it can never be taken]

Instead of asking Gernsback to try giving wells-book to yourself:
	try requesting Gernsback for the wells-book.

The story-being-read is scenery in the Library.
Understand "story" as story-being-read.

Part - Reading

Understand the command "read" as something new. [Recipe §9.6. Reading Matter]
Understand "read [something]" as reading.
Reading is an action applying to one thing, requiring light.

Carry out reading:
	if the noun is library-books:
		say "You scan the [printed name] but nothing catches your interest, especially since you've got more pressing concerns on your mind.";
	otherwise if the noun is shelves:
		say "You scan the shelves but nothing catches your interest, especially since you've got more pressing concerns.";
	otherwise if the noun is wells-book:
		say "You can't do that while Gernsback is reading it.";
	otherwise if the noun is newspaper:
		move the newspaper to the player;
		say "You glance at today's paper but realize that rereading any of the articles isn't going to get you any closer to your goal.";
	otherwise if the noun is orrery:
		try reading the central panel;
	otherwise if the noun is central panel:
		say "It's midwinter, just past the winter solstice, the date is December 28th, the Moon is waxing gibbous, and the time is later than you think.";
	otherwise if the noun is blackboard:
		try reading the equations;
	otherwise if the noun is equations or the noun is diagrams:
		say "You glance at the long series of equations but have no luck making sense of anything written there.";
	otherwise if the noun is diagrams:
		say "You glance at a few of the diagrams but can't make heads or tails of them.";
	otherwise if the noun is desk-papers:
		say "You glance at the pages but can't fathom the scientific jargon and formula written there.";
	otherwise:
		say "That's absurd.";



Book - Creating A Torch

The block tying rule is not listed in the check tying it to rulebook.

Part - With Newspaper

The newspaper is flammable.
The newspaper has a number called duration.
The duration of newspaper is 5.

The newspaper has a flame-state. The newspaper is new.
Understand the flame-state property as describing the newspaper.

Chapter - Lighting The Newspaper

Check burning a newspaper with something (this is the being able to hold a burning newspaper rule):
	say "Rolling up the newspaper, you touch the end of it to the flame until it begins burning.";
	now the player-has-light is true;
	now the newspaper is lit;
	now the newspaper is flaming;
	stop the action.

Chapter - Putting The Newspaper Out

Every turn (this is the Putting The Newspaper Out rule):
	repeat with item running through flaming newspaper:
		if debug-mode is true, say "DEBUG Newspaper Duration: [duration of the item][line break]";
		decrement the duration of the item;
		if the duration of the item is less than 0:
			if the newspaper is not nowhere:
				say "You hold the burning newsprint until the very last possible minute and drop it as the flame approaches your fingers. The glowing fragments spiral to the floor and die.";
			now the newspaper is nowhere;
			now player-has-light is false.


Part - With Poker

Chapter - Tying

Before tying tunic to poker:
	if tunic is part of the poker:
		say "You've already done that.";
		stop the action;

Instead of tying tunic to poker:
	say "You deftly wrap the tunic around one end of the poker and tie it in securely in place.";
	now the tunic is part of the poker;
	now the tunic is nowhere; [scenery;]
	now the poker is nowhere;
	[now the poker is scenery;
	try silently dropping the poker;]
	move the makeshift torch to the player;

Chapter - Wrapping

Wrapping is an action applying to two things.

Understand "wrap [tunic] around [poker]" as wrapping.
Understand "wrap [tunic] on [poker]" as wrapping.

Understand "put [tunic] around [poker]" as wrapping.
Understand "put [tunic] on [poker]" as wrapping.

Instead of wrapping:
	try tying tunic to poker;

Part - Makeshift Torch

The makeshift torch is a thing.
The description of the makeshift torch is "With the Eloi tunic tied to the end of the poker, this could be a serviceable source of portable light."
The makeshift torch is nowhere.

The makeshift torch is flammable.

The makeshift torch has a number called duration.
The duration of makeshift torch is usually 10.

The makeshift torch has a flame-state. The makeshift torch is new.
Understand the flame-state property as describing the makeshift torch.

Chapter - Lighting The Torch

After burning a makeshift torch with a something (this is the being able to hold a torch rule):
	say "You rotate the end of your makeshift torch in the flame until the entire end is aflame.";
	now player-has-light is true;
	now the makeshift torch is lit;
	now the makeshift torch is flaming;
	now the player has the makeshift torch;
	stop the action.

Chapter - Putting The Torch Out

holding-torch is a truth state that varies.

Every turn (this is the Putting The Torch Out rule):
	repeat with item running through flaming makeshift torch:
		if debug-mode is true, say "DEBUG Torch Duration: [duration of the item][line break]";
		if the duration of the item is greater than 0:
			decrement the duration of the item;
		if the duration of the item is 0:
			if the makeshift torch is in location of player or makeshift torch is carried by player:
				say "With a last gasp of light the remaining torch sputters and goes out.";
				now player-has-light is false; [TBD Also, if the player walks away from the torch then they don't have light]
				now the makeshift torch is burnt;
			if the player is holding the makeshift torch:
				now holding-torch is true;
			otherwise:
				now holding-torch is false;	
			if holding-torch is true:
				move the poker to the player;
			otherwise:
				move the poker to the location of the player.
		now the makeshift torch is nowhere.

[
Every turn (this is the Putting The Torch Out rule):
	repeat with item running through flaming makeshift torch:
		if debug-mode is true, say "DEBUG Torch Duration: [duration of the item][line break]";
		decrement the duration of the item;
		if the duration of the item is less than 0:
			if the makeshift torch is in location of player or makeshift torch is carried by player:
				say "With a last gasp of light the remaining torch sputters and goes out.";
			now player-has-light is false; [TBD Also, if the player walks away from the torch then they don't have light]
			if the player is holding the makeshift torch:
				now holding-torch is true;
			otherwise:
				now holding-torch is false;	
			now the makeshift torch is burnt;
			now the tunic is nowhere;	
			if holding-torch is true:
				move the poker to the player;
			otherwise:
				move the poker to the location of the player.
			now the makeshift torch is nowhere.
]


Volume - Scenes

Book - Humboldt

Part - Opening Scene

Opening Scene is a scene.

Opening Scene begins when the ambulance is in Woking Street.

[When Opening Scene begins: say "OPENING SCENE BEGINS."]

Opening Scene ends when the ambulance is nowhere.

[When Opening Scene ends: say "OPENING SCENE ENDS."]

Part - Humboldt's Return

Humboldt's Return is a scene.

Humboldt's Return begins when humboldt-should-return is true.

[Should Humboldt's speech reflect two situations - (A) you are there without the time machine and (B) you've visited 802,701 and returned with the time machine? The elapsed time for A should be less than B.]

When Humboldt's Return begins:
	[say "HUMBOLDT'S RETURN BEGINS.";]
	say "The door to the workshop opens Dr. Humboldt enters, appearing both relieved and annoyed. 'Where the hell have you been hiding? I've been through the entire house looking for you.'[if the time machine is not nowhere] He looks over your shoulder at the time machine. 'So that must be Wells['] time machine contraption.'[end if]"; ["Strange, that wasn't here before. Don't know how we missed it."]
	now Humboldt is in the Workshop;
	[now Humboldt is mobile;]
	now Watchett is nowhere;
	refresh the list-characters window.

Humboldt's Return ends when Humboldt is in the Workshop.

When Humboldt's Return ends:
	[say "HUMBOLDT APPEARS IN THE WORKSHOP.";]
	now humboldt-endgame-begins is true;
	[say "HUMBOLDT'S RETURN ENDS."]

Part - Ending Scene

Ending Scene is a scene.

Ending Scene begins when humboldt-endgame-begins is true.

When Ending Scene begins:
	if debug-mode is true, say "Ending Scene Begins (DEBUG).";
	[implicitly greet Humboldt.]

[Recipe §7.13. Traveling Characters, Van Helsing example]
Every turn:
	if the patience of Humboldt is angry-1:
		if the time machine is nowhere:
			now Weena is in the time machine;
			now the time machine is in the workshop;
			now weena-appears is true;
	if the location of Humboldt is the Workshop and the location of the time machine is the Clearing:
		now Humboldt is fixed;
		now time-travel-seen is true;
		now endgame-success is true;
		[This triggers the ending of the scene while the player is still in 802,701]
	if Humboldt is mobile:
		if the location of Humboldt is not the location of the player:
			let the way be the best route from the location of Humboldt to the location of the player, using doors;
			try Humboldt going the way;
	refresh the list-characters window.

time-travel-seen is a truth state that varies.
time-travel-seen is false.

endgame-success is a truth state that varies.
endgame-success is false. 

endgame-failure is a truth state that varies.
endgame-failure is false.

Instead of showing the flower to Humboldt:
	now endgame-success is true.

The block giving rule is not listed in the check giving it to rules. [Recipes §7.4. Barter and Exchange]
After giving the flower to Humboldt:
	now endgame-success is true.

Ending Scene ends when endgame-success is true or endgame-failure is true.

When Ending Scene ends:
	if debug-mode is true, say "Ending Scene Ends (DEBUG).";

When Ending Scene ends:
	[say "ENDING SCENE ENDS."]
	if endgame-success is true:
		if weena-appears is true:
			if debug-mode is true, say "Endgame-Success = True, Weena-Appears = True (DEBUG).";
			say "Suddenly the noise of what sounds like a key scraping along the bass string of a piano fills the room, drowning out all conversation. The air in the center of the room shimmers and Wells['] time machine reappears with an unusual occupant, a young girl whom, when she steps down from the machine after it materializes, you realize must be Wells['] Weena.[paragraph break]Humboldt is stunned, the truth behind Wells['] story apparent after what he has just seen. Humboldt and you go to the hospital to free Wells.";
		if time-travel-seen is true:
			if debug-mode is true, say "Endgame-Success = True, Time-Travel-Seen = True (DEBUG).";
			[say "YOU PUSH THE LEVER AGAIN TO RETURN TO 1895.[paragraph break]";]
			say "Pushing the lever again you return back to 1895 and the workshop. Stepping down from the time machine you answer the stunned Humboldt's questions, convincing him of Wells['] sanity, before you and the doctor go to the hospital to free Wells.";
		otherwise:
			[say "SUCCESS. HUMBOLDT REALIZES THAT WELLS IS NOT INSANE.";]
			say "Humboldt studies the flower with growing amazement. 'I'm just an amateur botanist but even I can say that this morphology is unique, nothing like it in this world...' He studies the flower for a few seconds more before looking at you with a sober rationalization on his face. '...or this time.' He nods slightly. 'There must be some truth to Wells' story.'[paragraph break]Now that the doctor is willing to admit his error, he's more receptive to hearing the brief synopsis of your adventures in the year 802,701 before both of you leave for the hospital to get your friend Wells released.";
	if endgame-failure is true:
		[say "FAILURE. YOU ARE DRAGGED OFF TO THE ASYLUM."]
		say "Alone, looking around the workshop, you feel a sense of failure and despair. Your attempt to vidicate your friend Wells has failed and his story of time travel will not be believed."; [but you can take a small measure of satisfaction having rescued Weena from the Morlocks]
	end the story finally.

Book - Gernsback

Part - Introduction Of Gernsback

Introduction Of Gernsback is a [recurring] scene.

Introduction Of Gernsback begins when player is in the Library for the first time.

When Introduction Of Gernsback begins: 
	[say "INTRODUCTION OF GERNSBACK BEGINS.";]
	say "Standing by the desk, looking out the window, is Gernsback, a frequent visitor at these gatherings. A successful businessman with ownership in several textile mills in the north, it's rumored he's contributed money to Wells['] experiments.[paragraph break]Dropping the curtain, Gernsback turns towards you, a book in his hand. 'I wouldn't believe it if I didn't see it with my own eyes. One minute he's sitting at the dining room table, explaining the...' He gestures with the book. '...science of it all. The next minute...' He glances at the window and shakes his head slowly, lost in thought for a moment.[paragraph break]'I guess we had better make ourselves comfortable until the doctor gets back.' Settling into the library's only chair, Gernsback begins paging through the book.";
	now library-print-description is true;

Introduction Of Gernsback ends when library-print-description is true.

[When Introduction Of Gernsback ends: say "INTRODUCTION OF GERNSBACK ENDS."]

Part - Gernsback Reveals Orrery Fuse

Gernsback Reveals Orrery Fuse is a scene.

fuse-orrery-revealed is a truth state that varies.
fuse-orrery-revealed is false.

Gernsback Reveals Orrery Fuse begins when gernsback-shows-fuse is true.

When Gernsback Reveals Orrery Fuse begins: 
	[say "GERNSBACK SHOWS YOU ORRERY FUSE BEGINS.";]
	say "Seeing the time machine fuse a look on interest appears on Gernsback's face. 'I have seen something like that before, though not in that condition.' He stands up and leads you into the parlor to a the orrery above the fireplace.[paragraph break]'When I asked Wells to show me how this contraption worked he did this.' Gernsback reaches out and with his fingertips slides the orrery's right panel up, exposing the inner mechanism.[paragraph break]'That should help you out.' Without another word Gernsback returns to the library and sits in the chair to continue his reading.";
	now the player is in the Parlor;
	now the right panel is open;
	now player-knows-right-panel-slideable is true;
	now the time of day is 11:00 PM;
	now fuse-orrery-revealed is true.

Gernsback Reveals Orrery Fuse ends when fuse-orrery-revealed is true.

[When Gernsback Reveals Orrery Fuse ends: say "GERNSBACK SHOWS YOU ORRERY FUSE ENDS."]

Part - Gernsback Leaves

Gernsback Leaves is a scene.

Gernsback Leaves begins when player is in the Library and the time of day is greater than 11:00 PM. [<- 10:05 PM for debugging purposes only]

When Gernsback Leaves begins:
	[say "GERNSBACK LEAVES BEGINS.";]
	say "Getting up, Gernsback closes his book, replaces it on the shelf, and lights a cigar. Turning to you, he says, 'Looks like the good doctor is going to be longer than expected. I'll check in with you tomorrow.' Putting on his coat, he quickly lights his cigar, drops the box of matches on the desk, and is gone without another word.";
	move the box of matches to the desk;
	reset the interlocutor;
	now the wells-book is nowhere;
	now Gernsback is nowhere.

Gernsback Leaves ends when Gernsback is nowhere.

[When Gernsback Leaves ends: say "GERNSBACK LEAVES ENDS."]

Book - Traveling In Time

Part - Travel To 802,701

Travel To 802,701 is a recurring scene.

Travel To 802,701 begins when the time machine is in the Workshop and player is in the time machine and the lever is switched on.

travel-to-802701 is a truth state that varies.
travel-to-802701 is false.

When Travel To 802,701 begins:
	[say "TRAVELING TO 802,701 BEGINS.";]
	now travel-to-802701 is true;
	say "From Wells['] story you have an idea of what is going to happen, but you never expected to see it with your own eyes or experience it yourself.

	As the machine powers up and the dials start inching forward through the seconds, minutes, weeks, and months, the workshop and its contents[unicode 8212]in fact the entire house[unicode 8212]fade away to be replaced by a shimmering grey void. Vague shapes of all sizes appear and disappear on the surface of the void that surrounds you as the millennia, ages, and epochs pass[unicode 8212]future people, places, and things living out their personal cycles of birth, life, and death.

	You grip the time machine[']s framework as it shudders and gains velocity on its pre-programmed flight through the centuries and millennia towards what you suppose is the Age of Eloi and Morlocks that Wells spoke about.
	
	One age passes. Two ages. Five ages. The blur of the individual dials starts slowing down and stopping left to right—first the one on the far left and then the others—one by one, as your final destination approaches. Beneath your feet the time machine shifts gears internally and slows. The shimmering grey curtain surrounding you starts to dissipate and fade away like an early morning fog in the face of the sun. Eventually the time machine stops, the dials indicating that 800,806 years have passed from when you started your journey in 1895.

	Apparently, as best you can tell, you have travelled through time and arrived in the year 802,701 A.D.";
	now the current-year is "802,701";
	now the numeric-year is 802701;
	now the time machine is in the Clearing;
	now the time machine is described;
	now the lever is switched off.

Travel To 802,701 ends when the time machine is in the Clearing.

[When Travel To 802,701 ends:
	say "TRAVELING TO 802,701 ENDS."]

Part - Travel To 1895

Travel To 1895 is a recurring scene.

Travel To 1895 begins when the time machine is in the Clearing and the player is in the time machine and the lever is switched on.

When Travel To 1895 begins:
	[say "TRAVEL TO 1895 BEGINS.";]
	say "The time machine powers up and the grey void once again cloaks you and the machine in a temporal shroud. To your relief, the hands on the dials on the panel start turning backwards, one second at a time as you return to your point of origin. The time machine shudders and shakes slightly on its journey, but the dread you felt on your outward trip is less than before as you watch the silent shapes perform their temporal pantomime on the grey surface surrounding you.

	Ages pass. One by one the dial hands approach zero and stop their retrograde spin. The time machine starts to slow, and as the last dial hits zero, it stops. The grey fog dissipates and the familiar workshop appears around you and the time machine.

	You have arrived back in the year 1895.";
	now the current-year is "1895";
	now the numeric-year is 1895;
	now the time machine is in the Workshop;
	now the time machine is undescribed;
	now the lever is switched off.
	
Travel To 1895 ends when the time machine is in the Workshop.

[When Travel To 1895 ends:
	say "TRAVEL TO 1895 ENDS.";]	

Book - Eloi
	
Part - Showing Eloi The Watch

show-eloi-watch is a truth state that varies.
show-eloi-watch is false.
	
Showing Eloi The Watch is a scene.
		
Showing Eloi The Watch begins when show-eloi-watch is true.
		
When Showing Eloi The Watch begins:
	if debug-mode is true, say "SHOWING ELOI THE WATCH BEGINS. (DEBUG)";
	
Showing Eloi The Watch ends when the location of the player is the Clearing.
	
When Showing Eloi The Watch ends:
	if debug-mode is true, say "SHOWING ELOI THE WATCH ENDS. (DEBUG)";
	
Book - Weena

Part - Introduction Of Weena

[I don't think this scene is used anymore.]

Introduction Of Weena is a scene.

introduce-weena is a truth state that varies.
introduce-weena is false.

Introduction Of Weena begins when introduce-weena is true.

To say weena-description:
	say "Though her age, appearance and clothing mimics the other Eloi, her demeanor and the way she looks at you is different from the others. Obviously this is Weena and her encounter with Wells has changed her in some way, forced her to 'grow up' for lack of a better word."

When Introduction Of Weena begins:
	[say "INTRODUCTION TO WEENA BEGINS.";]
	if the Eloi is carrying the pocket watch:
		say "Suddenly a young girl appears. [no line break]";
	otherwise:
		say "At the word 'Weena' the Eloi begin chattering rapidly among themselves. One of them runs off and returns with a young girl. [no line break]";
	say "[weena-description][line break]";
	say "Weena gently takes the pocket watch from the Eloi who has it and turns it over slowly in her hands, her brow furrowed in thought.";
	now Weena is in the River Bank;
	now Weena is carrying the pocket watch.

Introduction Of Weena ends when Weena has the pocket watch.

[When Introduction Of Weena ends:
	say "INTRODUCTION TO WEENA ENDS."]

Part - Weena Gives You Flower

Weena Gives You Flower is a scene.

Weena Gives You Flower begins when Weena has the pocket watch.

When Weena Gives You Flower begins:
	[say "WEENA GIVES YOU FLOWER BEGINS.";]
	say "Weena stares at the second hand making its way around the dial and taps at the crystal with her finger. Looking up, she smiles. She remembers. She hands the watch back to you and smiles."; 
	now the player is carrying the pocket watch.

Weena Gives You Flower ends when the player has the flower.

[When Weena Gives You Flower ends:
	say "WEENA GIVES YOU FLOWER ENDS."]

Part - Weena Appears In 1895

Weena Appears In 1895 is a scene.

weena-appears is a truth state that varies.
weena-appears is false.

Weena Appears In 1895 begins when weena-appears is true.

When Weena Appears In 1895 begins:
	[say "WEENA APPEARS BEGINS.";]
	say "Suddenly, the time machine appears, shimmering into view, accompanied by its distinct vworp-vworp sound. A young girl steps down from inside and stands looking at the three of you, one hand still on the machine. Based on Wells['] description, you decide that this can only be Weena, the girl he met in the year far future.[paragraph break]Humboldt appears to quickly come to the same conclusion. Slowly he approaches the girl and gently takes her hand and in greeting. His eyes go to the flowers in her hair and, with her permission, removes one. Examining it closely, he turns to you in excitement. 'This is it! The rest of the flower that I was talking about earlier. Proof, I tell you, that Wells['] story, however fantastical it sounds, must be true. This flower, and that girl, prove it.'[paragraph break]You glance at Gernsback, who appears a bit disappointed at this turn of events.";
	now Weena is in the workshop;
	now endgame-success is true.

Weena Appears In 1895 ends when Weena is in the workshop [time machine] and the time machine is in the workshop.

[When Weena Appears In 1895 ends:
	say "WEENA APPEARS ENDS."]

Book - Underground

Part - Underground Exploration

Underground Exploration is a recurring scene.

Underground Exploration begins when the player is in Shaft 1 and Weena is in the Holding Cell.

When Underground Exploration begins:
	if debug-mode is true, say "Underground Exploration Scene Begins (DEBUG)";
	if the location of the Eloi is the Clearing or the location of the Eloi is the River Bank:
		if debug-mode is true, say "Eloi In [location of the Eloi] (DEBUG)";
		now the Eloi are nowhere.

Underground Exploration ends when the player is in the Holding Cell.

When Underground Exploration ends:
	if debug-mode is true, say "Underground Exploration Scene Ends (DEBUG)";

Part - Escape The Morlocks

Escape The Morlocks is a recurring scene.

Escape The Morlocks begins when the player is in the Holding Cell and Weena is in the Holding Cell;

When Escape The Morlocks begins:
	[say "ESCAPE THE MORLOCKS SCENE BEGINS."]
	say "[escape-morlocks-begin-text]";
	now Weena is mobile. 	

To say escape-morlocks-begin-text:
	if morlocks-capture-you is false:
		if Weena is in the Holding Cell:
			say "Weena looks up, startled, her eyes wide and fearful. She gets to her feet, arms wrapped around her sides, backing into a corner while fixing her gaze on you.";

Escape The Morlocks ends when Weena [the player] is in the Clearing.

When Escape The Morlocks ends:
	[say "ESCAPE THE MORLOCKS SCENE ENDS."]
	now Weena is fixed.

Chapter - Weena's Movement

Every turn (this is the Move Weena Rule):
	if Escape The Morlocks is happening:
		if Weena is not nowhere:
			if Weena is mobile:
				if the visibility of the location of player is not day:
					if the location of Weena is not the location of the player:
						if player-has-light is true:
							let the way be the best route from the location of Weena to the location of the player, using doors;
							try silently Weena going the way;
							say "Staying close to you and your source of light, Weena follows you into the [location of the player].";
						otherwise:
							say "Terrified by the dark, Weena cowers in fear and stays behind.";
				otherwise:
					if the location of Weena is not the location of the player:
						let the way be the best route from the location of Weena to the location of the player, using doors;
						try silently Weena going the way;
						say "Feeling more adventurous in the increasing daylight, Weena follows you into the [location of the player].";
				refresh the title-characters window;
				refresh the list-characters window.


Part - Return To Surface

Return To Surface is a recurring scene.

Return To Surface begins when Escape The Morlocks ends.

When Return To Surface begins:
	if debug-mode is true, say "Return To Surface Scene Begins (DEBUG)";

Return To Surface ends when the player is in the time machine.

When Return To Surface ends:
	if debug-mode is true, say "Return To Surface Scene Ends (DEBUG)";






	
Volume - Help

Table of Basic Help Options (continued)
title		subtable		description
"Changes from previous releases"		--		"[release-notes]"
"Thanks to my Beta testers"		--		"[beta-testers]"
"Contact the author"		--		"If you have any difficulties with [story title] or have any suggestions for improving the game, please contact me at bill.maya@gmail.com."
"Hints"		Table of Hints		--
["Settings"		Table of Setting Options		--]


Table of Hints
title		subtable		description		toggle
"How do I find the workshop door key?"		Table of Key Hints		""		hint toggle rule
"How do I travel to 802,701 A.D.?"		Table of Time Machine Hints		""		hint toggle rule
"How do I find the flower?"		Table of Flower Hints		""		hint toggle rule
["What else can I do in 802,701 A.D.?"		Table of 802701 Hints		""		hint toggle rule]
"Game Walkthrough"		Table of Walkthrough Hints		""		hint toggle rule

Table of Key Hints
hint											used
"Have you talked to Dr. Humboldt before he left?"											a number
"Before he left, Dr. Humboldt gave you some advice on who you should talk to."
"Talk to Mrs. Watchett. She might know where Wells kept the workshop door key."
"When you are in the Kitchen with Mrs. Watchett, type 'ask watchett about key.'"
"So Wells kept the workshop door key on his person at all times. Where did you last see Wells?"
"Go back to Woking Street and see if you can find the key."
"After talking to Mrs. Watchett about the key and returning to Woking Street, type 'search area' or 'search street'."	
"Note: You might have to search for the key more than once. Also, you don't have to talk to Mrs. Watchett to find the key, but it might take longer to find it if you don't."

Table of Time Machine Hints
hint		used
"Have you been able to get into the workshop?"		a number
"You will need to get into the workshop first."
"The workshop door is locked. You will need a key."		
"Have you examined the time machine[']s controls?"
"Have you unlocked the hinged panel?"
"Have you examined the time machine fuse?"
"It looks like the time machine fuse is burnt out. You'll need a new one."
"What other mechanical device have you found elsewhere in the house?"
"Examine the orrery in the parlor."
"Examine the orrery's right panel."
"> slide right panel upward."
"> take orrery fuse."
"Got back to the workshop and get in the time machine."
"> put orrery fuse in fuse holder."
"> push lever."

Table of Flower Hints
hint	used
"Have you met the Eloi at the river bank?"	a number
"The southeast path from the clearing to the river bank is overgrown..."		
"So you won[']t be able to go southeast from the clearing to the river bank until..."
"You discover the southeast path from the balcony inside the dome."
"From the clearing > go east. go east. go south."
"Once you can see the southeast path from the balcony you will be able to go southeast from the clearing."
"Have you tried showing the Eloi various items from your inventory? Do they find any of them interesting?"
"Show the Eloi the watch."
"Shame. It looks like Weena, who might have been able to give you a flower based on the petal, has been captured by the Morlocks."
"I guess you could go underground and attempt to rescue her."
"If you decide not to rescue Weena you could search elsewhere for flowers."
"Go back to the river bank and examine the bushes."
"> examine flowers."
"> take flower."

Table of 802701 Hints
hint	used
"You[']ve explored the Eloi[']s dome. You could see where the Morlocks live."	a number
"There[']s a circular shaft in the clearing with a metal grate over it."
"Remove the grate."
"> enter shaft. or > get in shaft."
"At the bottom of the shaft you can explore in any direction."
"But you might get attacked by Morlocks and, without fire or a weapon, you might not escape."
"But then you might through some stroke of luck."
"You really shouldn't explore the Morlock[']s tunnels."
	
Table of Walkthrough Hints
hint				used
"Type each of these commands at the prompt in the order they are shown (hit the Enter/Return key after typing each command)."				a number
"take pocket watch"		
"go north"
"go north"
"go west"
"ask gernsback for cigar"
"ask gernsback for matches"
"go north"
"examine orrery"
"push right panel"
"examine mechanism"
"examine fuse holder"
"take fuse"
"take poker"
"go north"
"go north"
"ask watchett about key"
"go south"
"go south"
"go south"
"go east"
"go south"
"search area (as many times as it takes to find the key)"
"go north"
"unlock workshop door with key"
"go north"
"flip switch"
"examine time machine"
"enter time machine"
"examine controls"
"unlock hinged panel with key (DOESN'T OPEN IT BUT SAYS IT DOES)"
"open hinged panel (REMOVE)"
"examine fuse holder"
"take time machine fuse"
"examine time machine fuse"
"put orrery fuse in fuse holder"
"close hinged panel"
"press lever"
"exit"
"go east"
"go east"
"go south"
"go north"
"go west"
"go west"
"go southeast"
"ask eloi about weena"
"remove cover"
"climb in well"
"go down"
"go north"
"go down"
"go down"
"go down"
"go south"
"go south"
"go south"
"go north"
"search clothing"
"wrap tunic around poker"
"open box of matches"
"take match"
"light match"
"light torch"
"go north"
"go north"
"go north"
"go up"
"go up"
"go up"
"go south"
"go up"
"exit"
"show weena the petal"
"enter time machine"
"press lever"
"exit"
"show humboldt the flower"


To say beta-testers:
	say "I cannot thank enough the seven people listed below who took the time to beta test Release 3 (v1.0) of 'The Time Machine' for ParserComp 2021 (some of them even tested it more than once). Their effort and attention to detail made the game that was released to the public for the competition much, much better.

	• Phil Halprin[line break]
	• Chirstopher Merriner[line break]
	• Grueslayer[line break]
	• Mike Carletta[line break]
	• Javier Garza[line break]
	• Brian Rushton[line break]
	• David White[line break]
	
I also want to thank the people who took the time to write reviews of v1.0 of the 'The Time Machine' after playing it for ParserComp 2021.

	• Mike Russo[line break]
	• Thomas Mack[line break]
	• Rovarsson[line break]
	• Leopold Tal".

To say release-notes:
	say "NOTE: If you have never played this game before I suggest you play it first without reading any of this information below since individual items may contain Spoilers.[paragraph break]";
	say "Release 13 Notes (v2.0)[paragraph break]
• Changes to be done based on Beta testing results[paragraph break]";
	say "Release 12 Notes (v1.9)[paragraph break]
• Added Flower/Flowers to River Bank.[line break]
• Modified Eloi reactions when you show them the watch (Eloi take you to Clearing).[line break]
• Added Escape The Morlocks scene. Weena follows/doesn't follow you depending if player does/doesn't have light source.[line break]
• Added Return To Surface scene.[paragraph break]";
	say "Release 11 Notes (v1.8)[paragraph break]
• Endgame modifications: Added Gernsback, Watchett sent Nowhere, time machine reappears a few turn later with Weena if sent to 802,701 empty.[line break]
• Added Morlock Underground locations. Added visibility property to Underground rooms, each with its own light level (day, shadow, twilight, night).[line break]
• Coded up Morlock Attack routine based on Underground room visibility and if player has light source.[line break]
• Added ability to create a torch by combining Eloi tunics and poker.[line break]
• Added ability to use burning newspaper as temporary torch.[paragraph break]";
	say "Release 10 Notes (v1.7)[paragraph break]
• Added Matches, Cigar, Book, and Box of Matches for Gernsback to use.[line break]
• Made >take newspaper distinct from >read newspaper.[line break]
• Created Gernsback conversation using Conversation Package extension.[line break]
• Added Introduction To Gernsback scene.[line break]
• Added Gernsback character.[paragraph break]";
	say "Release 9 Notes (v1.6)[paragraph break]
• Updated old Weena conversation code to use Conversation Package extension.[paragraph break]";
	say "Release 8 Notes (v1.5)[paragraph break]
• Updated old Eloi conversation code to use Conversation Package extension.[paragraph break]";
	say "Release 7 Notes (v1.4)[paragraph break]
• Added Conversation Package extension (Eric Eve).[line break]
• Added Flexible Window extension (Jon Ingold).[line break]
• Updated old Watchett conversation code to use Conversation Package extension.[line break]
• Updated old Humboldt conversation code to use Conversation Package extension.[paragraph break]";
	say "Release 6 Notes (v1.3)[paragraph break]
• Added breaker.[line break]
• Added 2nd fuse so now there's an orrery fuse (working) and a time machine fuse (not working).[line break]
• Refactored time machine and controls, adding explicit time machine fuse holder.[line break]
• Added code so you cannot insert two fuses into one fuse holder.[line break]
• Added code so Orrery and Time Macine work when working fuse inserted and don't work when not working fuse inserted.[paragraph break]";
say "Release 5 Notes (v1.2)[paragraph break]
• Handled attempting to use poker on doors in Entryway.[line break]
• Made it so you can climb through open windows into Workshop from Garden and into Garden from Workshop.[line break]	
• Made it so you can > use poker on windows to break latch.[line break]
• Made it so workshop windows can be locked or unlocked with latch, opened, and closed.[line break]
• Made > press switch refer to light switch. Cannot reach light switch if you are in time machine.[line break]
• Made lights a device that you can turn on/off by redirecting to light switch.[line break]
• Moved orrery to parlor fireplace mantle. Replaced sliding panel and switch with left and right panel. Right inlay can be moved to expose mechanism and fuse.[line break]
• Added newspaper to inventory when reading and returned to armchair when done (room description reflects this).[line break]
• Added code to handle poking.[line break]
• Added user orrery code.[line break]
• Refactored Watchett and Humboldt conversations to use Eric Eve's Conversation Package extension in separate file (code integrated into game in Release 7).[paragraph break]";
say "Release 4 Notes (v1.1)[paragraph break]
This release incorporates several fixes based on reviews and feedback from people who played the game during ParserComp 2021 judging.[paragraph break]
• Before he leaves, Humboldt will pick up Wells['] pocket watch off of the street and hand it to you if you have not already picked it up.[line break]
• The ambulance driver is now a person that you can have limited conversation with.[line break]
• In the Clearing you can now Pull, Push, and attempt to Break the grate with another object (previously only Take Grate worked).[line break]
• The time machine fuse will no longer burn out after a single round trip.[line break]
• You no longer need to talk to Mrs. Watchett before successfully finding the key, but it might take several searches of the area to find it.[line break]
• In the Parlor, the attempted taking of coals, ashes, or embers from the fireplace returns an appropriate response.[line break]
• It is now possible to put the watch or any other object down in the Library and retrieve it. In the prior release you were unable to retrieve anything that was put down in the Library, getting a 'It's hardly portable' message when attempting to pick up the previously dropped or place object.[line break]".


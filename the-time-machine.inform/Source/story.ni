The story title is "The Time Machine".
The story author is "Bill Maya".
The story headline is "A Interactive Novella".
The story genre is "Science Fiction".
The release number is 11.
The story description is "Did your good friend Wells really time travel into the future to the year 802,701 A.D. to the age of Eloi and Morlocks? Only you can investigate his story and determine if he is telling the truth or if he is delusional.".
The story creation year is 2021.
 
[ WORDS - 40295 ]

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
"13"	"v2.0"

Volume - Beginning The Story

The player is in Woking Street.
The description of the player is "You rarely think of yourself in those terms, prefering to focus your prodigious logical and legal faculties on the work that your profession and your clients demand.[first time] But if you had to waste time on something so introspect you might describe yourself as a middle-aged man who has reached a certain station in life where success and social esteem allow you to enjoy all the benefits of this modern age.[only] Truly this is the best of times." [Mention something about Wells here?]

Understand "player" or "protagonist" or "lawyer" as yourself. [https://intfiction.org/t/understand-something-else-as-the-player/54102]

The current-year is text that varies.
The current-year is "1895".

The numeric-year is a number that varies.
The numeric-year is 1895.

debug-mode is a truth state that varies.
debug-mode is true.

To say introduction:
	say "'Let me go!'

Wells struggles against the efforts of the two orderlies who are dragging him towards the horse-drawn ambulance parked in the street. Desperate, he pulls himself free and stumbles into you, almost knocking the both of you to the ground.

'My friend, I[']m not crazy,' he says, his eyes desperate and pleading. 'I know my story sounds insane, but it[']s true. Every word of it. You believe me, don[']t you?'

Dr. Humboldt intervenes, placing himself between you and Wells. 'There, there, Wells. Of course we believe you. You just had a terrible shock; you need to rest after all these...time traveling adventures of yours. Plenty of time to sort it all out after you[']ve had a bit of a break. Nothing to worry about.'

You look at the doctor and back at Wells, not knowing whom to believe. Wells is your oldest friend but the doctor makes a good point, especially after the story you[']ve just heard from Wells['] own mouth. Morlocks. Eloi. Time travel. It sounds fantastical.

'I can prove it all,' Wells says. He starts fumbling in his vest pockets, looking for something. 'In my workshop you[']ll find...get your bloody hands off of me!' The orderlies have grabbed Wells a second time. 'No, damn you! Let me go!' 

Wells forgets whatever he was looking for in his pockets and struggles against the orderlies but they[']re prepared this time and manage to overpower your friend and manhandle him into the ambulance. But it[']s a near thing, so violent that Wells['] pocket watch falls to the ground during the struggle.

Humboldt notices your concerned look. 'Don[']t worry,' he says. 'They[']re professionals, used to dealing patients like this all the time. They[']re not being as rough with him as they look.'"

When play begins: 
	now the left hand status line is "[location] - [current-year]";
	[say "[introduction]";]
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
	[refresh the list-inventory window; [??? - does not work]]
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

[Include Epistemology by Eric Eve.
Include Conversation Framework by Eric Eve.
Include Conversation Suggestions by Eric Eve.
Include Conversational Defaults by Eric Eve.]
Include Conversation Package by Eric Eve. [This extension includes the four extensions above it]

Include Flexible Windows by Jon Ingold.

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
The measurement of the list-characters window is 8.

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
The measurement of the list-inventory window is 16.

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

[The original code was taken from the Improved Status Line section of "Bronze" by Emily Short and modified slightly. See https://i7-examples.github.io/Bronze/source_43.html for the original code.]
[
Table of User Styles (continued)
window	style name	background color
all-grid-windows	special-style-1	"#FF0000"

Table of Fancy Status
left	central	right
" [if in darkness]Darkness[otherwise][location] - [current-year][end if]"	""	"[top rose]"
" "	""	"[middle rose]"
" "	""	"[bottom rose]"

To say red reverse:
	say special-style-1;

To say default letters:
	say roman type;

Definition: a room is discernible:
	[if it is the Dank Room and the trapdoor is scenery, no;
	if it is lit, yes;
	if it is the ultimate location of the candle, yes;
	if in darkness, no;]
	yes.

To say top rose:
	let place be the room up from the location;
	if the place is a discernible room, say "[if the place is unvisited][red reverse][end if]U [default letters]"; otherwise say " ";
	let place be the room northwest from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]NW [default letters]"; otherwise say " ";
	let place be the room north from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]N [default letters]"; otherwise say " ";
	let place be the room northeast from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]NE[default letters]"; otherwise say " ".

To say middle rose:
	say " ";
	let place be the room west from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]W [default letters]"; otherwise say " ";
	say " . ";
	let place be the room east from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if] E[default letters]"; otherwise say " ".

To say bottom rose:
	let place be the room down from the location;
	if the place is a discernible room, say "[if the place is unvisited][red reverse][end if]D [default letters]"; otherwise say " ";
	let place be the room southwest from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]SW [default letters]"; otherwise say " ";
	let place be the room south from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]S [default letters]"; otherwise say " ";
	let place be the room southeast from the location;
	if place is a discernible room, say "[if the place is unvisited][red reverse][end if]SE[default letters]"; otherwise say " ".

Rule for constructing the status line:
	fill status bar with Table of Fancy Status;
	say default letters;
	rule succeeds. 
]

Part - Before Rules

Chapter - Listening

Before listening:
	if the player is in Woking Street:
		say "The sound of the wind nearly obscures the normal sounds of the city at this time of night.";
		stop the action;
	else if the player is in the Clearing:
		say "Nature sounds mixed in with the sound of the wind through the trees.";
		stop the action;
	else if the player is in the Top Well: 
		say "The faint sounds of machinery mingle with the natural sounds of the clearing.";
		stop the action;
	else if the player is in the Bottom Well:
		say "The sound of machinery is louder now and seems to come from every direction.";
		stop the action;
	else if the player is in the Dining Room:
		say "[if the location of Watchett is the Kitchen] Through the kitchen door you can hear faint sounds of movement and work.[otherwise]You hear nothing unexpected.[end if]";
		stop the action;
	otherwise:
		continue the action.

Part - Instead-Of Rules

Chapter - Waiting

Instead of waiting: say 
	"[if location is Woking Street]You shiver in the cold wind, drawing your light jacket closer around you. You really should get inside since you're not dressed appropriately for this winter weather.
	[otherwise]Time passes."

Chapter - Up

Instead of jumping in Woking Street: try going up.
Instead of going up in Woking Street: say "You jump up and down a few times, trying to warm yourself up, but it's a lost cause. Better get inside."

Instead of going up in the Entryway: say "You wander around upstairs for a few minutes but find nothing of interest and return downstairs."

Chapter - Using

Instead of using things: say "You'll have to be more specific."

Chapter - Attack

To say no-violence: say "Violence [aren't] the answer here and quite out of character, given your years of jurisprudence and respect for the law."

Instead of attacking someone with something: say "[no-violence]".
Instead of attacking someone: say "[no-violence]".

[Instead of attacking something with something: say "Violence of this sort isn't relevent to your investigation."]

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

Chapter - Parlor

Every turn:
	if a breaker (called fuse) [working-fuse] is in the right panel:
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

turns-since-attack is a number that varies.
turns-since-attack is 0.

[The Morlocks will get bolder after each attack so the time interval between attacks will be less.]
boldness-morlocks is a number that varies.
boldness-morlocks is 0.

This is the morlock attack rule:
	if the player is in the Year-802701-Underground:
		if the visibility of the location of player is not day:
			if player-has-light is false:
				if morlocks-attacked is false:
					if the visibility of the location of player is shadow:
						if a random chance of 25 in 100 succeeds:
							say "[morlocks-attack]";
							now morlocks-attacked is true;
							now boldness-morlocks is boldness-morlocks + 1;
							follow the morlock fight rule;
						otherwise:
							say "[sounds-scuttling]";
					otherwise: 
						if the visibility of the location of player is twilight:
							if a random chance of 50 in 100 succeeds:
								say "[morlocks-attack]";
								now morlocks-attacked is true;
								now boldness-morlocks is boldness-morlocks + 1;
								follow the morlock fight rule;
							otherwise:
								say "[sounds-scuttling]";
						otherwise:
							if a random chance of 75 in 100 succeeds:
								say "[morlocks-attack]";
								now morlocks-attacked is true;
								now boldness-morlocks is boldness-morlocks + 1;
								follow the morlock fight rule;
							otherwise:
								say "[sounds-scuttling]";
				otherwise:
					say "[morlocks-follow]";
					now turns-since-attack is turns-since-attack + 1;
					if turns-since-attack is 3 - boldness-morlocks:
						now turns-since-attack is 0;
						now morlocks-attacked is false;

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
			say "[taken-to-holding-pen]";
			now the player is in Holding Pen;
	otherwise:
		say "[captured-by-morlocks]";
		say "[taken-to-holding-pen]";
		now the player is in Holding Pen;

[Morlock Underground Substitution Text]

To say morlocks-attack:
	say "Before you can take another step you're beset from all sides by shadowy brutes from the surrounding darkness—Morlocks!"

To say sounds-scuttling:
	say "All around you can hear scuttlings and mutterings of vague shadowy figures, almost indistinguishable from the pitch black darkness that surrounds you."

To say morlocks-follow:
	say "[sounds-scuttling]".

To say attack-morlocks-1:
	say "Swinging the poker wildly around you manage to drive the loathsome creatures away. But it appears only temporary as they gather just out of reach, muttering and gobbling to themselves in their strange tongue, obviously regrouping for another attack."
	
To say attack-morlocks-2:
	say "Slightly weaker now, you still manage to drive the Morlocks away temporarily. They retreat, wary but ready to attack again."
	
To say attack-morlocks-3:
	say "You attempt to drive the Morlocks off again but in your tired condition you are overpowered by their boldness and their sheer numbers and manhandled into the darkness."
		
To say captured-by-morlocks:
	say "You strike back at the shadowy figures grabbing at you but are soon overpowered by sheer numbers and knocked to the ground, stunned."

To say taken-to-holding-pen:
	say "MORLOCKS TAKE YOU TO HOLDING PEN."

Chapter - Debug

Every turn:
	if debug-mode is true: 
		focus debug-info window;
		clear debug-info window;
		say "morlocks-attacked: [morlocks-attacked][line break]";
		say "turns-since-attack: [turns-since-attack][line break]";
		say "boldness-morlocks: [boldness-morlocks][line break]";
		say "fought-off-morlocks: [fought-off-morlocks][line break]";
		focus main window.

Part - Conversation

Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").

[Understand "talk to [someone] about [something]" as a mistake ("AUTOMATICALLY TRY THIS AS 'ask someone about something'").]
[The "talk to [someone] about [something] as a mistake" line above doesn't work like I want it to.

 > talk to humboldt about wells returns "You can't see any such thing."
 > talk to humboldt about ambulance returns the "AUTOMATICALLY TRY..." text

The [something] has to exist for the 2nd part of the Understand/as a mistake statement to be reached. Wells doesn't exist in the game but the ambulance does.]

Part - Take All

[https://bit.ly/3xV8H3P]

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.

[This changes the default message “There are none at all available!”]
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say “Grabbing for everything at once isn't going to help your investigation one bit. A methodical, measured approach is called for.”

Part - Tests

[In the game type "> test" to see a list of all the available tests]

[Current]
Test goto-kitchen with "north /north / west/ north / north / north." [from Woking Street]

[v1.0 Tests]
Test goto-dining with "north / west / north / north." [from Woking Street]
Test house-look with "x other houses / x residences". [from Woking Street]
Test kitchen-desc with "x work table / x cabinets / x kitchen shelves / x stove / x sink / x work area." [from Kitchen]
Test humboldt-woking-talk with "ask humboldt about wells / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about workshop / ask humboldt about time machine."
Test take-encyc with "take encyclopaedia / take encyclopaedia / take encyclopaedia / take encyclopaedia / take encyclopaedia."
Test take-book with "take book / take book / take book / take book / take book / take book."
Test take-mag with "take periodical / take periodical / take periodical / take periodical / take periodical."  
Test tend-fire with "tend fire / take poker / tend fire / drop poker / tend fire."
Test circular-shaft-look with "x shaft / take grate / x shaft."
Test clearing-sphinx-se with "go southeast / go up / go down / go southeast."
Test clearing-balcony-se with "go southeast / go east / go east / go south / go north / go west / go west / go southeast."
Test eloi-ask-show-give with "purloin watch / purloin poker / purloin key / purloin petal / go southeast."
Test travel-802701 with "test prepare-time-machine / enter / activate panel / exit / east / east / south / north / west / west / test eloi-ask-show-give."
Test travel-1895 with "go northwest / enter / activate panel."
Test endgame-humboldt with "test travel-802701 / show eloi watch / show weena petal / test travel-1895 / exit."
Test goto-802701 with "purloin key / purloin fuse / n /unlock workshop door with key / n / flip switch / examine blueprints / put fuse in time machine. / get in time machine / press button."
Test prep-time-machine with "purloin fuse / examine blueprints / put fuse in control panel."
Test weena-flower with "take watch / go north / test goto-workshop / test prep-time-machine / enter / press button / exit / go east / go east / go south / go north / go west / go west / go southeast / show watch to eloi."

Test wtm with "test goto-workshop / test prep-time-machine."

Test 802701 with "test wtm / enter / press button."
Test eloi with "test 802701 / exit / go east / go east / go south / go north / go west / go west / go southeast."

Test weena-endgame with "test eloi / show eloi the watch / show weena the petal / go northwest / enter time machine / press button / exit."

Test to-morlocks with "test 802701 / exit / remove grate / get in shaft / go down."
Test to-watchett with "go north / take pocket watch / go north / go west / go north / take poker / go north / open panel / take fuse / go north."

Test walkthrough with "take pocket watch / go north / go north / go west / go north / go north / examine orrery / open panel / examine mechanism / take fuse / go north / ask watchett about key / go south / go south / go south / go east / go south / search area / go north / unlock workshop door with key / go north / flip switch / search workbench / examine blueprints / enter time machine / examine control panel / put fuse in control panel / press button / exit / go east / go east / go south / go north / go west / go west / go southeast / show eloi the watch / show weena the petal / go northwest / enter time machine / press button / exit / show humboldt the flower."

Test poker with "go south / go west / go north / take poker / go east."
Test wtm-poker with "test wtm / test poker."

[v1.1 Tests]
Test search-area with "search area / search area / search area / search area."

[v1.4 Tests]
Test xpl-802701 with "test go-802701 / exit / x statue / e / e / s / n/ w / w / se / nw / enter time machine / push lever." [This will take you to 802,701 and back]

[v1.5 Tests]
Test eloi-r8 with "test go-802701 / exit / e / e / s / n / w / w / se."
	
[v1.6 Tests]
Test weena-r9 with "test go-802701 / exit / e / e / s / n / w / w / se / show watch to eloi."

[v1.7 Tests]
Test newspaper with "look / take newspaper / look / put newspaper on left armchair / look / take newspaper / put newspaper on right armchair / look."
			
[v1.8 Tests]
Test end1 with "test xpl-802701 / exit."
Test end2 with "test fp-time / take time machine fuse / put orrery fuse in fuse holder / close panel / exit / push lever."
Test end3 with "tell humboldt about time travel / tell humboldt about eloi / tell humboldt about weena / tell humboldt about morlocks."

Test unlock-workshop with "go north / purloin key / unlock workshop door with key." [Moved from v1.0 Tests]
Test get-matches with "go west / ask gernsback for cigar / ask gernsback for matches / go east."
Test goto-workshop with "go north / test unlock-workshop / test get-matches / go north / flip switch." [Moved from v1.0 Tests]

test fp-time with " test goto-workshop / get in time machine / unlock hinged panel with key / open hinged panel / purloin orrery fuse / purloin poker." [Moved from Section - Tests | Time Machine | Fuses]
Test go-802701 with "test fp-time / take time machine fuse / put orrery fuse in time machine fuse holder / push lever." [Moved from v1.4 Tests]
Test go-underground with "test go-802701 / exit / remove grate / climb in well / down."

Part - Release

Release along with cover art ("The Time Machine") and an interpreter.

Volume - Settings

Book - 1895

Part - Woking Street

Woking Street is a room. 
The description of Woking Street is "You are standing halfway down the street outside of Wells['] house. A heavy snowfall wafts down, undisturbed except for the [area] directly in front of you[if ambulance is in Woking Street] where the ambulance is parked.[otherwise] where the scuffle with Wells happened.[end if][paragraph break]The front door is to the north[first time], the light escaping from the drawn curtains to one side looking invitingly warm[only].[first time] To the west, the flickering [gaslights] in the square seem much further away than fifty paces. To the east, the street dead-ends into a small [cul-de-sac].[only]"

The printed name of Woking Street is "68 Woking Street".

Chapter - Area

The area is scenery in Woking Street.
The area is a supporter.
The description of the area is "[if watchett-key is false]Directly in front of you the falling snow is rapidly covering the signs of the struggle.[otherwise if player has the key]Directly in front of you the falling snow is rapidly covering the signs of the struggle.[otherwise]The glint of something metallic catches your eye.[end if]"

Understand "footsteps" or "carriage tracks" or "area of the street" or "street area" as area.

[> search street -> YCST -> https://bit.ly/3tvvi3z]

The street-search is scenery in Woking Street. ["The street is scenery in Working Street" won't compile]
Understand "street" as street-search.
The printed name of street-search is "street".

Instead of examining the street-search: say "The falling snow covers the entire street evenly except for the area immediately in front of you." [try searching the area.]
Instead of searching the street-search: try searching the area.

[> search area]

area-search is a number that varies.
area-search is 0. [You haven't searched the area yet]

To say find-key:
	[say "FIND KEY - watchett-key: [watchett-key], area-search [area-search]".]
	say "[fk-weather] [fk-action] [fk-result]".
	
To say no-find-key:
	[say "NO FIND KEY - watchett-key: [watchett-key], area-search [area-search]".]
	say "Despite a [nfk-weather] [nfk-action] [nfk-result]".
	
To say nfk-weather:
	say "[one of]severe[or]frigid[or]freezing[or]cold[or]bitter[or]bitterly cold[or]frosty[or]icy[or]icey[or]ice-cold[or]numbing[or]wintry[or]wintery[purely at random] [one of]gust[or]flurry[or]burst[or]blast[purely at random] [one of]of wind[or]of snow[or]of wind and snow[purely at random]".
	
To say nfk-action:
	say "you [one of]kick the snow around with your feet[or]bend down and search through the snow[or]shovel some snow to one side to expose the street below[or]push the snow in all directions[purely at random]".
	
To say nfk-result:
	say "without [one of]finding anything.[or]success.[or]any luck.[or]finding anything but the street beneath.[purely at random]".
	
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
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 2: 
				if a random chance of 15 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 3: 
				if a random chance of 45 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 4: 
				say "[find-key]";
				now the player is carrying the metal key;				
		otherwise:
			if area-search is 1: 
				if a random chance of 75 in 100 succeeds:
					say "[find-key]";
					now the player is carrying the metal key;
				otherwise: 
					say "[no-find-key]";
			otherwise if area-search is 2: 
				say "[find-key]";
				now the player is carrying the metal key;
			otherwise if area-search is greater than 2: 
				say "[find-key]";
				now the player is carrying the metal key;
	otherwise:
		say "You find nothing further of interest after searching the area again."

Instead of going down in Woking Street: try searching the area.


Chapter - Scenery

	[Snow is handled in the Garden]

	The gaslights are scenery in Woking Street. [coal gas https://bit.ly/3ijMeoV ] 
	The description of the gaslights are "The incandescent globes of light hold steady against the early winter darkness and swirling snow. Wells says there is talk of replacing them with something called electrical fixtures, which you hope is a product of his overactive imagination, because you would miss the soft green glow of gassified coal that lights your nightime steps."
	Understand "gas" or "gas lights" or "flickering" or "flickering lights" or "flickering gas lights" as gaslights.

	The cul-de-sac is scenery in Woking Street.
	The description of the cul-de-sac is "A small roundabout with a sputtering [fountain] in the center terminates the street to the east."
	Understand "close" or "dead end" or "impasse" or "blind alley" or "dead-end" or "dead-end street" or "roundabout" or "cul de sac" or "end of street" as cul-de-sac. 
	
	The fountain is scenery in Woking Street.
	The description of the fountain is "The water in the small, sputtering fountain vainly battles to remain upright against the frigid winter wind that swirls around the enclosed area."
	Understand "water" or "sputtering" or "sputtering fountain" or "small fountain" or "small" as fountain.
	
	The square is scenery in Woking Street.
	The description of square is "During the day the road that intersects perpendicularly with Woking Street and the park beyond is live with carriages and pedestrians, even during this season. But now, at night and in this weather, both are empty except for the occasional carriage or pedestrian hurrying to a warmer location."
	Understand "park" or "open space" or "municipal park" or "intersection" or "urban park" or "crossroads" or "main street" or "common" or "greenery" or "green park" as the square.

	The houses are scenery in Woking Street.
	The printed name of houses are "houses in the cul-de-sac".
	The description of houses are "[first time]Twenty or thirty terraced houses ring the circular cul-de-sac, uniform in height and facade, each sharing walls with their neighbors except for the end-terrace units to the west. [paragraph break][only]Nothing much has changed since you last glanced around. [first time]Most of the houses are dark at this time of night, though scattered lights show in the odd window, probably due to the recent commotion. Maybe one or two of the lights have gone off as those residents have gone back to sleep.[only]"
	
	Understand "other houses" or "dark houses" or "buildings" or "other buildings" or "windows" or "lit windows" [or "residences" or "other residences"] as houses.
		
	The wells-house is scenery in Woking Street.
	The printed name of wells-house is "Wells['] house".
	The description of wells-house is "68 Woking Street, where your friend Wells has lived for many years, which you have visited many times as friend and solicitor."
	Understand "building" [or "residence"] or "house" as wells-house.

	[When examining, having "residence" or "residences" or "other residences" as synonyms 
	made parser ask if you were examining houses or well-house so commented them out for now.]
	
Chapter - Wandering

	Going west in Woking Street is wandering.
	Going northwest in Woking Street is wandering.
	Going northeast in Woking Street is wandering.
	Going east in Woking Street is wandering.
	Going southeast in Woking Street is wandering.
	Going south in Woking Street is wandering.
	Going southwest in Woking Street is wandering.
	
	Instead of wandering:
		say "You start walking away from the front door towards [if the noun is west]the intersection[else if the noun is east][one of]the fountain[or]the cul-de-sac[purely at random][otherwise]one of the other houses[end if] but a sudden [one of]frigid[or]cold[or]bitter[or]frosty[or]ice-cold[or]numbing[or]wintery[or]icy[purely at random] [one of]gust[or]flurry[or]burst[or]blast[purely at random][one of] of wind[or] of snow[purely at random] makes you reconsider. You really should get inside since you're not dressed appropriately for this winter weather."

Chapter - Humbolt's Exit

Instead of going north in Woking Street: 
	if Humboldt is not nowhere:
		say "Before you can leave, [if player is not carrying the pocket watch]Humboldt bends down and picks up Wells pocket watch from the street and hands it to you. 'Better hold on to this until I get back.' He [otherwise]Dr. Humboldt snaps his pocket watch shut and [end if]climbs into the ambulance. 'I[']ll return after I get Wells sedated and through the preliminaries. While I[']m gone, see if you can find the rest of this.' He hands you a single petal from a flower that Wells says was given to him by Weena in 802,701 A.D.

		'See if you can find the rest of this flower somewhere inside. Maybe it[']s in that workshop of his. Check with Mrs. Watchett, she should know where the workshop key is. Finding the rest of the flower might help us convince Wells that all this time travel nonsense of his is just a figment of his imagination. Talk to Mrs. Watchett.'

		With that he swings the rear doors shut. The driver cracks the reins and the ambulance starts down the street, turns the corner, and disappears.";
		reset the interlocutor;
		now Humboldt is nowhere; 
		now the ambulance is nowhere;
		now the orderlies are nowhere;
		now the driver is nowhere;
		now the player is carrying the petal;
		now the player is carrying the pocket watch;
		try looking;
	otherwise:
		continue the action.

Chapter - Front Door

	The front door is north of Woking Street and south of the Entryway. 
	The front door is a door. 
	It is openable and lockable. 
	It is unlocked.
	The front door is scenery.

	The description of the front door is "[if location is Woking Street]The door to 68 Woking Street is indistinguishable from every other door that lines the street.[otherwise]You see nothing special about the heavy wooden door leading to the street outside."
	
Instead of attacking the front door with the poker: say "The front door isn't locked so I don't see why you would think you had to pry it open.";
Instead of attacking the front door with something: say "Violence isn't the answer here."
	
Chapter - Ambulance
	
The ambulance is a opaque container [thing] in Woking Street.
The description of the ambulance is "The horse-drawn ambulance resembles a private carriage that has been adapted for medical use. The driver waits impatiently in his enclosed glass cab at the front. Large rear doors at the back allow a patient, orderlies, and doctor to enter and exit the vehicle."
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
The description of metal key is "A small metal key to his workshop that you can recall Wells carrying around everywhere he went."
Understand "glint" or "key" or "metallic" or "metallic object" as metal key.

The metal key unlocks the workshop-door.
The metal key unlocks the hinged panel.
		
Chapter - The Petal
	
The petal is a thing.
The petal is nowhere.
The description of the petal is "With its luminous colors it is not like any flower petal you have ever seen. Still, you can't tell much from a single petal. Perhaps the rest of the blossom is inside somewhere." ["...inside somewhere" What if you're inside the house? Or in 802,701? Conditional description?]
		
Chapter - Pocket Watch

The pocket watch is a thing.
The pocket watch is in Woking Street.
[The pocket watch is portable.]
Understand "timepiece" or "chronometer" or "hands" or "stem" as pocket watch.

The description of the pocket watch is "A simple pocket watch, given to Wells by his father. Thinking back on his story about time travel, you remember that Wells['] Weena was particularly enchanted with its moving hands and its winding mechanism."
	
Instead of using the pocket watch: say "It[']s getting late. Doctor Humboldt will be back soon."
	
Winding is an action applying to one touchable thing.
Understand "wind [something]" as winding.
Instead of winding the watch: say "You turn the stem back and forth a few seconds, killing time and gathering your thoughts."


Part - Entryway

The Entryway is a room. 
The description of the Entryway is "From here you can reach all other parts of the house.[paragraph break]To your right, an ornately-carved [banister] parallels a [staircase] that leads up to the second floor landing. To the west is the library. To the north is the [if workshop-door is open]open[otherwise]closed[end if] door of Wells[apostrophe] workshop. The front door is to the south."

	The staircase is fixed in place in the Entryway. 
	The description of the staircase is "Stairs going up to the second floor.[first time] You have to admit, you haven't ever been up there.[only]"

	Understand "stairs" or "steps" as staircase.
	
	The banister is fixed in place in the Entryway.
	The description of the banister is "Just a normal handhold to grasp when going up and down the stairs."
	
	Understand "handrail" or "rail" or "railing" or "balustrade" or "guardrail" or "handhold" or "bannister" as banister.

Before taking books in the Entryway: say "BOOKS IN NEXT ROOM."

Chapter - Workshop Door
	
The workshop-door is north of the Entryway and south of the Workshop. 
The workshop-door is a door. 
The workshop-door is lockable. The workshop-door is locked.
The workshop-door is scenery. [Not "undescribed." Couldn't walk through it if it was "undescribed." See https://bit.ly/3rdieyO ]
Understand "workshop door" or "door" or "door of workshop" as workshop-door. 
The printed name of workshop-door is "workshop door".

Instead of examining the workshop-door:
	say "The door leading to Wells[apostrophe] workshop. The door is [if workshop-door is open]open[otherwise]closed[end if]."

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

Instead of attacking the workshop-door with the poker: say "Even if you could somehow manage to open the workshop door this way, you would damage the woodwork beyond repair." ["NO NO NO."]
Instead of attacking the workshop-door with something: say "Violence isn't the answer here."

Part - Library

The Library is a room. 
The Library is west of the Entryway. 
The description of the Library is "A desk and a leather chair positioned near the drawn curtains are the only things in the room besides a variety of books, periodicals, and encyclopaedia that fill the floor-to-ceiling shelves on the three walls.[paragraph break][if the location of Gernsback is the Library]Gernsback is sitting in the chair, reading his book.[end if] The room continues to the north and the entryway is back east."

Chapter - Printing Library Description

[https://bit.ly/3NyqyEz]
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
The description of shelves is "Holding books and periodicals of all types as well as a set of encyclopaedia."
Understand "shelf" as shelves.

[Writing §4.5. Kinds of value]
[Writing §4.8. New value properties, Example 48]
[Writing §4.9. Using new kinds of value in properties]

Bookness is a kind of value. The booknesses are reference, magazine, and hardcover.

The books are a thing. [What if some of the books are from the future?]
The books have a bookness called type-of-reading. The type-of-reading of the books is hardcover.
The books are scenery on the shelves.
The description of books is "BOOKS DESCRIPTION." [Should not be displayed because of > examine books code in Section 1 below (included to keep books from showing up when Missing Item Description code is run).]
Understand "book" as books.

The periodicals are a thing.
The periodicals have a bookness called type-of-reading. The type-of-reading of the periodicals is magazine.
The periodicals are scenery on the shelves.
The description of periodicals is "PERIODICALS DESCRIPTION." [Should not be displayed because of > examine periodicals code in Section 1 below (included to keep periodicals from showing up when Missing Item Description code is run).]
Understand "magazine" or "magazines" as periodicals.

The encyclopaedia are a thing.
The encyclopaedia are scenery on the shelves.
The encyclopaedia has a bookness called type-of-reading. The type-of-reading of the encyclopaedia is reference.
The description of encyclopaedia is "ENCYCLOPAEDIA DESCRIPTION." [Should not be displayed becuase of > examine encyclopaedia code in Section 1 below (included to keep encyclopaedia from showing up when Missing Item Description code is run).]
Understand "encyclopedia" or "encyclopaediae" or "encyclopedias" as encyclopaedia.

Chapter - Furniture

The furniture is a thing.
The furniture is scenery in the Library.
Instead of examining the furniture, say "You'll have to be more specific about what you're interested in examining."

The desk is a thing.
The desk is scenery in the LIbrary.
The desk is a supporter.
The description of the desk is "A small standing desk with a few handwritten papers on it."
Instead of searching the desk, say "You quickly shuffle through the papers on the desk but find nothing of interest."
	
The library papers are a thing.
The library papers are on the desk.
The library papers are portable.
The library papers are undescribed.
The printed name of library papers is "papers".
Understand "paper" or "papers" or "handwritten" or "handwritten papers" as library papers.

Instead of searching the library papers: try searching the desk.
Instead of examining the library papers: try searching the desk.
Before taking the library papers:
	say "That wouldn[']t be appropriate.";
	stop the action.

The chair is a thing.
The chair is scenery in the Library.
The chair is a supporter.
The chair is enterable.
The description of the chair is "The small chair covered in worn leather positioned near the curtains."
Understand "leather" as chair.

The curtains are a thing.
The curtains are scenery in the Library.
The curtains are a container.
The description of the curtains is "Pulled shut, the floor-to-ceiling heavy fabric wards the room from the cold weather outside."
Understand "curtain" as curtains.
Instead of opening the curtains, say "Pulling a curtain aside you glance at the snow-covered street. The falling snow is rapidly covering the disturbed area where the ambulance was a few minutes ago. You let the fabric drop back into place and look around the room."

Instead of pushing the curtains: try opening the curtains.
Instead of searching the curtains: say "You look in the folds of the fabric but find nothing."

[Writing §4.3. Degrees of certainty, Example 44 - different default messages for something nondescript]
[Writing §7.1. Actions]

Chapter - Reading

Instead of examining books: try taking books.
Instead of examining periodicals: try taking periodicals.
Instead of examining encyclopaedia: try taking encyclopaedia

Instead of searching the books: try taking books.
Instead of searching the periodicals: try taking periodicals.
Instead of searching encyclopaedia: try taking encyclopaedia.

Instead of searching the shelves: say "A frequent visitor, the items on the shelf are vaguely familiar, though nothing really catches your interest."

[Maybe don't make it random but chose a new one each time and never choose the same one twice?]
Instead of taking something in the Library:
	if the noun provides the property type-of-reading:
		if the type-of-reading of the noun is reference:
			choose a random row from Table of Encyclopaedia Volumes; 
			say "You take the volume labeled '[Label entry]' and leaf through the pages from '[Start-Word entry]' to '[End-Word entry]' until you get bored and place the volume back on the shelf.";
		else if the type-of-reading of the noun is magazine:
			choose a random row from Table of Periodicals;
			say "You take a copy of '[Name entry]' off the shelf and leaf through [Note entry] before placing it back with the other issues.";
		else if the type-of-reading of the noun is hardcover:
			choose a random row from Table of Books;
			say "You take a copy of '[Name entry]' off the shelf and leaf through a few pages before placing it back on the shelf.";
		otherwise:
		 	say "READING [the type-of-reading of the noun].";
	otherwise:
		[say "That's hardly portable.".]
		continue the action.

[> read book / read periodical / read encyclopaedia ]
		
Understand the command "read" as something new.
Understand "read [something]" as taking.

Table of Encyclopaedia Volumes [https://bit.ly/2PQqQyo https://bit.ly/31CR89W]
Volume	Label 	Start-Word	End-Word	Publish-Date
1	"A-Anatomy"	"A"	"Anatomy"	1875
2	"Anaxagoras-ATH"	"Anaxagoras"	"Athenry"	1875
3	"Athens-BOI"	"Athens"	"Boissonade"	1875
4	"BOK-CAN"	"Bokhara"	"Canoe"	1876
5	"Canon-Cleves"	"Canon"	"Cleves"	1876
6	"CLI-DAY"	"Clichy"	"Dayton"	1877
7	"DEA-ELD"	"Deacon"	"El Dorado"	1877
8	"ELE-FAI"	"Eleanor"	"Fakir"	1878
9	"FAL-FYZ"	"Falaba"	"Fyzabad"	1879
10	"G-GOT"	"G"	"Gotz"	1879
11	"GOU-Hippopotamus"	"Gouda"	"Hippopotamus"	1880
12	"HIR-IND"	"Hiring"	"Indus"	1881
13	"Infant-Kant"	"Infant"	"Kant"	1881
14	"Kaolin-LON"	"Kaolin"	"Lons-Le-Saulnier"	1882
15	"Loo-Memphis"	"Loo"	"Memphis"	1883
16	"MEN-MOS"	"Mena"	"Mosul"	1883
17	"MOT-ORM"	"Motanabbi"	"Ormuzd"	1884
18	"Orne-Phthisis"	"Orne"	"Phthisis"	1885
19	"PHY-PRO"	"Phylactery"	"Provins"	1885
20	"PRU-ROS"	"Prudentius"	"Rostoff"	1886
21	"ROT-Siam"	"Rothe"	"Siam"	1886
22	"SIB-SZO"	"Sibbald"	"Szolnok"	1887
23	"T-UPS"	"T"	"Upsala"	1888
24	"URA-ZYM"	"Ural-Altaic"	"Zymotic"	1888
[25	"Index"	--	--	1889]

Table of Periodicals [https://bit.ly/3sJ5Fwv https://bit.ly/3ftZQiV https://bit.ly/3cIvlnE]
Name	Start-Date	End-Date	Note
"Chemist + Druggist"	1859	2016	"articles about pharmacists and pharmacology" [https://bit.ly/3doBN2a]
"The New Age"	1894	1983	"articles inspired by Fabian socialism" [https://bit.ly/2QSXEHj]
"The Strand Magazine"	1891	1950	"some short fiction and general interest articles" [https://bit.ly/39AXM4W]
"The Ludgate Monthly"	1891	1901	"some short fiction and articles of general interest" [https://bit.ly/2R13qqF]
"The Observatory"	1877	--	"articles devoted to astronomy" [https://bit.ly/3djX5Oo]
"Mind"	1876	--	"articles about analytic philosophy and psychology" [https://bit.ly/39ymVNx 1895]
"Amateur Photographer"	1884	--	"articles, like the title says, about amateur photography" [https://bit.ly/3wkC92z]
"The Railway Magazine"	1897	--	"articles for the railway enthusiast" [https://bit.ly/39AX2fU]
"The Dome"	1987 	1900	"articles about the 'decadent' visual and verbal arts" [https://bit.ly/2PhTzfD]
"Model Engineer"	1898	--	"articles about model construction and experimental engineering" [https://bit.ly/2PoC11f]
"Geological Magazine"	1864	--	"articles on observational geology, mineralogy, and palaeontology" [https://bit.ly/3fETb5g]
"Scientific American"	1845	--	"articles about patents and popular science" [https://bit.ly/2PsChwf]
"Nature"	1869	--	"articles about a variety of academic disciplines, mainly science and technology" [https://bit.ly/3duivbP]
"Philosophical Transactions of the Royal Society: Mathematical, Physical, and Engineering Sciences"	1887	--	"articles focusing on the physical sciences" [https://bit.ly/3sLTaQX]
"Philosophical Transactions of the Royal Society B: Biological Sciences"	1887	--	"articles focusing on the life sciences" [https://bit.ly/3sLTaQX]

Table of Books
Name	Author	Publish-Date
"The Voyage of the Beagle"	"Charles Darwin"	1845
"The Origin of Species"	"Charles Darwin"	1859
"Mathimatical Pinciples of Natural Philosophy"	"Isaac Newton"	1687
"Dialogue Concerning the Two Chief World Systems"	"Galileo Galilei"	1632
"Physica"	"Aristotle" 	300
"On the Revolutions of Heavenly Spheres"	"Nicolause Copernicus"	1543
"The Insect Societies"	"Edward O. Wilson"	1971
"Relativity: The Special and General Theory"	"Albert Einstein"	1916
"The Selfish Gene"	"Richard Dawkins"	1976
"Vestiges of the Natural History of Creation"	"Robert Chambers"	1844
"The Principles of Geology: Being an Attempt to Explain the Former Changes of the Earth's Surface"	"Charles Lyell"	1833
"The Student's Elements of Geology"	"Charles Lyell"	1870
"Travels in North America, Canada, and Nova Scotia: With Geological Observations"	"Charles Lyell"	1855
"On the Connexion of the Physical Sciences"	"Mary Somerville"	1834
"Preliminary Discourse on the Study of Natural Philosophy"	"John F.W. Herschel"	1851
"The Science of Life: An Outline of the History of Biology and its Recent Advances"	"J. Arthur Thomson"	1899
"Sea-Side Studies at Ilfracombe, Tenby, the Scilly Isles, & Jersey"	"George Henry Lewes"	1858
"The Warden"	"Anthony Trollope"	1855
"North and South"	"Elizabeth Gaskell"	1855
"Jane Eyre"	"Charlotte Brontë"	1847
"The Tenant of Wildfell Hall"	"Anne Brontë"	1848
"The Moonstone"	"Wilkie Collins"	1868
"Vanity Fair"	"William Makepeace Thackeray"	1848
"Wuthering Heights"	"Emily Brontë"	1847
"Bleak House"	"Charles Dickens"	1853
"Tess of the d'Urbervilles"	"Thomas Hardy"	1891
"Middlemarch"	"George Eliot"	1872
"Erewhon"	"Samuel Butler"	1872
"The Coming Race"	"Edward Bulwer-Lytton"	1871
"The Fixed Period"	"Anthony Trollope"	1882
"The Land of Darkness"	"Margaret Oliphant"	1887
"The Old Nurse's Story"	"Elizabeth Gaskell"	1852
"An Account of Some Strange Disturbances in Aungier Street"	"Sheridan Le Fanu"	1853
"The Signal-Man"	"Charles Dickens"	1866
"Was It An Illusion?"	"Amelia B. Edwards"	1881
"The Open Door"	"Charlotte Riddell"	1882
"The Body Snatcher"	"Robert Louis Stevenson"	1884
"The Canterville Ghost"	"Oscar Wilde"	1887
"At the End of the Passage"	"Rudyard Kipling"	1890
"The Turn of the Screw"	"Henry James"	1988
"A Tale of Two Cities"	"Charles Dickens"	1859
"Our Mutual Friend"	"Charles Dickens"	1865
"The Pickwick Papers"	"Charles Dickens"	1837
"A Christmas Carol"	"Charles Dickens"	1843
"Great Expectations"	"Charles Dickens"	1861
"David Copperfield"	"Charles Dickens"	1850
"Rip Van Winkle"	"Washington Irving"	1819
"A Tale of the Ragged Mountains"	"Edgar Allen Poe"	1844
"A Connecticut Yankee In King Arthur's Court"	"Mark Twain"	1889
"Sylvie and Bruno"	"Lewis Carroll"	1889
"Sylvie and Bruno Concluded"	"Lewis Carroll"	1893
"Alice's Adventures in Wonderland"	"Lewis Carroll"	1865
"Through the Looking-Glass"	"Lewis Carroll"	1871
"The Hunting of the Snark"	"Lewis Carroll"	1876
"What the Tortoise Said to Achilles"	"Lewis Carroll"	1895
"Euclid and his Modern Rivals"	"Lewis Carroll"	1979
"The Game of Logic"	"Lewis Carroll"	1887
"Phantasmagoria and Other Poems"	"Lewis Carroll"	1869
"The Life of George Washington"	"Washington Irving"	1859



Part - Parlor

The Parlor is a room. 
The Parlor is north of the Library.
The description of the Parlor is "A coal fire blazes away in a large fireplace set into the west wall. On the fireplace mantle is an orrery[if poker is in Parlor] and leaning against the fireplace is a poker.[otherwise].[end if][if the newspaper is on the left armchair] A newspaper rests on the left armchair.[otherwise if the newspaper is on the right armchair] A newspaper rests on the right armchair.[end if][paragraph break]A set of glass doors to the east leads outside and the room continues to the north."

[ Description taking Gernsback into account
The description of the Parlor is "A coal fire blazes away in a large fireplace set into the west wall. On the fireplace mantle is an orrery[if poker is in Parlor] and leaning against the fireplace is a poker.[otherwise].[end if][if the location of Gernsback is the Parlor] Gernsback is sitting in the right armchair in front of the fireplace, paging through his book.[end if][if the newspaper is on the left armchair] A newspaper rests on the left armchair.[otherwise if the newspaper is on the right armchair] A newspaper rests on the right armchair.[end if][paragraph break]A set of glass doors to the east leads outside and the room continues to the north."
]

Chapter - Armchairs

To say armchair-description:
	say "Like its counterpart this armchair is covered in worn leather. Larger than its library counterpart, it looks even more inviting and comfortable, especially positioned as it in front of the fire with the cold weather outside.[first time] But you don't have time to rest, you have a key to find.[only]"

The right armchair is a thing.
The right armchair is scenery in the Parlor.
The right armchair is a supporter.
The right armchair is enterable.
The description of the right armchair is "[armchair-description]".

The left armchair is a thing.
The left armchair is scenery in the Parlor.
The left armchair is a supporter.
The left armchair is enterable.
The description of the left armchair is "[armchair-description]".

To say armchair-sit:
	say "Well, maybe just for a minute while you gather your thoughts. You sit in the [noun]."

Before entering the right armchair:
	if the location of Gernsback is the Parlor:
		say "Impossible while Gernsback is sitting in it.";
		stop the action;
		[move the player to the left armchair, without printing a room description;]
	otherwise:
		continue the action.

Instead of entering the right armchair: say "[armchair-sit]".
Instead of entering the left armchair: say "[armchair-sit]".

[TBD: If the player is sitting in one of the armchairs and tries to sit in anoher armchair, that should be detected and the appropriate text should be printed, i.e. "You get up and move to the other armchair."]

[TBD: >get up "But you aren't in anything at the moment." Response while sitting in left armchair.]
	
[
Force following NPC to sit down on the other chair - https://bit.ly/3wHFbyJ
Enterable supporters(chairs) - https://bit.ly/3wzXRQY
]	

Chapter - Garden Door

The Garden Door is east of the Parlor and west of the Garden. 
The Garden Door is a door. 
The Garden Door is openable and lockable.
The Garden Door is scenery.
The printed name of Garden Door is "garden door".
The description of Garden Door is "[if location is Parlor]A set of glass doors and stone steps lead down into a snow-covered garden.[otherwise]A set of stone steps lead up to glass doors and the inside of the house."

Understand "glass" or "glass door" or "glass doors" as Garden Door.

Instead of searching the Garden Door: say "[if the location is the Parlor]Through the glass doors you can see steps leading down to the snow-covered garden outside.[otherwise]Through the glass doors you can see the parlor inside.[end if]"

Chapter - Fireplace
	
The fireplace is a thing.
The fireplace is scenery in the Parlor.
The description of the fireplace is "A firebox set into the wall, protected by a mantle and surround. A fire is burning in the firebox."

The firebox is scenery in the parlor. "The interior of the fireplace, lined with fireproof brick."
The hearth is scenery in the parlor. "The base of the fireplace, divided into an inner hearth, where the fire is burning in a grate, and an outer hearth, which projects slightly into the room and protects the floor."
The mantle is scenery in the parlor. "A decorative piece of wood on top of the surround, painted to look like marble."
The damper is scenery in the parlor. "This movable door that separates the firebox from the flue and chimney above it. When no fire is burning it is closed and prevents cold air from entering the house."
The flue is scenery in the parlor. "You can't see it but you know it is beyond the damper, a conduit for smoke and gases."
The chimney is scenery in the parlor. "Unseen, but you know it surrounds the flue, preventing any heat from contacting flammable house materials."
The surround is scenery in the parlor. "Like the hearth it serves as protection for the surrounding area, in this case the walls instead of the floor."
The grate is scenery in the parlor. "A cast iron basket that holds the burning coals."
The brick is scenery in the parlor. "Heat-resistent bricks that reflect the fire's heat back into the room."

Instead of using the fireplace, say "That's not something you can use but just enjoy."

To say cannot-use-item: say "That's not something you can 'use.'".

Instead of using the firebox: say "[cannot-use-item]".
Instead of using the hearth: say "[cannot-use-item]".
Instead of using the mantle: say "The only way you can 'use' this is by placing things on it." 
Instead of using the damper: say "Absolutely not. Closing the damper would fill the room with smoke." 
Instead of using the flue: say "[cannot-use-item]". 
Instead of using the chimney: say "[cannot-use-item]". 
Instead of using the surround: say "[cannot-use-item]". 
Instead of using the grate: say "The grate doesn't need any help from you to do its job." 
Instead of using the brick: say "[cannot-use-item]". 

[https://bit.ly/33EceFC https://bit.ly/2RO6PJq]

Chapter - Fire

The fire is a thing.
The fire is in the parlor. 
The fire is undescribed.
The description of the fire is "The fire[apostrophe]s flames reflect off of the fireproof brick and back into the room, warming it. As the coals burn to embers and ashes they fall through the grate onto the brick below."

The coals are scenery in the parlor. 
The description of the coals is "A significant pile of red-hot fossilized plants and amorphous carbon providing heat and light."
Understand "coal" or "pile" as coals.
	
The flames are scenery in the parlor. 
The description of the flames is "Hypnotic and mesmerizing if you stare too long at them."
Understand "flame" as flames.

Instead of touching the fire: try touching the flames.
Instead of touching the flames: say "You briefly warm your hands in front of the fireplace."

Instead of tasting the fire: try tasting the flames.
Instead of tasting the flames: say "The warmth on your face is quite pleasant after the cold wind outside."

The ashes is scenery in the parlor. "Embers that have cooled down, piling up beneath the grate."
Understand "ash" as ashes.

The embers are scenery in the parlor. "Small pieces of coal that have fallen through the grate, still quite hot."
Understand "ember" as embers.

Using is an action applying to one touchable thing. [see Writing 17.1]
	Understand "use [something]" as using.	

Understand the command "tend" as something new. [> tend the fire]
Understand "tend [something]" as using.

Understand the command "stir" as something new.
Understand "stir [something]" as pushing.

Instead of using the fire:
	if the player has the poker:
		say "A few sparks rise up the flue and things warm up a bit as you spread the coals a bit more evenly around the grate.";
	otherwise:
		say "You will need something to do that with since your bare hands won't suffice.".

To say bare-hands: say "With your bare hands? You'd have to be as crazy as Humboldt thinks Wells to even consider that.".

Instead of taking coals: try pushing coals.
Instead of pushing the coals:
	if the player has the poker:
		say "You spread the coals a bit more evenly around the grate.";
	otherwise:
		say "[bare-hands]".

Instead of taking embers: try pushing embers.
Instead of pushing the embers:
	if the player has the poker:
		say "You spread the embers a bit more evenly around the inner hearth.";
	otherwise:
		say "[bare-hands]".

Instead of taking ashes: try pushing ashes.	
Instead of pushing the ashes:
	if the player has the poker:
		say "You spread the ashes a bit more evenly around the inner hearth.";
	otherwise:
		say "[bare-hands]".

Instead of using the coals:
	if the player has the poker:
		say "You spread the coals a bit more evenly around the grate.";
	otherwise:
		say "[bare-hands]".

Instead of using the embers:
	if the player has the poker:
		say "You spread the embers a bit more evenly around the inner hearth.";
	otherwise:
		say "[bare-hands]".

Instead of using the ashes:
	if the player has the poker:
		say "You spread the ashes a bit more evenly around the inner hearth.";
	otherwise:
		say "[bare-hands]".

Understand the command "burn" as something new.
Understand "burn [something]" as burning.
Instead of burning something: say "That really wouldn[apostrophe]t accomplish anything productive."

Chapter - Poker

The poker is a thing. [https://bit.ly/3sczKUx]
The poker is undescribed in the Parlor.
Understand "fire iron" or "fire hook" as poker.
The description of the poker is "About three feet long, pointed and hooked at one end, this weighted implement is used to stir up the coal embers to achieve even burning."

[> use poker]

Instead of using the poker in the Parlor:
	say "Taking the poker, you stir the coals a bit, spreading them evenly around the grate, causing a few sparks to rise up through the flue.";
	now the player is carrying the poker.

Section - Poking

Poking is an action applying to one touchable thing and one carried thing.

Understand "poke [something]" as using.
Understand "poke [someone] with [something]" as poking.

To say no-poke-person: say "I don't see the logic of trying to assault [noun] with the [second noun], no matter how slightly." 

Instead of poking Watchett: say "[no-poke-person]".
Instead of poking Humboldt: say "[no-poke-person]".

[> use poker on fire]
[Writing §12.7. New actions
 Writing §17.1. Understand]
	
[Understand "use [something] on [something]" as using.]


Chapter - Breaker 

A breaker is a kind of thing.
The breaker is either working or not working. A breaker is usually working.

Chapter - Orrery

The orrery is a device. The orrery is switched on.
The orrery is scenery on the mantle. 
The description of the orrery is "A mechanical model of our solar system contained in a rectangular wooden box consisting of three panels. The top half of the central panel of the tryptich contains a miniature model of the Sun and planets. Dials and pointers below this model display seasonal information, the Moon's phases, and the local time. The left and right panels are half the width of the central panel and are illustrated.[if the right panel is open] The right panel has been slid up to expose the inner mechanism of the orrery.[end if]"

Understand "planetarium" or "device" or "box" or "panels" or "triptych" as orrery.

[Suppresses "The orrery is currently switched on/off" message? See https://bit.ly/3ovZgnb]
The examine devices rule does nothing when examining the orrery.

Section - Orrery Panels

The left panel is a thing.
The description of the left panel is "The left panel displays a bas-relief illustration of a shadowy, ape-like figure crouched in front of what appears to be a cavernous wall of machinery."

Understand "left" or "left side" or "left side of orrery" as left panel.

[Instead of examining the left panel for the second time: say "LOOKING AT LEFT PANEL FOR 2ND TIME. FIRMLY FIXED IN PLACE (HINT TO RE-EXAMINE RIGHT PANEL)."]

The central panel is a thing.
The description of the central panel is "In the top half of the central panel eight tiny jeweled spheres set into eight brass rings represent the planets and their orbits around our Sun. A row of dials underneath the model of the solar system display seasonal information and the Moon's phases. Underneath this row of dials, another row of pointers indicate the current date and time.[if the orrery is switched on] The second and minute hands spin slowly in a clockwise direction, accompanied by a faint whir and click from inside the box.[end if]".
Understand "model" or "spheres" or " jeweled spheres" or "planets" or "brass rings" or "rings" or "pointers" or "dials" or "solar system" as central panel.

The right panel is a thing.
The right panel is a container. The right panel is closed.
The right panel is opaque.
The description of the right panel is "The right panel displays a bas-relief illustration of a slender, androgynous figure stretching upwards to grab what appears to be an apple from a canopy of foliage overhead[if the right panel is open] and has been slide up halfway to expose the inner workings of the orrery.[end if]."

Understand "right" or "right side" or "right side of orrery" as right panel.

Instead of examining the right panel for the second time:
	say "On closer examination, it appears that the right panel, unlike its counterpart, can be slid upwards." 

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
		say "All you can see is a dense, complicated collection of gears, shafts, and slotted pin followers, much like the inside of a pocket watch, used to calculate planetary positions and information, as well as a fuse holder.[no line break][if the orrery is switched on] Several of the gears turn slowly in clockwork precision as you watch them, accompanied by faint whirring and clicking sounds.[otherwise] The gears are still.[end if ]" 

Section - Orrery Fuse Holder

The orrery-fuse-holder is a opaque container.
The orrery-fuse-holder is part of the orrery-mechanism.
The orrery-fuse-holder is undescribed.
The printed name of the orrery-fuse-holder is "orrery fuse holder".
The description of the orrery-fuse-holder is "Two metal clips that the ends of a fuse can snap in to.[no line break][if there is the fuse-orrery in the orrery-fuse-holder] Between the two clips is the orrery fuse.[otherwise if the fuse-time-machine is in the orrery-fuse-holder] Between the two clips is the time machine fuse.[otherwise] The [noun] is empty.[end if]"

Understand "fuse holder" or "orrery fuse holder" as orrery-fuse-holder.

The examine containers rule does nothing when examining the orrery-fuse-holder. [Suppresses "In the fuse holder is an orrery fuse." after description printed] 
Understand "orrery fuse holder" or "fuse holder" or "clips" or "clip" as orrery-fuse-holder.

Section - Actions On Orrery

[ > use orrery ]
Instead of using the orrery:
	say "That's not something that can be used in the normal sense but just observed."

[ > open orrery ]
Before opening the orrery:
	if the right panel is closed:
		if player-knows-right-panel-slideable is true: 
			try opening the right panel;
		otherwise:
			say "It's not apparent how to do that.";
	otherwise:
		say "You've already slid the right panel up as far as it can go.";
	stop the action.

[ > close orrery ]
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
		say "You gently slide the right panel up until it stops halfway, revealing the inner workings of the orrery's mechanism.";
		now player-knows-right-panel-slideable is true;
		now the right panel is open.

[ > close right panel ]
Instead of closing the right panel:
	if the right panel is closed:
		say "You've already slid the right panel closed.";
	otherwise:
		say "You gently slide the right panel down, covering the orrery's mechanism.";
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

Understand "slide [a closed container]" as opening.
Understand "slide [an open container]" as closing.

Instead of switching off the orrery:
	if the fuse-orrery [working-fuse] is in the orrery-fuse-holder: [right panel in the Parlor:]
		say "Without any visible switch it isn't immediately apparent how to turn the device off.";
	otherwise:
		say "It appears that removing the fuse from the orrery has already done that for you."
			
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
The description of the fuse-orrery is "Almost as big as your thumb, this cylindrical fuse is made of pasteboard with metal caps on either end.[if the fuse-orrery is in something] Each of the fuse's ends is held securely in a metal clip that makes contact with the rest of the machine[end if] The pasteboard of the fuse looks [initial appearance]."
Understand "orrery fuse" or "pristine fuse" or "fuse" as fuse-orrery.

Section - Inserting Fuse In Orrery

Before inserting a breaker (called fuse) into the orrery:
	try inserting the fuse into the right panel;
	stop the action.

Before inserting a breaker (called fuse) into the right panel:
	try inserting the fuse into the orrery-fuse-holder;
	stop the action.

Before inserting a breaker (called fuse) into the orrery-fuse-holder:
	if the orrery-fuse-holder contains a breaker:
		say "You will need to remove the other fuse from the orrery first.";
		stop the action;
	otherwise:
		continue the action.

After inserting a breaker (called fuse) into the orrery-fuse-holder: 
	if the fuse is working:
		say "After you put that fuse back into the orrery, the gears inside begin turning slowly at various speeds as the mechanism begins calculating the positions of each planetary body, updating each planet's orbital position around the Sun on the surface display.";
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
			say "The minute you remove the fuse the gears inside stop moving and, with no calculations being made, the planets on the front halt in their orbits."; 
			now the orrery is switched off;
			now the player is carrying the fuse-orrery;
			stop the action;
		otherwise:
			say "Taken.";
			continue the action.

The standard report taking rule does nothing when taking a breaker.
[The can't remove what's not inside rule does nothing when taking a breaker.]


Section - Tests | Orrery | Fuses
	
test fuse-prep with "north / north / west / north / slide right panel / purloin fuse-time-machine."

test orrery-fuse with "test fuse-prep / x mechanism / x orrery-fuse-holder / take fuse-orrery / x orrery-fuse-holder / x mechanism / put fuse-orrery in orrery-fuse-holder / x orrery-fuse-holder / x mechanism."

test fuse-time-machine with "test fuse-prep / x mechanism / x orrery-fuse-holder / take fuse-orrery / put fuse-time-machine in orrery-fuse-holder / x orrery-fuse-holder / x mechanism."

test two-fuses with "test fuse-prep / put fuse-time-machine in orrery / put fuse-time-machine in right panel / put fuse-time-machine in orrery-fuse-holder / take fuse-orrery / put fuse-time-machine in orrery-fuse-holder / put fuse-orrery in orrery-fuse-holder / take fuse-time-machine / put fuse-orrery in orrery-fuse-holder."



Part - Garden

[The windows are handled in the Workshop]

The Garden is a room.
The Garden is east of the Garden Door.
The description of the Garden is "Vegetation covered in snow surrounds you on all sides. A gate set into the north wall looks out onto a snow-covered side street. To the south, the dark panes of Wells['] workshop windows overlook a bench nestled among some snow-covered rhodendron bushes.[paragraph break]The parlor doors are to the west." [+ "white and featureless" somewhere]

Understand "parlor" or "parlor doors" or "parlor door" as Garden Door.

The garden steps are scenery in the Garden.
The garden steps are a backdrop. They are in the Garden and the Parlor.
The description of garden steps is "[if the location is the Parlor]Three stone steps leading down into the garden.[otherwise]Three stone steps leading up into the parlor.[end if]"

The garden walls are a thing.
The garden walls are scenery in the Garden.
The printed name of garden walls is "walls".

The snow is a thing.
The snow is backdrop. It is in Woking Street and the Garden.
The description of snow is "Microscopic flakes of all shapes and sizes [one of]float [or]whirl [or]drift [purely at random]down to continue covering everything."
Understand "snowfall" as snow.

Instead of taking snow:
	say "You grab at a flake or two and watch it melt in your hand."

The gate is a thing.
The gate is scenery in the Garden.
The description of the gate is "The gate is locked and looks out onto a quiet side street."

Instead of going north in the Garden: try examining the gate.

Before opening the gate:
	say "The gate is locked.";
	stop the action.

The garden street is a thing.
The garden street is scenery in the Garden.
The printed name of the garden street is the "side street". 
The description of garden street is "The side street beyond the gate is quiet at this time of night."

The bench is a thing.
The bench is scenery in the Garden.
The bench is a supporter.
The bench is enterable.
The description of the bench is "It[']s a bench, covered in snow but still just a bench."

The garden bushes are a thing.
The garden bushes are scenery in the Garden.
The description of garden bushes is "Covered by snow, the hollyhocks, larkspurs, snapdragons, rhododendrons, and other flora you remember are not much to look at right now."
Understand "wilderness" or "hollyhocks" or "larkspurs" or "snapdragons" or "rhododendrons" or "tree" or "trees" or "vegetation" or "dunes" or "dune" as garden bushes.


Part - Dining Room

The Dining Room is a room. 
The Dining Room is north of the Parlor.
The description of the Dining Room is "A mahogany [dining table] that could seat eight comfortably dominates the space. Above the table hangs an electric [chandelier]. On the table is an [orrery]. To the north, to the right of the kitchen door, is a [sideboard] that holds tableware, cutlery, and place settings between meals.[paragraph break]The parlor is to the south."

The Kitchen Door is north of the Dining Room and south of the Kitchen. 
The Kitchen Door is a door. 
The Kitchen Door is openable.
The Kitchen Door is scenery.

The dining table is a thing.
The dining table is scenery in the Dining Room.
The dining table is a supporter.
The description of the dining table is "An oval mahogany table with three chairs on both sides and a single chair at each head."

The dining room chairs are a thing.
The dining room chairs are scenery in the Dining Room.
The dining room chairs are a container.
The dining room chairs are enterable.
The description of dining room chairs is "Eight mahogany chairs around the table."
Understand "chairs" as dining room chairs.

The chair-at-table is scenery in the Dining Room.
The chair-at-table is a container.
The chair-at-table is enterable.
The printed name of chair-at-table is "chair".
The description of chair-at-table is "One of the eight mahogany chairs around the table."
Understand "chair" as chair-at-table.

Instead of entering the dining room chairs: try entering the chair-at-table.
Instead of entering the chair-at-table:
	say "Well, maybe just for a minute while you gather your thoughts. You sit in the one of the chairs.";
	move the player to the chair-at-table, without printing a room description.

The sideboard is a thing.
The sideboard is scenery in the Dining Room.
The sideboard is a container.
The sideboard can be open or closed.
The sideboard can be openable. The sideboard is closed.
The description of the sideboard is "A matching piece of mahogany furniture with compartments and drawers for holding articles of table service."

Instead of opening the sideboard: try searching the sideboard.
Instead of searching the sideboard: say "I don't think Mrs. Watchett would appreciate you rummaging around in her sideboard."

The contents-sideboard is scenery in the Dining Room. 
Instead of examining the contents-sideboard: say "I don't think Mrs. Watchett would appreciate you rummaging through the contents of her sideboard."
[I would have like to make this "...rummaging through her [noun]" with [noun] being what you typed (forks, glasses, bowls, etc.) understood as contents-sideboard]

Understand "dishes" or "plates" or "bowls" or "glassware" or "glass" or "glasses" or "tableware" or "service" or "table service" as contents-sideboard.
Understand "silverware" or "knive" or "knives" or "cutlery" or "fork" or "forks" or "spoon" or "spoons" as contents-sideboard.

Chapter - Chandelier

The chandelier is a device.
The chandelier is switched on.
The chandelier is scenery in the Dining Room.
The description of the chandelier is "Probably the first of it's kind in the entire city, this glass monstrosity [if the chandelier is switched on]bathes the entire room in a harsh, yellowish, light.[otherwise]is dark.[end if] There is a small [chain] at the bottom of the chandelier."
			
[Suppress "The chandelier is currently switched on/off" message? See https://bit.ly/3ovZgnb]
The examine devices rule does nothing when examining the chandelier.
The examine devices rule does nothing when switching on the chandelier.
The examine devices rule does nothing when switching off the chandelier.
	
Instead of searching the chandelier: say "Afraid of breaking Wells[apostrophe] latest acquisition, you confine yourself to a quick survey of the latticework of cut glass, wiring, and electric lights. Your cursory search finds nothing out of the ordinary."

The chain is a thing.
The chain is scenery in the Dining Room.
The description of the chain is "You see nothing remarkable about the small chain."

Instead of using the chandelier: try pulling the chain.

Instead of pulling the chain: 
	if the chandelier is switched off:
		try switching on the chandelier;
	otherwise:
		try switching off the chandelier.

Instead of switching off the chandelier: 
	say "Tugging the small chain turns the chandelier off, darkening the room significantly. But you can still see and make your way around because of the fire in the parlor.";
	now the chandelier is switched off;
			
Instead switching on the chandelier: 
	say "Tugging the small chain turns the chandelier on, bathing the room in that harsh light you dislike so much.";
	now the chandelier is switched on;


Part - Kitchen

The Kitchen is a room. 
The Kitchen is north of the Kitchen Door.

The description of the Kitchen is "[first time]If your memory suffices, which it usually does in most ordinary situations, this is the first time you've been in [Watchett]'s domain. [only]The small room is dominated by a sturdy wooden work table in the center. Surrounding the table are numerous cabinets and shelves. A stove and a sink are set against the north wall.[if the location of Watchett is the Kitchen][paragraph break][Watchett] is at the sink, washing up the supper dishes. [otherwise][paragraph break]It looks like [Watchett] has finished her work and retired for the evening. [end if]The dining room is to the south."

The work table is a thing.
The work table is scenery in the Kitchen.
The work table is a supporter.
The description of the work table is "A large wooden work table in the center of the room."

The cabinets are a thing.
The cabinets are scenery in the Kitchen.
The cabinets are a container.
The cabinets can be open or closed.
The cabinets are openable. The cabinets are closed.
The description of the cabinets is "Just a series of free-standing cabinets used for storage."

Understand "cabinet" or "storage" or "free-standing" or "free standing" or "standing" as cabinets.

The kitchen shelves are a thing.
The kitchen shelves are scenery in the Kitchen.
The kitchen shelves are a supporter.
The description of the kitchen shelves is "Just a series of shelves piled high with foodstuffs and kitchen implements."
	
Understand "shelf" as kitchen shelves.

The stove is a thing.
The stove is scenery in the Kitchen.
The stove is a supporter.
The description of the stove is "As far as you can tell this is just a cooking stove, probably better made than most, but still just a stove."

The sink is a thing.
The sink is scenery in the Kitchen.
The sink is a container.
The description of the sink is "As far as you can tell this is just a copper sink, probably better made than most, but still just a sink."
Understand "copper" as sink.

Chapter - Actions In Kitchen

Instead of switching on the stove: try using the stove.
Instead of switching on the sink: try using the sink.
		
Instead of opening the stove: try using the stove.
Instead of opening the cabinets: try searching the cabinets.

Instead of searching the stove: say "I don't think Mrs. Watchett would appreciate you getting in the way of her cleaning up."
Instead of searching the cabinets: say "I don't think Mrs. Watchett would appreciate you rummaging around in her cabinets."
Instead of searching the kitchen shelves: say "You glance briefly at the various items on the shelves but find nothing pertinent to your investigation."

To say no-concern: say "That's not something you need to concern yourself with since it's not pertinent to your investigation."
Instead of using the work table: say "[no-concern]".
Instead of using the cabinets: say "[no-concern]".
Instead of using the kitchen shelves: say "[no-concern]".
Instead of using the stove: say "[no-concern]".
Instead of using the sink: say "[no-concern]".


Part - Workshop  

The workshop is a dark room. 

The description of the Workshop is "The workshop is almost twice as long as it is wide and ends in windows that look down into the garden. A long workbench runs down one side of the room; a large blackboard covered in equations and diagrams runs down the other. Tools and materials for Wells['] experiments fill the rest of the space.[if the time machine is not nowhere] But the most striking, out-of-place object in the room is a device almost equidistant between you and the other end of the room[unicode 8212]Wells['] time machine.[end if]"

Chapter - Workbench

The workbench is a thing.
The workbench is scenery in the Workshop.
The workbench is a supporter.
The description of the workbench is "[if the player has the blueprints]You see nothing special about the workbench.[otherwise]On the workbench is a set of blueprints."
Understand "bench" as workbench.

Instead of searching the workbench: try examining the workbench.

Chapter - Scenery

The workshop-tools-materials is scenery in the Workshop.
The description of workshop-tools-materials is "A cursory search of the workshop tools and materials turns up no flower or other fauna or brings you closer to understanding how the time machine operates or how to make it work."

The tools are a thing.
The tools are scenery in the Workshop.
Instead of examining the tools: try examining workshop-tools-materials.
Instead of searching the tools: try examining workshop-tools-materials.
	
The materials are a thing.
The materials are scenery in the Workshop.
Instead of examining the materials: try examining workshop-tools-materials.
Instead of searching the materials: try examining workshop-tools-materials.

The workshop-blackboard is scenery in the Workshop.
The description of workshop-blackboard is "You glance at the long series of equations and diagrams but have no luck making sense of anything written there."

The blackboard is a thing.
The blackboard is scenery in the Workshop.
Instead of examining the blackboard: try examining workshop-blackboard.
Instead of searching the blackboard: try examining workshop-blackboard.
		
The equations are a thing.
The equations are scenery in the Workshop.
Instead of examining the equations: try examining workshop-blackboard.
Instead of searching the equations: try examining workshop-blackboard.

The diagrams are a thing.
The diagrams are scenery in the Workshop.
Instead of examining the diagrams: try examining workshop-blackboard.
Instead of searching the diagrams: try examining workshop-blackboard.

Chapter - Light Switch
		
The lights are a device. [thing.]
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
	[place the blackboard in scope;]
	[place the workbench in scope;]
	place the lights in scope;
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
				say "You will need a bit more light before you can examine the in any detail.";
			otherwise:
				say "A simple light switch by the door that you can flip on or off.";
		if we are searching something:
			if we are not searching the light switch:
				say "You could use a little more light before you can do that successfully.";
			otherwise:
				say "It is a simple on/off switch. Not much to search."
	
Chapter - The Blueprints

The blueprints are a thing.
The blueprints are on the workbench.
The blueprints are undescribed.
Understand "plans" or "sheets" or "set" as blueprints.
The printed name of blueprints is "set of blueprints".

Instead of taking the blueprints: try examining the blueprints.

Instead of examining the blueprints:
	say "Spreading out the sheets you see that these are obviously the plans for the time machine in the center of the room."


Chapter - The Time Machine

[ Writing §18.10. Printing the name of something - omit contents in listing ]
After printing the name of the time machine:
	omit contents in listing.
	
The time machine is a opaque container. [thing.] [The indefinite article is "the".]
The time machine is in the Workshop.
The time machine is fixed in place. [This prevents > show time machine to humboldt]
The time machine is enterable. 
The time machine is undescribed.
The description of the time machine is "[if the player is not in the time machine]The time machine is rectangular in shape, taller than it is wide. A scaffolding of struts, wires, and other mechanisms rises up from the thick, square base to create a cage to enclose one or two occupants. It looks like you can enter the machine through an opening in one side.[otherwise]The inside of the time machine is just as baffling as its outside. While you can get a closer look at the various components that make up the cage that surrounds you, the only object that you can make sense of is a control panel at waist height.[end if][if the player is in the time machine and the time machine is in the workshop] Through gaps in the time machine you can see the workshop.[otherwise if the player is in the time machine and the time machine is in the clearing] Through gaps in the time machine you can see the clearing.[end if]"

Understand "mechanism" or "device" or "temporal" or "struts" or "wires" or "crystals" or "base" or "opening" or "latticework" or "lattice" as time machine.

Instead of opening the time machine: say "The time machine is already 'open.' All you have to do is [if the player is in the time machine]get out[otherwise]get inside[end if] if you desire."
[At some point should implement >climb in/out of time machine.]

[Replaced "examining" with "searching" in Instead statement]
Instead of searching [examining] the time machine:
	if a breaker (called fuse) is contained in the time-fuse-holder:		
		if the fuse is working:
			say "A barely perceptable hum and the lit light on the control panel makes it look like it is ready to operate.";
		otherwise:
			say "The time machine sits there in silence."

Section - Activating The Time Machine

Activating is an action applying to one touchable thing.
Understand "activate [something]" as activating.

To say nothing-happens:
	say "You push the lever foward until it stops but nothing happens."

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
				say "Reaching into the time machine you push the lever forward. To your horror, the machine shimmers and disappears from the room, accompanied by the distinctive sound of what appears to be a key scraping along the bass string of a piano.";
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
The description of the fuse-time-machine is "Almost as big as your thumb, this cylindrical fuse is made of pasteboard with metal caps on either end.[if fuse-time-machine is in something] Each of the fuse's ends is held securely in a metal clip that makes contact with the rest of the machine[end if] The pasteboard of the fuse looks [initial appearance] in places."
Understand "time machine fuse" or "burnt fuse" or "fuse" as fuse-time-machine.

Section - Inserting Fuse In Time Machine

Before inserting a breaker (called fuse) into the time machine:
	try inserting the fuse into the time-fuse-holder;
	stop the action.

Before inserting a breaker (called fuse) into the control panel:
	try inserting the fuse into the time-fuse-holder;
	stop the action.

Before inserting a breaker (called fuse) into the time-fuse-holder:
	if the time-fuse-holder contains a breaker:
		say "You will need to remove the other fuse from the time machine first.";
		stop the action;
	otherwise:
		continue the action.

After inserting a breaker (called fuse) into the time-fuse-holder:
	if the fuse is working:
		say "The time machine shudders briefly and you hear a barely perceptable hum from the mechanism. The light on the control panel glows brightly.";
		now the fuse is in the time-fuse-holder;
		now small light is switched on;
	otherwise:
		[say "FUSE BAD. TIME MACHINE LIGHT OFF.";]
		now small light is switched off.

Section - Removing Fuse From Time Machine

Before removing a breaker (called fuse) from the time machine: try taking the fuse.
Before removing a breaker (called fuse) from the control panel: try taking the fuse.
Before removing a breaker (called fuse) from the  hinged panel: try taking the fuse.

Before removing a breaker (called fuse) from the time-fuse-holder: try taking the fuse.

Before taking a breaker (called fuse):
	if the fuse is contained in the time-fuse-holder:
		if the fuse is working:
			now the small light is switched off;
			say "The small light on the control panel dims to black and the barely perceptible hum of the time machine fades away.";
		otherwise:
			say "Taken.";
		continue the action.

The standard report taking rule does nothing when taking a breaker.

Section - Tests | Time Machine | Fuses

test orrery-time with "test fp-time / put orrery fuse in time machine fuse holder / take time machine fuse / put orrery fuse in time machine fuse holder / put time machine fuse in time machine fuse holder / take orrery fuse / put orrery fuse in time machine fuse holder / take orrery fuse from time machine fuse holder / put time machine fuse in time machine fuse holder."

Chapter - Time Machine Control Panel

The control panel is a thing.
The control panel is part of the time machine.
The control panel is undescribed.
Understand "controls" as control panel.

Instead of examining the control panel:
	if the player is in the time machine:
		say "The control panel is divided into two major sections. To the left, one above the other, are labeled sections that indicate Elapsed time, Destination, and Origin. To the right, from top to bottom, is what appears to be a locked hinged panel, a small light, and a lever.";
	otherwise:
		say "From the outside you can see the control panel is wired into various components of the time machine and contains a menagerie of dials, switches, and buttons. You would have to enter the time machine to get a closer look at it.";
	rule succeeds.

Test x-control with "test goto-workshop / get in time machine / x control panel / x elapsed time section / x destination section / x origin section / x hinged panel / x small light / x lever / x time-fuse-holder."

Section - Elapsed Time Section

The elapsed time section is a thing.
The elapsed time section is part of the control panel.
The description of the elapsed time section is "Two rows of brass dials used to indicate elapsed time. The top row handles time intervals your most familiar with[unicode 8212]years, months, weeks, days, hours, minutes, and seconds. You very rarely use the intervals called out in the bottom row[unicode 8212]epochs, ages, millennia, centuries, and decades. [if numeric-year is 1895]All of the dial pointers are positioned at zero.[otherwise]The numbers on the dials indicate that 801,006 years have elapsed.".
Understand "dial" or "dials" as elapsed time section.

Section - Destination Section

The destination section is a thing.
The destination section is part of the control panel.
The description of the destination section is "This section displays a row of eight numbers, each separate from its neighbor, with a tiny dial to the right of each number. The number displayed is [if numeric-year is 1895][future][otherwise][present]."
Understand "destination date" or "date of destination" as destination section.

To say present:
	say "[bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]1[close bracket] [bracket]8[close bracket] [bracket]9[close bracket] [bracket]5[close bracket]".

To say future:
	say "[bracket]0[close bracket] [bracket]0[close bracket] [bracket]8[close bracket] [bracket]0[close bracket] [bracket]2[close bracket] [bracket]7[close bracket] [bracket]0[close bracket] [bracket]1[close bracket]".
		
Section - Origin Section

The origin section is a thing.
The origin section is part of the control panel.
The description of the origin section is "This section displays a row of eight numbers, each separate from its neighbor, with a tiny dial to the right of each number. The number displayed is [if numeric-year is 1895][present][otherwise][future]."
Understand "origin date" or "date of origin" as origin section.
	
Section - Small Light

The small light is a device.
The small light is part of the control panel.
The small light is switched off.
The description of the small light is "A small light set into the surface just below the hinged panel but above the lever. The light is [if small light is switched on]glowing brightly.[otherwise]off."

The examine devices rule does nothing when examining the small light.

Section - Hinged Panel
			
The hinged panel is a locked container.
The hinged panel is openable.
The hinged panel is closed.
The hinged panel is locked.
The hinged panel is part of the control panel.
The description of the hinged panel is "A small panel, hinged at the top, with a keyhole recessed in the center of its bottom edge."

The keyhole is an open container.
The keyhole is part of the hinged panel.
The description of the keyhole is "The perfect recepticle for just the right key."

Section - Time Machine Fuse Holder

The time-fuse-holder is a container.
The time-fuse-holder is inside the hinged panel.
The printed name of time-fuse-holder is "time machine fuse holder".
The description of the time-fuse-holder is "Two metal clips that the ends of a fuse can snap in to.[if there is the fuse-orrery in the time-fuse-holder] Between the two clips is the orrery fuse.[otherwise if the fuse-time-machine is in the time-fuse-holder] Between the two clips is the time machine fuse.[otherwise] The [noun] is empty.[end if]"

Understand "fuse holder" or "time machine fuse holder" as time-fuse-holder.
		
[Actions on control panel]
	
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
	say "It would probably be best to leave things as they are for now."

Instead of modifying the destination section:
	say "[leave-alone]".

Instead of modifying the origin section:
	say "[leave-alone]".

Instead of modifying the elapsed time section:
	say "It looks like these dials are just for display. You'd have to actual travel in time to chane them."

[Unlocking the hinged panel]

Instead of inserting the metal key into the keyhole:
	say "Inserting the key into the keyhole you turn it.";
	now the metal key is in the keyhole;
	try unlocking the hinged panel with the metal key.

After unlocking the hinged panel with the metal key:
	say "You swing the panel upwards."

Section - Lever

The on-off-switch is a kind of device.
The on-off-switch is either forward or backwards. The on-off-switch is usually backwards.

The lever is a on-off-switch.
The lever is switched off.
The lever is part of the control panel.
The description of the lever is "A small lever that can be pushed vertically from bottom to top."

The examine devices rule does nothing when examining the lever.

Instead of switching on the lever: try activating the time machine.

	
Chapter - Workshop Windows

The windows are a thing. 
The windows are a backdrop. The windows are in the Workshop and the Garden.
Understand "workshop windows" or "window" as windows.

Instead of examining the windows: say "A set of large casement windows hinged on the outer edges and opening inward, consisting of many small panes of leaded glass in a lattice pattern, secured by a single latch."

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
		say "A simple but strong latch on the inside of the windows that can be pulled to unlock or lock the windows themselves.[no line break][if windows are locked] The latch appears to be closed, locking the windows shut.[otherwise] The latch appears to be open, the windows unlocked.";
	otherwise:
		say "The latch appears to be broken and hanging down on one side."

[> look through windows 
 > look in windows]

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

[> pull latch
 > open latch
 > close latch]

To say latch-broken:
	say "The latch has been broken and serves no function."

Instead of opening the latch:
	if window-latch-broken is false:
		if the windows are unlocked:
			say "The latch is already open.";
		otherwise:
			try pulling the latch;
	otherwise:
		say "[latch-broken]".

Instead of closing the latch:
	if window-latch-broken is false:
		if the windows are locked:
			say "The latch is already closed.";
		otherwise:
			try pulling the latch;
	otherwise:
		say "[latch-broken]".

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
	
[> unlock windows
 > lock windows]

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

[> open windows
 > close windows]

To say windows-locked:
	say "The windows are locked."

To say windows-closed:
	say "The workshop windows are closed."

Instead of opening the windows:
	if the player is in the Garden:
		say "From down here you cannot reach the workshop windows but it looks like they can only be unlocked from inside the workshop.";
	else if the player is on the bench:
		if the windows are unlocked:
			say "You push the windows open, letting the cold and snow into the workshop.";
			now the windows are open;
		otherwise:
			say "[windows-locked]";
	otherwise: [in the Workshop]
		if the windows are unlocked:
			say "You swing the windows open, letting in the cold and snow.";
			now the windows are open;
		else:
			say "[windows-locked]".
		
Instead of closing the windows:
	if the windows are closed:
		say "[windows-closed]";
	otherwise:
		if the player is in the Garden:
			say "You cannot reach the open windows from here.";
		else if the player is on the bench:
			say "Reaching inside you grab both windows and swing them shut.";
		otherwise: [in the Workshop]
			say "You swing both windows shut."

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
		
Instead of prying the windows with poker:
	if the player is in the Garden:
		say "[cannot-reach-window]";
	else if the player is on the bench:
		say "Looking around quickly, you carefully place the tip of the poker where the windows meet and pry them apart. With a loud snap, the latch that secures them shut breaks. The windows are now unlocked.";
		now window-latch-broken is true;
		now the windows are unlocked;
	otherwise: [in the Workshop]
		say "[why-break]".

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
				say "While your initial thought of getting into the workshop by prying open the locked door with the poker has merit, closer examination of the door and frame shows that both are too solidly made. You wouldn't be able to open the door without totally destroying a large section of the surrounding woodwork. Perhaps there's another way in to the workshop.";
			else if current action involves front door:
				say "The front door isn't locked so I don't see why you would think you had to pry it open.";
			otherwise:
				say "[cannot-use]";
		otherwise:
			say "[cannot-use]";
	otherwise:
		say "[cannot-use]".
		
[Climbing through the windows]
[Player is in Garden]
	
Instead of going south in the Garden:
	if the player is not on the bench:
		try entering the bench;
	else if the player is on the bench:
		try going up;
	otherwise:
		continue the action.

Instead of going up in the Garden:
	if the player is on the bench:
		if the windows are open:
			say "Grabbing onto the sill of the opened windows you manage to hoist yourself into the [if the lights are switched on]lit [otherwise] dark [end if]workshop with some difficulty.[no line break][if the lights are switched off] Stumbling through the darkness you manage to get to the workshop door without too many bumps and bruises.[end if]";
			now the player is in the Workshop;
		otherwise:
			say "[windows-closed]";
	otherwise:
		say "You jump up and down a few times in the snow-covered garden, warming yourself slightly but not accomplishing much else."

[Player is in Workshop]

Instead of going north in the Workshop:
	try going down.

Instead of going down in the Workshop:
	if the windows are open:
		say "Throwing your legs over the sill of the opened windows you carefully lower yourself onto the snow-covered bench in the garden below with some difficulty.";
		now the player is on the bench;
	otherwise:
		say "[windows-closed]".
		
Book - 802,701

Part - Clearing

can-go-clearing-to-river is a truth state that varies.
can-go-clearing-to-river is false.

Every turn: 
	if the player is in the Balcony, now can-go-clearing-to-river is true.

The Clearing is a room. 
The description of the Clearing is "A midsized clearing dominated by a circular well in the center that rises about three feet above the ground. The face of a large statue looks down on you through a gap in the trees. There is a path to the east leading to a white dome in the distance.[if can-go-clearing-to-river is true] Now that you know it exists, you can just make out the overgrown path that you saw from the balcony leading southeast.[end if]"

Inside from the Clearing is Top Well.

Instead of going down in the Clearing: 
	if the metal grate is on the circular well:
		say "You might be able to if that grate wasn't in the way.";
	if the metal grate is not on the circular well:
		try entering the circular well.

Chapter - Scenery

The circular well is a thing.
The circular well is scenery in the Clearing.
The circular well is a supporter.
Instead of examining the circular well: say "About three feet in diameter, the circular well appears to be made of some unknown metal. [if metal grate is on circular well]A circular grate rests on the top of the shaft, flush with the surface. Through the grate you can see the rungs of a ladder going down into darkness.[otherwise]You can see the rungs of a ladder going down into darkness.[end if]"

The statue is scenery in the Clearing.
The description of statue is "The sightless eyes of the weather-worn marble face stare down at you, inhuman and unsympathetic."
Understand "sphinx" or "carved figure" or "face" or "marble" as statue.

The treetops are a thing.
The treetops are backdrop. They are in the Clearing and the Sphinx Steps and the Balcony.
Understand "forest" or "trees" or "tree" or "foliage" as treetops.
The description of treetops is "[if the location is the Clearing]Above your head the leafy canopy of deciduous and evergreen trees filters the midday sunlight.[otherwise]Below you the leafy canopy of deciduous and evergreen trees covers everything except your view of the river and the clearing below and the overgrown path between them."

The clearing bushes are a thing.
The clearing bushes are scenery in the Clearing.
The description of the clearing bushes are "The overgrown bushes make it difficult to see what lies beyond the clearing."
The printed name of clearing bushes is "bushes".

The undergrowth is a thing.
The undergrowth is scenery in the Clearing.
The description of the undergrowth is "The undergrowth would make passage in any direction but east difficult."

Chapter - Metal Grate

The metal grate is a thing.
The metal grate is portable.
The metal grate is on the circular well.
The metal grate is a supporter.
The metal grate is undescribed.
The description of the metal grate is "About three feet in diameter, the grate is made of wide slats of metal welded together in a waffle pattern. Despite the patina of rust, it looks extremely sturdy and heavy.[if the metal grate is not on the circular well] The grate is lying on the ground next to the open shaft.[end if]"

[ > Remove grate ]

Understand the command "remove" as something new.
Understand the command "remove" as "take".

Instead of pulling the metal grate: try taking the metal grate.
Instead of pushing the metal grate: try taking the metal grate.

Instead of attacking the metal grate with something: say "The [second noun] has no effect on the metal of the grate, despite its rusted appearance. But you might be able to move the grate out of its current position if you try."

Instead of taking the metal grate:
	if the metal grate is on the circular well in the Clearing:
		say "Grabbing the grate through its openings, you brace yourself against the side of the shaft and manage to leverage it up and out of its resting position. It[']s extremely heavy but you succeed in toppling it to one side and onto the ground, narrowly missing your feet.";
		move the metal grate to the Clearing;
		now the metal grate is described;
	otherwise:
		say "It is way too heavy to try and move a second time from its position on the ground."

Climbing into is an action applying to one touchable thing.
Understand "climb in [something]" as climbing into.
Understand "climb into [something]" as climbing into.
Instead of climbing into the circular well: try entering the circular well.

[If you remove the circular grate from the circular well you can climb into it]
Instead of entering the circular well:
	if the metal grate is on the circular well:
		say "If the grate wasn't on top of the shaft you might be able to.";
	otherwise:
		say "Carefully you climb over the lip of the shaft and onto the ladder.[line break]";
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
		if can-go-clearing-to-river is false:
			say "A cursory examination of the tangled undergrowth to the [noun] reveals no visible path.";
			stop the action;
		otherwise:
			continue the action.
	
[ 06/02/21 - Decided to comment this out since it really didn't serve any purpose right now (might use later). Moved some of the descriptions into Clearing.
Chapter - Sphinx Steps

The Sphinx Steps are a room.
The Sphinx Steps are up from the Clearing.
The description of the Sphinx Steps is "The set of stone steps winds its way around the [ziggurat] until you are above the treetops, plateauing  in front of two large closed [stone doors] set into a [pedestal]. On the pedestal is a carved [statue] of a sphinx, its impassive face surveying a countryside you cannot see, its outstretched wings poised to take flight against some unknown prey.[paragraph break]In the distance you can see a domed building to the east far below and, beyond it, other gargantuan buildings of stone. Also at this height, you can see a path down below winding its way southeast to a river in the distance."

The printed name of Sphinx Steps are "Top of Sphinx Steps"

The ziggurat is a thing.
The ziggurat is scenery in the Sphinx Steps.
The description of the ziggurat is "A rectangular stepped tower built in successive stages with an outside staircase that winds its way around the sides to forest below. First seeen in ancient Mesopotamia, they usually have some shrine at the top."
Understand "pyramid" as ziggurat.

The stone doors are a thing.
The stone doors are scenery in the Sphinx Steps.
The description of the stone doors are "Closed right now. Set into the pedestal, it looks like they're opened from the inside so it is unlikely you would be able to open them from this side. The doors themselves are carved with line after line of mechanical cuneiform and bas relief mongoloid figures marching down a successive set of ramps to an unpictured subterranean destination."

Before opening the stone doors:
	say "[if the player has the poker]Even with the poker you cannot leverage one of the huge stone doors open.[otherwise]You try and drag one of the huge stone doors open with your bare hands but are unsuccessful.";
	stop the action.

The pedestal is a thing.
The pedestal is scenery in the Sphinx Steps.
The description of the pedestal is "Made of bronze and thick with verdigris, it is the columnar base that supports the statue above."

The statue is a thing.
The statue is scenery in the Sphinx Steps.
The description of the statue is "A gigantic reclining sphinx made of white marble. Its weather-worn surface carries the unpleasant suggestion of disease and its sightless eyes seem to watch everything. The wings, instead of being carried vertically at the sides spread out so the entire figure seems to hover. You are not sure, but you think you can see the faint shadow of a smile on the lips. It is inhuman, unsympathetic, and overwhelmingly powerful."
Understand "sphinx" or "carved figure" or "face" or "wings" as the sphinx.
]

Part - Top Well

The Top Well is a room.
Down from Top Well is the Bottom Well.
Up from Top Well is the Clearing.
The description of Top Well is "You[']re hanging at the top of the shaft on the ladder leading down. Faint sounds of machinery rise from the darkness below. Exiting the shaft will put you back in the clearing."

Instead of going up from the Top Well: try exiting.

Instead of exiting in the Top Well: 
	say "You carefully climb out of the well.";
	now the player is in the Clearing.
	
The ladder is a thing.
The ladder is a backdrop. It is in the Clearing, Top Well and Bottom Well.
The description of the ladder is "A series of rusting iron bars sunk into the side of the shaft, leading down into the gloom."


Part - Domed Building

The Domed Building is a room.
The Domed Building is east of the Clearing.
The Domed Building is west of the Inside Dome.
Inside from the Domed Building is Inside Dome.

The dome-outside is scenery in Domed Building.
Understand "concrete" or "building" or "pantheon" or "columned" or "columns" or "column" or "portico" or "entrance" or "dome" as dome-outside. [Domed Building.]
Instead of examining dome-outside: try looking.

The description of the Domed Building is "Before you is a weathered concrete building with a domed top that vaguely resembles the Pantheon in Rome. The entrance to the building is through a columned portico to the east."

Part - Inside Dome

The Inside Dome is a room.
The Inside Dome is north of the Balcony.
Understand "dome" as Inside Dome.

The description of Inside Dome is "Sunlight streams through the dome[']s [oculus], illuminating the entire room. Low stone [tables] are arranged in a circular pattern around a large central [well] underneath the center of the dome. Circling the entire wall of the dome except for the exits is a series of murals.[paragraph break]There is an small archway to the south and the main exit to the west."
	
The printed name of Inside Dome is "Inside the Domed Building"

The dome-inside is scenery in Inside Dome.
Understand "dome" as dome-inside.
Instead of examining dome-inside: try looking.

The oculus is a thing.
The oculus is scenery in the Inside Dome.
The description of oculus is "A circular opening at the dome[']s apex allowing sunlight and the elements to enter.[first time] From this distance it looks small but given the size of the dome you estimate it to be at least thirty or thirty-five feet in diameter.[only]"

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
The description of the round well is "The well is circular and filled with what appears to be fresh water. It appears to be the same size as the oculus far above it with a knee-high wall running around its circumference."

Instead of inserting things into the round well: say "I don't see the purpose of dropping [the noun] in the water."

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

The murals are a thing.
The murals are scenery in the Inside Dome.

The description of the murals are "Each panel is a mosaic devoted to a specific pastoral scene being performed by a group of people who must be Wells['] Eloi[unicode 8212]gathering fruit, bathing and swimming in a river, wandering the countryside, eating, dancing, and other questionable activities.

In one or two of the dusk scenes you can make out small shadowy silhouettes hidden in the background undergrowth and shadows, spying on the Eloi[']s foreground activity[unicode 8212]Wells['] Morlocks." [∆ "In one or two of the dusk scenes you can make out small silhouettes hidden in the undergrownth and shadows, spying on the Eloi's activities."]

Understand "cyclorama" or "mural" or "panel" or "panels" as murals.
	
Before taking the murals:
	say "They[']re pictures. You look at them, no reading necessary.";
	stop the action.

The mosaics are a thing.
The mosaics are scenery in the Inside Dome.
The description of the mosaics are "Each panel is composed of thousands of small square pieces of colored stone, tile, and glass best viewed at a slight distance. In certain places, individual pieces have fallen out unmaintained by future generations."
Understand "mosaic" or "square" or "stone" or "tile" or "glass" or "colored pieces" or "pieces" as mosaics.


Part - Balcony

[Treetops, foliage, and forest are handled in the Clearing]

The Balcony is a room.
The Balcony is south of Inside Dome.
The description of the Balcony is "This small concrete balcony looks down on the treetops below. To the south, through a break in the foliage, you can see a river with many tiny figures around it.[paragraph break]From up here you can also make out an overgrown path leading southeast from the clearing to the river, probably obscured by undergrowth." [+ from ground level"]

The balcony-river is scenery in the Balcony.
The description of the balcony-river is "The river winds its way through the forest below you. Looking closely, you can see groups of people in the river and on its banks."
The printed name of balcony-river is "river".

Understand "river" as balcony-river.

The balcony-people is scenery in the Balcony.
The description of balcony-people is "From this distance it is difficult to make out specific details about the group gathered at the river below. They all appear to be similar in stature and dressed in the same garments, but you[']ll have to get closer to confirm these initial observations."

Understand "people" or "figures" or "group" as balcony-people.

Part - River Bank

The River Bank is a room.
The River Bank is southeast of the Clearing.
The description of the River Bank is "[first time]The southeast path winds its downhill through dense undergrowth. [only]After a brief hike you emerge from the woods onto the northwest bank of a sizeable river."

The river-river is scenery in the River.
The description of the river-river is "The river curves its way through the forest from the northeast to the southwest. The rushing water looks cool and inviting."
The printed name of river-river is "river".
Understand "river" as river-river.

[Why does this description not display when you >examine water ?]
The river-water is scenery in the River Bank.
The description of the water is "The rushing water looks cool and inviting."
The printed name of river-water is "water".
Understand "water" as river-water.

Before taking the river-water:
	try eating the river-water;
	stop the action.

Instead of eating the river-water:
	try drinking the river-water;
	stop the action.

Instead of drinking the river-water, say "I don't see why you would choose to drink this dubious liquid when there's a source of fresh water elsewhere." 

The river-bushes is scenery in the River Bank.
The description of river-bushes is "The dense and overgrown vegetation parallels the river bank."
Understand "bush" or "bushes" as river-bushes.

The river-things is scenery in the River Bank.
The description of the river-things is "While the fruit is totally unknown and bizarre, some of the petals on these flowers matches exactly the one you[']ve got in your pocket."
Understand "flowers" or "flower" or "fruit" as river-things.

Gathering is an action applying to one thing.
Understand "gather [something]" as gathering.
Instead of gathering: say "The Eloi don[']t seem to need your help. Perhaps another time."

Swimming is an action applying to nothing.
Understand "swim" as swimming.
Instead of swimming: say "You[']re not dressed for swimming. Perhaps another time."

Resting is an action applying to nothing.
Understand "rest" as resting.
Instead of resting: say "You[']re not tired right now. Perhaps another time."

Part - Underground - General

Chapter - Light Level

Light level is a kind of value.
The light levels are day, shadow, twilight, night.
[The light levels are dawn, day, shadow, twilight, dusk, night.]

Chapter - Underground

underground is a kind of lighted room.
underground has a light level called visibility.
The visibility of underground is usually night.

Part - Underground - Shaft

Chapter - Shaft Description

To say shaft-description:
	if the location of the player is:
		-- Shaft 0: say "SHAFT 0 DESCRIPTION. A few of the pipes, obviously for ventilation, extend above your head through the shaft roof. In front of you are two oval openings through which light comes, filling the shaft.[no line break]";
		-- Shaft 1: say "SHAFT 1 DESCRIPTION. The small tunnel opens up into a larger cylindrical shaft extending above your head and deep into darkness below. Every surface of the shaft walls are lined with pipes and conduits of all sizes. The faint sounds of machinery and rustlings can be heard below.[no line break]";
		-- Shaft 2: say "SHAFT 2 DESCRIPTION. You're standing on a small platform anchored to the side of the shaft. Some of the pipes and conduits right angle and disappear into the walls but most of them continue downward.[no line break]";
		-- Shaft 3: say "SHAFT 3 DESCRIPTION. You're standing on a small platform anchored to the side of the shaft. Some of the pipes and conduits right angle into the walls but a majority of them continue down.[no line break]";
		-- Shaft 4: say "SHAFT 4 DESCRIPTION. You're standing on a small platform anchored to the side of the shaft. A few of the pipes and conduits disappear into the walls while a few continue their journey downward.[no line break]";
		-- Shaft 5: say "SHAFT 5 DESCRIPTION. You're at the bottom of the shaft. The remaining pipes disappear into the walls. Far above your head a small dot of light shows daylight outside but none of that light penetrates to this depth.[no line break]";
		-- otherwise: say "NULL";

Chapter - Shaft Directions

To say shaft-directions:
	if the location of the player is Shaft 0:
		say "down";
	otherwise:
		if the location of the player is Shaft 5:
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
The shaft-ladder is in Shaft 5.

The description of the shaft-ladder is "A series of metal rungs set into the metal wall of the shaft." [Carved into the metal next to the ladder are a series of glyphs [ladder-glyphs]."]

Understand "ladder" as shaft-ladder.

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
		-- Shaft 0: say "[level-0-light] [tamil-look]";
		-- Shaft 1: say "[level-1-light] [tamil-surface]";
		-- Shaft 2: say "[level-2-light] [tamil-social]";
		-- Shaft 3: say "[level-3-light] [tamil-sleep]";
		-- Shaft 4: say "[level-4-light] [tamil-eat]";
		-- Shaft 5: say "[level-5-light] [tamil-work]";
		-- otherwise: say "NULL";

Part - Underground - Level 0

Chapter - Shaft 0

Shaft 0 is underground.
Shaft 0 is up from Shaft 1.

The description of Shaft 0 is "[shaft-description][paragraph break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall."

The printed name of Shaft 0 is "Shaft - Level 0". [[ladder-glyphs]".]

The visibility of Shaft 0 is day.

Part - Underground - Level 1

Chapter - Bottom Well

The Bottom Well is underground.
Up from the Bottom Well is the Top Well.
North from the Bottom Well is Shaft 1.
The description of Bottom Well is "The light from above illuminates the bottom of a what appears to be merely a dry well.[paragraph break]The ladder leads up and there is an opening to the north."

[> x metal grate]

The visibility of Bottom Well is day.

The printed name of Bottom Well is "Bottom of the Well"

Before going north in the Bottom Well:
	say "GOING NORTH FROM THE BOTTOM WELL."

The brass lantern is a device.
The brass lantern is in the Bottom Well.
The description of the brass lantern is "A battered brass lantern that can be turned on or off."

player-has-light is a truth state that varies.
player-has-light is false.

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
Shaft 1 is down from Shaft 0.

The description of Shaft 1 is "[shaft-description][paragraph break]You're standing on a small platform anchored to the side of a large cylindrical shaft. You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."

The printed name of Shaft 1 is "Shaft - Level 1". [[ladder-glyphs]".]

The visibility of Shaft 1 is day.

Part - Underground - Level 2

Chapter - Shaft 2

Shaft 2 is underground.
Shaft 2 is down from Shaft 1.
Shaft 2 is up from Shaft 3.
Shaft 2 is north of the Agora.

The description of Shaft 2 is "[shaft-description][paragraph break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."
	
The printed name of Shaft 2 is "Shaft - Level 2". [[ladder-glyphs]".]

The visibility of Shaft 2 is day.

Chapter - Agora

The Agora is underground.
The Agora is south of Shaft 2.
The Agora is west of the Curia.
The Agora is north of the Museum.
The Agora is east of the Temple.
The Agora is southeast of the Storerooms.
	
The description of Agora is "AGORA DESCRIPTION. What appears to be an underground common area large enough to accommodate hundreds at once. A weak light filters down from the well grating far above your head, illuminating the room.[paragraph break]There are exits to the east, south, west, northwest, and north."

The visibility of Agora is day.

Chapter - Curia

The Curia is underground.
The Curia is east of the Agora.

The description of Curia is "CURIA DESCRIPTION.  A raised area with several levels of semi-circular benches carved into the east wall, separted from the much larger area to the west by a raised platform where, should the mood strike you, you could stand and address the ghosts of senators past.[paragraph break]You can exit to the west."

The visibility of Curia is day.

Chapter - Museum

The Museum is underground.
The Museum is south of the Agora.

The description of Museum is "MUSEUM DESCRIPTION.  A wide circular ramp winds its way up along the circumference of the circular room past smashed dioramas and looted exhibits of your future, someone's past.[paragraph break]You can exit to the north."

The visibility of Museum is day.

Chapter - Temple

The Temple is underground.
The Temple is west of the Agora.

The description of Temple is "TEMPLE DESCRIPTION. Rows of dust-covered pews face an apse containing a raised alter. Behind the alter, a grotesque charicature of the what appears to be DaVinci's Vitruvian Man is crucified on an intricate mesh of stylized and interlocking gears of various sizes filling the wall behind him.[paragraph break]You can exit to the east."

The visibility of Temple is day.

Chapter - Storerooms

The Storerooms are underground.
The Storerooms are northwest of the Agora.

The description of Storerooms is "STOREROOM DESCRIPTION. Whatever was contained on and in these empty shelves and bins as far as the eye can see is gone. [paragraph break]You can exit to the southeast."
	
The visibility of Storerooms is day.

Part - Underground - Level 3

Chapter - Shaft 3

Shaft 3 is underground.
Shaft 3 is down from Shaft 2.
Shaft 3 is up from Shaft 4.
Shaft 3 is north of the Living Quarters.

The description of Shaft 3 is "[shaft-description][paragraph break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."

The printed name of Shaft 3 is "Shaft - Level 3". [[ladder-glyphs]".]

The visibility of Shaft 3 is day.

Chapter - Living Quarters

The Living Quarters are underground.
The Living Quarters are south of Shaft 3.
The Living Quarters are up from the Catacombs.

The description of Living Quarters is "LIVING QUARTERS DESCRIPTION. Floor upon floor of individual cubbyholes carved into the walls rise up towards the ceiling hundreds of feet above your head, connected by an intricate latticework of stairs and platforms.[paragraph break]There are exits to the north and down."
		
The visibility of Living Quarters is shadow.

Chapter - Catacombs

The Catacombs are underground.
The Catacombs are down from the Living Quarters.

The description of Catacombs is "CATACOMBS DESCRIPTION. You wander briefly through a maze of twisty passages, passing alcoves, sepulchers, and niches stuffed with the cataloged bones and mummified remains of the dead inhabitents of this underground arcology. Eventually, through luck or providence, to your relief, you find yourself back at the tunnel upward."

The visibility of Catacombs is shadow.
		
[TBD - > Examine bones > Examine mummified remains]

Part - Underground - Level 4

Chapter - Shaft 4

Shaft 4 is underground.
Shaft 4 is down from Shaft 3.
Shaft 4 is up from Shaft 5.
Shaft 4 is north of the Eating Area.

The description of Shaft 4 is "[shaft-description][paragraph break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is an opening to the south."

The printed name of Shaft 4 is "Shaft - Level 4". [[ladder-glyphs]".]

The visibility of Shaft 4 is twilight.

Chapter - Eating Area

The Eating Area is underground.
The Eating Area is south of Shaft 4.
The Eating Area is north of the Abattoir.

The description of Eating Area is "EATING AREA DESCRIPTION. Rows of alternating benches and troughs parallel each other and fill the this room. Only a few of the troughs appear to have been recently used.[paragraph break]There are exits to the north and south."

The visibility of Eating Area is night.

[TBD > Examine benches > Examine troughs ]

Chapter - Abattoir

The Abattoir is underground.
The Abattoir is south of the Eating Area.
The Abattoir is north of the Holding Pen.

The description of Abattoir is "ABATTOIR DESCRIPTION. Resembling a morgue more than a kitchen, this room is dominated by a large bloodstained metal table with indented channels cut into its surface for drainage. Hanging on the walls are various knives and implements of bodily dismemberment, also specked with blood and rotting matter.[if pile of clothing is in the Abattoir] PILE OF CLOTHING.[end if][paragraph break]There are exits to the north and south."
	
The visibility of Abattoir is night.

Section - Eloi Clothing

The pile of clothing is a thing.
The pile of clothing is in the Abattoir.
The pile of clothing is undescribed.
The description of pile of clothing is "The pile of clothing turns out to be a collection of bloodstained Eloi smocks and tunics. A few are relatively untouched by blood."

Understand "smocks" or "tunics" as pile of clothing.

Chapter - Holding Pen

The Holding Pen is underground.
The Holding Pen is south of the Abattoir.

The description of Holding Pen is "HOLDING PEN DESCRIPTION.[paragraph break]The exit is to the north"
	
The visibility of Holding Pen is night.

Part - Underground - Level 5

Chapter - Shaft 5

Shaft 5 is underground.
Shaft 5 is down from Shaft 4.
Shaft 5 is north of the Heavy Sliding Door

The description of Shaft 5 is "[shaft-description][paragraph break]You can climb [shaft-directions] the shaft using the ladder embedded in the wall and there is a heavy sliding door to the south."
	
The printed name of Shaft 5 is "Shaft - Level 5". [[ladder-glyphs]".]
	
The visibility of Shaft 5 is night.

Chapter - Heavy Sliding Door

The Heavy Sliding Door is a door.
The Heavy Sliding Door is south of Shaft 5 and north of the Power Plant.
The Heavy Sliding Door is scenery.
	
The description of Heavy Sliding Door is "HEAVY SLIDING DOOR DESCRIPTION. A heavy metal door on a track that can slide open and shut."

Chapter - Power Plant

The Power Plant is underground.
The Power Plant is south of the Heavy Sliding Door.
	
The description of Power Plant is "POWER PLANT DESCRIPTION. The deafening sound of titanic machinery fills this room. On all sides you can see the shadowy movement of levers, pistons, and gears juxtaposing their operations to sustain life in this underground city.[paragraph break]There is a heavy sliding door to the north."
	
The visibility of Power Plant is night.

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
Shaft 2 and Agora and Curia and Museum and Temple and Storerooms are in Year-802701-Underground.
Shaft 3 and Living Quarters and Catacombs are in Year-802701-Underground.
Shaft 4 and Eating Area and Abattoir and Holding Pen are in Year-802701-Underground.
Shaft 5 and Power Plant are in Year-802701-Underground.
			
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
The blueprints are a familiar thing.

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
	say "'I wouldn't know anything about Mr. Wells['] experiments. He never talked to me about his work. Did all his those things in his workshop behind closed doors. Raised a dreadful racket sometimes, I tell you.'"

After quizzing Watchett about time travel:
	say "[remove time travel ask suggestion]";
	say "'I wouldn't know anything about that. Running a house, one day at a time, that's my lot in life."

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
	say "[one of]That's where it still must be.[no line break][or]But it never stayed there for long.[no line break][or]But it was always falling out of his pocket at the drop of a hat.[no line break][or]But he was always loosing it.[no line break][at random]".

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

Part - Movement

Every turn:
	if Watchett is mobile:
		repeat through the Table of Watchett's Movement:
			let the last space be the location of Watchett;
			if Watchett can be seen by the player, say "Mrs. Watchett heads to [the destination entry].";
			move Watchett to destination entry;
			if Watchett can be seen by the player, say "Mrs. Watchett arrives from [the last space].";
			blank out the whole row;
			break.

Table of Watchett's Movement
destination
Entryway
Library
Parlor
Dining Room
Kitchen

[TBD Mrs Watchett should linger in rooms along the way to the Kitchen. Give her table of things to do.]
[? Maybe make it a task table for each room (so I can choose a random column).]

Table of Watchett's Room Tasks
room			task
Library			"reshelves some books"
Library			"rearranges the chairs"
Library			"looks out the windows"
Library			"draws the curtains closed"
	

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

Section - Informing - "Tell [someone] about [thing]"	
	
After informing Humboldt about Wells:
	say "Humboldt gives you an increduous look as he listens to your learned but laymans opinion on Wells's condition."
	
[DEL After informing Humboldt about the workshop-room:
	try quizzing Humboldt about the second noun.]

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
	say "'I[']m glad to see that you have held onto Wells['] watch.'"

After quizzing Humboldt about the petal during Ending Scene: 
	say "'I gave that to you earlier. You were supposed to find the rest of it so we could convince Wells that his story was nonsense, a figment of his imagination. Did you find it?'"

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

After quizzing Humboldt about the blueprints during Ending Scene: 
	say "Humboldt takes the blueprints and walks over to the time machine. Shuffling the pages he manages to tie each blueprint diagram with its counterpart on the physical machine. After satisfying himself he returns the blueprints to you. 'Impressive workmanship. But there's no proof that it does what Wells says it does,' he says."

After quizzing Humboldt about the fuse-orrery during the Ending Scene: 
	say "Humbold briefly examines the fuse, turning it over in his hands, before returning it to you." [BURNT OUT vs. WORKING ?]

Section - Informing - "Tell [someone] about [thing]"

After informing Humboldt about the petal during the Ending Scene: 
	say "'I know all that. But did you find the rest of the flower?'"

[After informing Humboldt about the time machine during the Ending Scene:
	say "'I'd like to believe that it does what you say it does but we've no proof.'"]

[Before informing Humboldt about the workshop-room during the Ending Scene: 
	try quizzing Humboldt about the second noun;
	stop the action.]

After informing Humboldt about the workshop-room during the Ending Scene: 
	say "Humboldt listens dispassionately as you enthusiastically point out various areas of the workshop, a nonplussed look on his face."

After informing Humboldt about the breaker during the Ending Scene: 
	say "Humboldt nods slightly as you explain how the fuse is necessary for the time machine[']s operation."

After informing Humboldt about the pocket watch during the Ending Scene: 
	say "Humboldt nods slightly as you show him Wells['] pocket watch."

Section - Informing - With Patience Rules

[Modify [second noun] based on what you tell him about, maybe add more descriptive text like replacing "shaft" with "shaft and the underground tunnels"]
To say reply-intro: 
	say "Humboldt listens to you talk about [second noun]".

To say reply-response:
	if the patience of Humboldt is:
		-- tolerant-1:
			say ". Nodding his head as you speak, he waits paitiently until you've finished. 'But what about what I asked you to do?'";
		-- tolerant-2:
			say " but it's obvious he's already heard something similar from Wells. 'Obviously you were able to get into the workshop. Did you find anything?'";
		-- frustrated-1:
			say ", waiting in frustration for you to finish. 'But any luck finding the rest of that flower?'";
		-- frustrated-2:
			say " He stares at you, his annoyance clearly visible on his face as you finish. He looks around the room, his patience obviously exhausted, not knowing what to say.";
		-- angry-1:
			let current location be the location of Humboldt;
			say " but cuts you off before you're finished. 'I know you want to help Wells, we both do. But repeating his delusional nonsense without any proof won't convince me no matter how many times I hear it. In fact, it makes me doubt your own sanity. Good evening.'[paragraph break]Humboldt turns and storms out of [the current location][if Gernsback is in the current location] with Gernsback following close behind. You can't be sure but you think you see a smile of satisfaction on the businessman's face[end if].";
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

Test end-humboldt with "say hello to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about time machine / ask humboldt about pocket watch / ask humboldt about petal / ask humboldt about key / ask humboldt about fuse / ask humboldt about blueprints / ask humboldt about eloi / ask humboldt about  weena / ask humboldt about morlocks / show poker to humboldt / show pocket watch to humboldt / show petal to humboldt / tell humboldt about petal / tell humboldt about time machine / tell humboldt about workshop / tell humboldt about fuse".

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

The description of Gernsback is "The perfect picture of Victorian masculinity and success in his double breasted lounge suit, his tailored attire offsets the somewhat brutish features below a high forehead and thinning hair styled in a combover, his only concession to vanity. It's said around town that his piercing gaze misses no chance to increase his family fortunes."

Gernsback is scenery. [This prevents "You can see Gernsback here." being printed out in room descriptions.]
Gernsback is major.

Part - Suggestions 

Part - Conversation 

Chapter - Hello

After saying hello to Gernsback when the greeting type is explicit: 
	if Ending Scene is not happening:
		say "[first time]Gernsback marks his place in his book and looks up at you. [only][one of]'Evening Filby.'[or]'How can I help you Filby?[or]'Filby.'[at random]";
		say "[add book ask suggestion]";
		say "[add cigar-gernsback ask suggestion]";
		say "[add workshop-room ask suggestion]";
		say "[add key ask suggestion]";
		say "[add Wells ask suggestion]";
		say "[add Watchett ask suggestion]";
		say "[add self-suggestion ask suggestion]";
		say "[add Wells tell suggestion]";
	otherwise:
		continue the action.

After saying hello to Gernsback when the greeting type is implicit:
	if Ending Scene is not happening:
		say "Gernsback pauses in his reading and marks his place in his book before answering. [run paragraph on]";
		say "[first time]Gernsback marks his place in his book and looks up at you. [only][one of]'Evening Filby.'[or]'How can I help you Filby?[or]'Filby.'[at random]";
		say "[add book ask suggestion]";
		say "[add cigar-gernsback ask suggestion]";
		say "[add workshop-room ask suggestion]";
		say "[add key ask suggestion]";
		say "[add Wells ask suggestion]";
		say "[add Watchett ask suggestion]";
		say "[add self-suggestion ask suggestion]";
		say "[add Wells tell suggestion]";
	otherwise:
		continue the action.

Chapter - Goodbye

After saying goodbye to Gernsback when the farewell type is explicit: 
	if Ending Scene is not happening:
		say "'Mmph...Let me know if I can help in any way,' he says, going back to his reading.";
	otherwise:
		continue the action.
	
After saying goodbye to Gernsback when the farewell type is implicit:
	if Ending Scene is not happening:
		say "Gernsback watches you head into the[if the room gone to is the Parlor] parlor[otherwise] entryway[end if] before returning to his book.[line break]";
	otherwise:
		say "Gernsback watches you abruptly leave the workshop but stays to look around."

Chapter - In The Library

Section - Requests - "Ask [someone] for [thing]"

After requesting Gernsback for the newspaper: 
	say "'I don[']t have it.'"

After requesting Gernsback for the book: say "'Plenty of other books in the library for you to look at.'"

After requesting Gernsback for the box of matches:
	if the player does not have cigar-player:
		say "A quizzical look crosses Gernsback[']s face. 'Don[']t know why you[']d need those.'";
	otherwise:
		say "'Of course, how silly of me to forget. Keep them.'";
		now the player has box of matches.

Does the player mean requesting Gernsback for the cigar-gernsback: it is very unlikely.
Does the player mean requesting Gernsback for the cigar-player: it is very likely.

After requesting Gernsback for the cigar-player:
	if the player does not have cigar-player: 
		say "'Happy to oblige. Didn't know you were a fellow smoker.' He reaches inside his jacket lapel and hands you a cigar out of his leather case.";
		now the player has cigar-player;
	otherwise:
		say "I think you should finish that one first. Make sure it's to your liking."

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Gernsback about Wells:
	say "[remove Wells ask suggestion]";
	say "'Sad. If I had known it would have lead to this I never would have given him encouragement.'"

After quizzing Gernsback about Humboldt:
	say "'Smart man. A bit full of himself though. Not as practical as you and me.'"

After quizzing Gernsback about Watchett: 
	say "[remove Watchett ask suggestion]";
	say "'I believe she's still in the kitchen.'"
	
After quizzing Gernsback about Gernsback: 
	say "[remove self-suggestion ask suggestion]";
	say "GERNSBACK TALKS ABOUT HIMSELF."

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

Does the player mean quizzing Gernsback about cigar-player: it is very unlikely.
Does the player mean quizzing Gernsback about cigar-gernsback: it is very likely.

After quizzing Gernsback about cigar-gernsback: 
	say "[remove cigar-gernsback ask suggestion]";
	say "'Believe it was Kipling who said 'A woman is only a woman, but a good cigar is a smoke.' Can't disagree with him when it comes to this Partagás.'"

After quizzing Gernsback about pocket watch: say "'That looks like Wells' watch.'"

After quizzing Gernsback about newspaper: 
	say "'It[']s there in the other room if you want to read it.'"

After quizzing Gernsback about key:
	say "[remove key ask suggestion]";
	say "'Probably plenty of keys around here. Mrs. Watchett would probably know.'"

ask-about-gernsback-book is a truth state that varies.
ask-about-gernsback-book is false.

After quizzing Gernsback about book:
	if ask-about-gernsback-book is false:
		say "[remove book ask suggestion]";
		choose a random row from Table of Gernsback Book;
		say "'[one of]Fascinating[or]Interesting[or]Strange[or]Intriguing[or]Engaging[or]Entertaining[or]Amusing[at random] story. Called ['][Title entry].['] About [Comment entry] Never heard of the author though.'";
		now ask-about-gernsback-book is true;
	otherwise:
		say "'I just told you about it.'".

Table of Gernsback Book
Title	Comment
"The Island of Doctor Moreau"	"an exiled scientist on an island turning animals into people. Don’t really understand the reasons why. Doesn’t seem to be money in it unless you can turn them into domestics."
"The Invisible Man"	"an albino scientist who makes himself invisible. Can’t reverse the process and goes a bit crazy. Shot dead before he can turn himself back. Probably check up on my competitors if I were invisible instead of wasting time terrorizing the nation. No money in it."
"The War of the Worlds"	"an invasion from Mars by slugs in some sort of walking machines with three legs, if you can believe that. Wouldn’t mind having the patent on those I tell you."
"When the Sleeper Wakes"	"a man who sleeps for two hundred years. Wakes up to find he’s become the richest man in the world. Wouldn’t mind that happening to me. Richest man in the world, not the sleeping part."
"The First Men in the Moon"	"a scientist chap like our Wells who invents some of anti-gravity material. Uses it to travel to the Moon instead of making a fortune off of it, if you can believe that."

Section - Informing - "Tell [someone] about [thing]"

To say dont-know:
	say "'Don't know what you're talking about.'" 

To say fascinating-but:
	say "'Fascinating. But I don't see how this helps Wells.'"

After informing Gernsback about Wells:
	if Ending Scene is not happening:
		say "[remove Wells tell suggestion]";
		say "'I'm not a medical man but I think the best thing you could do, as his attorney, is have him committed. Protect him from himself. Only my opinion mind you.'";
	otherwise:
		continue the action.

After informing Gernsback about Humboldt: 
	if Ending Scene is not happening:
		say "'He'll be back soon. Tell us what he's found and we'll decide what to do then.'";
	otherwise:
		continue the action.

After informing Gernsback about Watchett: 
	if Ending Scene is not happening:
		say "'Wonderful meal that was, as always.  That woman's a treasure. Don't know where Wells found her.'";
	otherwise:
		continue the action.

After informing Gernsback about time machine:
	if Ending Scene is not happening:
		if time machine has been seen: 
			say "'Fascinating. But I don't see how this can help Wells if it doesn't actually work.'"; 
		otherwise:
			say "'We'll never know for sure unless you find a way into Wells' workshop.'";
	otherwise:
		continue the action.

After informing Gernsback about orrery:
	if Ending Scene is not happening:
		if the orrery has been seen:
			say "[fascinating-but]";
		otherwise:
			say "'I think you'll find what you're looking for in the next room.'";
	otherwise:
		continue the action.
		
Before informing Gernsback about fuse-orrery:
	if fuse-orrery has not been seen:
		say "You can't see any such thing.";
		stop the action.
	
After informing Gernsback about fuse-orrery:
	if Ending Scene is not happening:
		if fuse-orrery has been seen: 
			say "[fascinating-but]";
		otherwise:
			say "[dont-know]";
	otherwise:
		continue the action.

Before informing Gernsback about fuse-time-machine:
	if fuse-time-machine has not been seen:
		say "You can't see any such thing.";
		stop the action.
	
After informing Gernsback about fuse-time-machine:
	if Ending Scene is not happening:
		if fuse-time-machine has been seen:
			say "[fascinating-but]"; 
		otherwise:
			say "[dont-know]";
	otherwise:
		continue the action.

After informing Gernsback about blueprints:
	if Ending Scene is not happening:
		if blueprints have been seen:
			say "[fascinating-but]";
		otherwise:
			say "[dont-know]";
	otherwise:
		continue the action.

After informing Gernsback about workshop-room:
	if Ending Scene is not happening:
		if the workshop is visited:
			say "'What did you find?'";
		otherwise:
			say "'Well done. Let me know what you find.'";
	otherwise:
		continue the action.

After informing Gernsback about key: 
	if Ending Scene is not happening:
		if the player has the key: 
			if the workshop is visited:
				say "'What did you find?'";
			otherwise:
				say "'Well done. Let me know what you find.'";
		otherwise:
			say "'The doctor has the right idea. If there's a key to get into that workshop Mrs. Watchett might have a good idea where it might be.'";
	otherwise:
		continue the action.

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing noun to Gernsback: try informing Humboldt about noun.
After showing something to Gernsback: say "SHOWING [noun]".

Chapter - Ending Scene Only

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Gernsback about Wells during the Ending Scene:
	say "'The doctor is probably in a better position to answer that question.'"

After quizzing Gernsback about Humboldt during the Ending Scene:
	say "'Best man in his field, they say.'"

Understand "his-work" as experiments.
After quizzing Gernsback about experiments during the Ending Scene: 
	say "Gernsback looks around the room. 'Without Wells we really can't tell what's what.'"
	
After quizzing Gernsback about time travel during the Ending Scene:
	say "Gernsback looks at his watch. 'The only time travel I've done is about an hour from when we last spoke. The doctor told me about your task. Any luck?'"
	
After quizzing Gernsback about the time machine during the Ending Scene: 
	say "[if the time machine is not nowhere]'Outside my area of expertise. I could have one of my chaps from the factory take a look at it if you'd like.'[otherwise]Gernsback looks around the workshop with a puzzled look on his face. 'Don't see anything remotely like what Wells described.'[end if]"

After quizzing Gernsback about workshop-room during the Ending Scene: 
	say "Gernsback looks around the room. 'Pretty much what I expected.'"


Chapter - Default Responses

Default ask response for Gernsback:
	say "'I don't know anything about that.'"

[Default answer response for Gernsback:]

Default tell response for Gernsback:
	if Ending Scene is not happening:
		say "'That's very interesting...'";
	otherwise:
		say "Gernsback listens to what you say about the [second noun], glancing at Humboldt several times as you speak."

[Default ask-tell response for Gernsback:]
[Default give response for Gernsback:]
[Default show response for Gernsback:]
[Default give-show response for Gernsback:]

Default ask-for response for Gernsback:
	say "'I[']m afraid I can[']t help you with that.'"

[Default yes-no response for Gernsback:]
[Default response for Gernsback:]

Part - Testing
	
Test g-hello with "say hello to gernsback / say goodbye to gernsback / ask gernsback about wells / north."

Test g-convo with "test g-req / test g-quiz / test g-tell."
	
Test g-req with "ask gernsback for newspaper / ask gernsback for book / ask gernsback for box of matches / ask gernsback for cigar."
	
Test g-quiz with "ask gernsback about wells / ask gernsback about humboldt / ask gernsback about watchett / ask gernsback about weena / ask gernsback about eloi / ask gernsback about morlocks / ask gernsback about experiments / ask gernsback about his-work / ask gernsback about time travel / ask gernsback about time machine / ask gernsback about orrery / ask gernsback about workshop-room / ask gernsback about box of matches / ask gernsback about cigar / ask gernsback about  pocket watch / ask gernsback about petal / ask gernsback about key / ask gernsback about newspaper / ask gernsback about book."

[The game must be restarted before running each of these tests]

Test go-gernsback with "go north / go north / go west."
		
Test g-start-tell with "go-gernsback / tell gernsback about wells / tell gernsback about humboldt / tell gernsback about watchett / tell gernsback about weena / tell gernsback about eloi / tell gernsback about morlocks / tell gernsback about time machine / tell gernsback about orrery / tell gernsback about breaker / tell gernsback about fuse / tell gernsback about blueprints / tell gernsback about experiments / tell gernsback about time travel / tell gernsback about workshop-room / tell gernsback about petal / tell gernsback about key."

Test g-end-tell with "test xpl-802701 / exit / test g-start-tell."

Test g-time with "test go-gernsback / tell gernsback about time machine / go east / purloin key / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about time machine."

Test g-orrery with "test go-gernsback / tell gernsback about orrery / go north / go south / tell gernsback about orrery."

Test g-fuse-orrery with "test go-gernsback / tell gernsback about fuse / tell gernsback about orrery fuse / tell gernsback about fuse-orrery / go north / slide right panel / take orrery fuse / go south / tell gernsback about fuse / tell gernsback about orrery fuse / tell gernsback about fuse-orrery."
	
Test g-fuse-time with "test go-gernsback / tell gernsback about fuse / tell gernsback about time machine fuse / tell gernsback about fuse-time-machine / test see-fuse-time / tell gernsback about fuse / tell gernsback about time machine fuse / tell gernsback about fuse-time-machine."
Test see-fuse-time with "go east / purloin key / unlock workshop door with key / go north / flip switch / enter time machine / unlock hinged panel with key / open hinged panel / examine time machine fuse holder / exit / go south / go west."

Test g-blue with "test go-gernsback / tell gernsback about blueprints / go east / purloin key / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about blueprints."

Test g-work with "test go-gernsback / tell gernsback about workshop / tell gernsback about workshop-room / go east / purloin key / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about workshop / tell gernsback about workshop-room."

Test g-key with "test go-gernsback / tell gernsback about key / purloin key / tell gernsback about key / go east / unlock workshop door with key / go north / flip switch / go south / go west / tell gernsback about key."
	
Test g-topics with "test go-gernsback / say hello to gernsback / ask gernsback about book / ask gernsback about cigar / ask gernsback about workshop / ask gernsback about key / ask gernsback about wells / ask gernsback about watchett / tell gernsback about wells / ask gernsback about himself / ask gernsback about gernsback."



Book - Eloi

The Eloi are people. "[if the player is in the River Bank for more than the first time]A few of the Eloi gather around you.[otherwise]A small group of individuals, by your count twenty or thirty, are spread out along this section of the river bank, involved in a variety of activities. Some are swimming in the shallows, others are resting on the river bank, a few gather flowers or fruit and, to your horror, a few are involved in prurient matters in the shadows of nearby bushes. These must be the Eloi from Wells['] story.

Noticing your presence, a few of the Eloi gather around you.[end if]"

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

After quizzing the Eloi about Weena:
	now introduce-weena is true.

Section - Informing - "Tell [someone] about [thing]"

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing the pocket watch to the Eloi:
	say "Suddenly all the Eloi stop their chattering and silently focus on the pocket watch. One of them grabs it from you and turns it over in their hands. They show it to another Eloi who grabs it from them."[paragraph break];
	now the Eloi is carrying the pocket watch;
	now introduce-weena is true.

Section - Giving
		
Instead of giving the pocket watch to the Eloi:
	try showing the pocket watch to the Eloi.

Chapter - Default Responses

[Default ask response for Eloi:] 
[Default answer response for Eloi:]
[Default tell response for Eloi:]
	
Default ask-tell response for Eloi:
	say "Try as you might you can[']t make the Eloi understand what you are saying. Some of them laugh at your strange pronunciation while others coo and chatter among themselves quietly. Others become bored and drift off into other pursuits while still others walk over to see the new oddity." 
	
Default give response for Eloi:
	say "You hand the [noun] to one of the Eloi. Puzzled, they look at it a for a few second and, unable to discern its purpose, pass it around the small group gathered until the [noun] is returned to you."
	
Default show response for Eloi:
	say "The group looks at the [noun] with various degrees of puzzlement on their faces but no recognition of the [noun]'s function."	
	
[Default give-show response for Eloi:]
[Default ask-for response for Eloi:]
[Default yes-no response for Eloi:]
[Default response for Eloi:]


Book - Weena

Weena is a person.
Weena is nowhere.
Weena is fixed.
Weena is major.
The description of Weena is "Slightly taller than the other Eloi but dressed as they are and with the same similarity of features and build, this is clearly the girl Wells described."

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
	say "Weena looks at the petal in your hand and, reaching up into her hair, she remove a single flower and hands it to you before running off. It must be a game she played with Wells. The rest of the Eloi follow her and soon you are alone by the river.";
	now the player is carrying the flower;
	now the Eloi are nowhere;
	now Weena is nowhere.

Section - Giving

Instead of giving the pocket watch to Weena:
	say "She looks at the pocket watch, smiles, and then returns it to you."

Instead of giving the petal to Weena: try showing the petal to Weena.

Chapter - Default Responses

[Default ask response for Weena:] 
[Default answer response for Weena:]
[Default tell response for Weena:]

Default ask-tell response for Weena:
	say "Try as you might you can't make Weena understand what you are talking about. At times she laughs at your strange pronunciations."

Default give response for Weena:
	say "You hand the [noun] to Weena. Puzzled, she looks at it a for a few seconds and, unable to discern its purpose, passes it around the small group gathered until the [noun] is returned to you."

Default show response for Weena:
	say "Weena looks at the [noun] with a degree of puzzlement on her face but no recognition of the [noun]'s function."

[Default give-show response for Weena:]
[Default ask-for response for Weena:]
[Default yes-no response for Weena:]
[Default response for Weena:]

Part - Flower

The flower is a thing.
The flower is nowhere.
The description of the flower is "Unlike any vegetation you've ever seen, the petal that Humboldt gave you matches those on this flower's blossom exactly. If this won't convince the doctor of Wells[apostrophe] sanity then nothing will."


Book - Morlocks

morlock-placeholder is a thing.
morlock-placeholder is scenery.

morlock-placeholder is a backdrop.
morlock-placeholder is in the Year-802701-Underground.

The printed name of morlock-placeholder is "the Morlocks".

Understand "morlocks" or "morlock" as morlock-placeholder.

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

Check burning something with something (this is the burn only things not held rule):
	say "[one of]It occurs to you to set down [the noun] before burning, just for safety's sake. [or]Again, you decide to put down [the noun] prior to burning. [or]You try setting down [the noun] as usual. [stopping][run paragraph on]";
	silently try the player dropping the noun;
	if player encloses the noun, stop the action.

[Remove or modify Carry/Report to allow newspaper to be used as a torch; give burning newspaper a duration]
Carry out burning something with something (this is the simplistic burning rule):
	now the noun is nowhere.

Report burning something with something:
	say "You burn up [the noun]."

Rule for implicitly taking the second noun while burning something with something which is not a strikable-match:
	say "You can ony light things with matches.";
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
	now the noun is lit.

Report striking a strikable-match (this is the standard report striking rule):
	say "You light [the noun]."

Before burning something with a new strikable-match (this is the prior lighting rule):
	say "(first [if the player does not carry the second noun]taking and [end if]lighting [the second noun])[command clarification break]";
	silently try striking the second noun;
	if the second noun is not flaming, stop the action.

Rule for implicitly taking a strikable-match (called target) while striking:
	try silently taking the target.
			
Does the player mean burning something with a flaming strikable-match:
	it is very likely.

Does the player mean burning something with a new strikable-match:
	it is likely.

Does the player mean burning something with a burnt strikable-match:
	it is unlikely.

Instead of burning a burnt strikable-match with something:
	say "[The noun] is completely consumed and cannot be relit."

Chapter - Putting The Matches Out

Every turn:
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
		say " matches go out[if a visible strikable-match is flaming], leaving [number of visible flaming s-matches in words] still let[end if].";
	repeat with item running through burnt s-matches:
		if the item is not nowhere:
			say "You drop the [flame-state of the item] [item][if the player is in Year-1895-Inside or the player is in Year-802701-Inside] on the floor.[otherwise] on the ground.";
			now the item is nowhere;
			refresh the list-inventory window.

Part - Torch

A torch is a kind of thing.
The plural of torch is torches.

A torch is flammable.

A torch has a number called duration.
The duration of a torch is usually 10.

A torch has a flame-state. A torch is usually new.
Understand the flame-state property as describing a torch.

Check burning a torch with something (this is the being able to hold a torch rule):
	say "LIGHTING A TORCH WHILE HOLDING IT.";
	stop the action.

Chapter - Putting The Torch Out

Test n-torch with "north / north / west / north /take newspaper / open box of matches / take match / light match / light newspaper."

Book - Newspaper

The newspaper is a torch.
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

Understand the command "read" as something new. [Recipe §9.6. Reading Matter]
Understand "read [something]" as reading.
Reading is an action applying to one thing, requiring light.

Carry out reading:
	if newspaper-reads is greater than penultimate-read:
		say "You realize that rereading today[']s paper isn[']t going to get you any closer to your goal and you drop it back onto the armchair.";
		now the newspaper is on the left armchair;
	otherwise:
		now the player has the newspaper;
		choose a random row from Table of Newspaper Stories;
		say "You glance at an article entitled '[Title entry]' about [Summary entry].";
		now newspaper-reads is newspaper-reads + 1.

Table of Newspaper Stories
Title	Summary
"The Railway Mystery"	"the continuing inquest into the mysterious death of a Mrs. Matilda Bryan on the London and North Western Railway at Tring"
"The Engineering Disputes"	"an upcoming conference of the Engineering and Shipbuilding Trades on implementing a union decision on the reduction of working hours"
"Growth Of Inland Revenue"	"a report from Commissioners of the Inland Revenue detailed the increase of [unicode 163]1,300,506 in revenue over the previous year"
"The British Museum"	"the annual attendance at the Museum during the past year, the total of 581,906 the highest number since 1890"
"The Sanitary Congress"	"the resumption of proceedings at the Sanitary Congress in Leeds"
"The St. Augustine Celebration"	"continued proceedings in connection with the Roman Catholic Conference commemorating the historical landing of St. Augustin and his companions"
"Alleged Blackmailing In Manchester"	"charges levels against the two managing directors of The Financial Post, who threatened to publish false and defamatory information about the governing director of 'Commerce Limited'"
"The Indian Frontier Troubles"	"two English officers killed and one severly wounded by some tribe between the Rambat Pass and Danesh Khel in India"

Book - Box Of Matches

The box of matches is a closed openable container.
The box of matches contains five s-matches.

Understand "matchbox" or "match box" as box of matches.

The box of matches is held by Gernsback.
[The box of matches is held by the player.] [When assigned this way the box of matches show up in the visible inventory right away instead of needing to type >wait]


Book - Book

[The book that Gernsback is reading is from the future. If you take the book and look at the publication date it will be a future date]
[The book should be an anthology]

The book is a thing. "A thick volume."
The description of the book is "You can't make out the entire title from this distance but the initial words 'H.G. Wells['] Fantastic Fiction' are clearly visible on the spine of the large book."

[The book is in the Parlor.]
The book is held by Gernsback.

Book - Tobacco

Tobacco is a kind of a thing.
Tobacco is either lit or unlit.
Tobacco is usually unlit.

Part Cigars

Chapter - Gernsback's Cigar

The cigar-gernsback is tobacco.
The description of cigar-gernsback is "GERNSBACK'S CIGAR."
The printed name of cigar-gernsback is "Gernsback's cigar".

The cigar-gernsback is held by Gernsback.

Understand "his cigar" or "the cigar" or "cigar" or "gernsbacks cigar" as cigar-gernsback.

Chapter - Player's Cigar

The cigar-player is tobacco.
The description of cigar-player is "PLAYER'S CIGAR."
The printed name of cigar-player is "cigar".

Understand "a cigar" or "cigar" as cigar-player.

The cigar-player is held by Gernsback.

Chapter - Examining Cigars

[Handling >examine cigar]
Does the player mean examining cigar-player when the player has cigar-player: it is very likely.
Does the player mean examining cigar-gernsback when the player does not have cigar-player: it is very likely.

Chapter - Testing

Test g-cigars with "ask gernsback about cigar / ask gernsback about his cigar / ask gernsback about the cigar / ask gernsback about cigar-gernsback / ask gernsback about cigar-player / ask gernsback for cigar / ask gernsback for cigar-player / ask gernsback for a cigar / ask gernsback for cigar-gernsback ."

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

When Humboldt's Return begins:
	[say "HUMBOLDT'S RETURN BEGINS.";]
	say "The door to the workshop opens and Dr. Humboldt and Gernsback enter. The doctor appears both relieved and annoyed. 'Where the hell have you been hiding? We've been through the entire house looking for you.'[no line break][if the time machine is not nowhere] He looks over your shoulder at the time machine. 'So that must be Wells['] time machine contraption.'[end if]"; ["Strange, that wasn't here before. Don't know how we missed it."]
	now Humboldt is in the Workshop;
	now Humboldt is mobile;
	now Gernsback is in the Workshop; 
	now Gernsback is mobile;
	now Gernsback is not scenery;
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

[When Ending Scene begins:]
	[say "ENDING SCENE BEGINS."]
	[implicitly greet Humboldt.]

[Recipe §7.13. Traveling Characters, Van Helsing example]
Every turn:
	if the patience of Humboldt is angry-1:
		if the time machine is nowhere:
			now Weena is in the time machine;
			now the time machine is in the workshop;
			now weena-appears is true;
	if Humboldt is mobile:
		if the location of Humboldt is not the location of the player:
			let the way be the best route from the location of Humboldt to the location of the player, using doors;
			try Humboldt going the way;
	if Gernsback is mobile:
		if the location of Gernsback is not the location of the player:
			let the way be the best route from the location of Gernsback to the location of the player, using doors;
			try Gernsback going the way;
	refresh the list-characters window.

Before an actor going when the room gone to is the location of the player:
	say "HUMBOLDT AND GERNSBACK ARRIVE FROM";

endgame-success is a truth state that varies.
endgame-success is false. 

endgame-failure is a truth state that varies.
endgame-failure is false.

Instead of showing the flower to Humboldt:
	now endgame-success is true.

[TBD - What about giving things to other characters now that Block Giving rule not listed in Check Giving rules?]
The block giving rule is not listed in the check giving it to rules. [Recipes §7.4. Barter and Exchange]
After giving the flower to Humboldt:
	now endgame-success is true.

Ending Scene ends when endgame-success is true or endgame-failure is true.

When Ending Scene ends:
	[say "ENDING SCENE ENDS."]
	if endgame-success is true:
		if weena-appears is true:
			say "ENDGAME-SUCCESS = TRUE, WEENA-APPEARS = TRUE.";
		otherwise:
			[say "SUCCESS. HUMBOLDT REALIZES THAT WELLS IS NOT INSANE.";]
			say "Humboldt studies the flower in amazement. 'I[']m just an amateur botanist but this morphology is unique,' he says. 'There must be some truth to Wells[apostrophe] story.' You recount your adventures in the future and take the doctor for a brief journey to the year 802,701 before the both of you go to the hospital to free Wells.";
	if endgame-failure is true:
		[say "FAILURE. YOU ARE DRAGGED OFF TO THE ASYLUM."]
		say "Alone, looking around the workshop, you feel a sense of failure and despair. Your attempt to vidicate your friend Wells has failed and his story of time travel will not be believed.";
	end the story finally.

Book - Gernsback

Part - Introduction Of Gernsback

Introduction Of Gernsback is a [recurring] scene.

Introduction Of Gernsback begins when player is in the Library for the first time.

When Introduction Of Gernsback begins: 
	[say "INTRODUCTION OF GERNSBACK BEGINS.";]
	say "Standing by the desk, looking out the window, is Gernsback, a successful businessman with ownership in several textile mills in the north. He[']s a frequent visitor at these gatherings and rumor has it he[']s also contributed money to Wells['] experiments.[paragraph break]Dropping the curtain, Gernsback lights his cigar with a match and gets it going with a few puffs. He gestures with the cigar as he speaks. 'I wouldn[']t believe it if I didn[']t see it with my own eyes. One minute he[']s sitting at the dining room table, explaining the...science of it all. The next minute...' He glances at the window, then shakes his head slowly, lost in thought.[paragraph break]Picking a book off the bookshelf, he turns back to you. 'I guess we had better make ourselves comfortable until Humboldt gets back.' Settling into the chair, Gernsback begins paging through his book.";
	now library-print-description is true;

Introduction Of Gernsback ends when library-print-description is true.

[When Introduction Of Gernsback ends: say "INTRODUCTION OF GERNSBACK ENDS."]

	



Book - Traveling In Time

Part - Travel To 802,701

Travel To 802,701 is a recurring scene.

Travel To 802,701 begins when the time machine is in the Workshop and player is in the time machine and the lever is switched on.

travel-to-802701 is a truth state that varies.
travel-to-802701 is false.

When Travel To 802,701 begins:
	[say "TRAVELING TO 802,701 BEGINS.";]
	now travel-to-802701 is true;
	say "From Wells['] story you have an idea of what is going to happen but you never expected to see it with your own eyes or experience it yourself.

	As the machine powers up and the dials start inching forward through the seconds, minutes, weeks, and months, the workshop and its contents, in fact the entire house, fade away to be replaced by a shimmering grey void. As the dials inch forward through time, vague shapes of all sizes appear and disappear on the surface of the void surrounding you and the time machine[unicode 8212]future people, places, and things living out their own personal cycle of birth, life, and death.

	You grip the time machine[']s framework as it shudders and gains velocity on its pre-programmed flight through the centuries and millennia towards what you suppose is the Age of Eloi and Morlocks that Wells spoke about.
	
	One age passes. Two ages. Five ages. The blur of the individual dials starts slowing down and stopping left to right—first the one on the far left and then the others—one by one, as your final destination approaches. Beneath your feet the time machine shifts gears internally and slows. The shimmering grey curtain surrounding you and the time machine starts to dissipate and fade away like an early morning fog in the face of the sun. Eventually the time machine stops, the dials indicating that 801,006 years have passed from when you started your journey in 1895.

	You have arrived in the year 802,701 A.D.";
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
	say "The time machine powers up and the grey void once again cloaks you and the machine in a temporal shroud. To your relief, the hands on the dials on the panel start turning backwards, one second at a time as you return to your point of origin. The time machine shudders and shakes slightly on its journey but the dread you felt on your outward trip is less than before as you watch the silent shapes perform their temporal pantomime on the grey surface surrounding you.

	Ages pass. One by one the dial hands approach zero and stop their retrograde spin. The time machine starts to slow and, as the last dial hits zero, it stops. The grey fog dissipates and the familiar workshop appears around you and the time machine.

	You have arrived back in the year 1895.";
	now the current-year is "1895";
	now the numeric-year is 1895;
	now the time machine is in the Workshop;
	now the time machine is undescribed;
	now the lever is switched off.
	
Travel To 1895 ends when the time machine is in the Workshop.

[When Travel To 1895 ends:
	say "TRAVEL TO 1895 ENDS.";]	

Book - Weena

Part - Introduction Of Weena

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

Part - Escape The Morlocks

Escape The Morlocks is a recurring scene.

Escape The Morlocks begins when the player is in the Holding Pen.

When Escape The Morlocks begins:
	say "ESCAPE THE MORLOCKS SCENE BEGINS."

Escape The Morlocks ends when the player is in the Clearing.

When Escape The Morlocks ends:
	say "ESCAPE THE MORLOCKS SCENE ENDS."


Part - Morlock Endgame

[Writing §8.18. Randomness]
[Writing §9.4. When play ends]

[Removed the Bottom Well wandering code that kicks this off.]
Instead of wandering in the Bottom Well:
	if morlocks-attacked is true:
		if the player has the poker:
			say "Even with a weapon you shouldn't try your luck, especially without a source of light and possibly some allies. I mean, you barely escaped from your first encounter with these brutish savages.";
		otherwise:
			say "I don't fancy you would want to try your luck a second time in that darkness, especially without a weapon. I mean, you barely escaped from your first encounter with those mongoloid underdwellers.";
	otherwise:
		if a random chance of 1 in 3 succeeds:
			if the player has the poker:
				say "You start down the [noun] tunnel without a light or a map towards the sound of the nearest machinery. Suddenly, without warning, multiple pairs of brutish hands reach out of the darkness and attempt to grab you. With a strength born of desperation and fear, you flail at them with the poker and drive what must be Morlocks off into the darkness. Retreating in what you hope is the correct direction, you find yourself back at the bottom of the shaft.";
				now morlocks-attacked is true;
			otherwise:
				if a random chance of 2 in 3 succeeds:
					say "You start down the [noun] tunnel without a light or a map towards the sound of the nearest machinery. Suddenly, without warning, mongoloid hands reach out of the darkness and grab you. By some miracle you are able to beat off your attackers and retreat back to the bottom of the shaft.";
				otherwise:
					say "You start down the [noun] tunnel without light or map towards the sound of the nearest machinery. The light fades as you proceed down the tunnel until you are in near absolute darkness. The noise of machinery gets louder and louder with each step you take.[paragraph break]Suddenly, without warning, multiple pairs of brutish hands reach out of the darkness and grab at you. You fight back valiently but, outnumbered and without a weapon, you are quickly overwhelmed by the negroid shadows and knocked unconscious.[paragraph break]Later, you regain consciousness in the freezing cold in some storage room carved out of solid rock. Shivering, you look around. Surrounding you are the naked bodies of Eloi, male and female, suspended on hooks, future fodder for the Morlocks. You bang on the door in horrror but the omnipresent and overwhelming sound of machinery drowns out your screams. Exhausted, you slump against the wall and soon succumb to the freezing cold, wishing you had believed Wells from the start.";
					end the story finally;
				now morlocks-attacked is true;
		otherwise:
			say "You start down the [noun] tunnel but without a light or a map you wander unsuccessfully in the darkness, eventually returning to where you started. Maybe you'll have better luck in another direction.".

	
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
"What else can I do in 802,701 A.D.?"		Table of 802701 Hints		""		hint toggle rule
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

Table of Time Machine Hints
hint		used
"Have you been able to get into the workshop?"		a number
"You will need to get into the workshop first."		
"Have you examined the time machine[']s control panel?"
"Have you pressed the round button?"
"There must be a piece missing from the time machine."
"Have you found the orrery?"
"Have you opened the orrery?"
"Maybe the fuse will help."
"But you don[']t know where the fuse should go in the time machine."
"Have you examined the blueprints?"
"> put fuse in time machine."		

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
"Weena seems to remember Wells['] watch. Have you tried showing her anything else?"
"Show Weena the petal."

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
"go north"
"go north"
"examine orrery"
"open panel"
"examine mechanism"
"take fuse"
"go north"
"ask watchett about key"
"go south"
"go south"
"go south"
"go east"
"go south"
"search area"
"go north"
"unlock workshop door with key"
"go north"
"flip switch"
"search workbench"
"examine blueprints"
"enter time machine"
"put fuse in control panel"
"examine control panel"
"press button"
"exit"
"go east"
"go east"
"go south"
"go north"
"go west"
"go west"
"go southeast"
"show eloi the s"
"show weena the petal"
"go northwest"
"enter time machine"
"press button"
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
• [line break]
• [line break]
• [line break]
• [line break]
• [line break]
• [paragraph break]";
	say "Release 12 Notes (v1.9)[paragraph break]
• [line break]
• [line break]
• [line break]
• [line break]
• [line break]
• [paragraph break]";
	say "Release 11 Notes (v1.8)[paragraph break]
• Endgame modifications: Added Gernsback, Watchett sent Nowhere, time machine reappears a few turn later with Weena if sent to 802,701 empty.[line break]
• Added Morlock Underground locations. Added visibility property to Underground rooms, each with its own light level (day, shadow, twilight, night).[line break]
• Coded up Morlack Attack routine based on Underground room visibility and if player has light source.[line break]
• [line break]
• [line break]
• [paragraph break]";
	say "Release 10 Notes (v1.7)[paragraph break]
• Added Gernsback's Box of Matches, Cigar, Book.[line break]
• Added matches, cigar, and book for Gernsback to use.[line break]
• Made >take newspaper distinct from >read newspaper.[line break]
• Created Gernsback conversation using Conversation Package extension.[line break]
• Added Introduction To Gernsback scene.[paragraph break]";
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
• Refactored time machine and control panel, adding explicit time machine fuse holder.[line break]
• Added code so you cannot insert two fuses into one fuse holder.[line break]
• Added code so devices work with working fuse and don't work with not working fuse.[paragraph break]";
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
• Refactored Watchett and Humboldt conversations to use Eric Eve's Conversation Package extension in time-machine-conversation storyworld (code to be integrated into time-machine at when all character conversation's refactored.[paragraph break]";
say "Release 4 Notes (v1.1)[paragraph break]
This release incorporates several fixes based on reviews and feedback from people who played the game during ParserComp 2021 judging.[paragraph break]
• Before he leaves, Humboldt will pick up Wells['] pocket watch off of the street and hand it to you if you have not already picked it up.[line break]
• The ambulance driver is now a person that you can have limited conversation with.[line break]
• In the Clearing you can now Pull, Push, and attempt to Break the grate with another object (previously only Take Grate worked).[line break]
• The time machine fuse will no longer burn out after a single round trip.[line break]
• You no longer need to talk to Mrs. Watchett before successfully finding the key, but it might take several searches of the area to find it.[line break]
• In the Parlor, the attempted taking of coals, ashes, or embers from the fireplace returns an appropirate response.[line break]
• It is now possible to put the watch or any other object down in the Library and retrieve it. In the prior release you were unable to retrieve anything that was put down in the Library, getting a 'It's hardly portable' message when attempting to pickup the previously dropped or place object.[line break]".


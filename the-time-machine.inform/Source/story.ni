The story title is "The Time Machine".
The story author is "Bill Maya".
The story headline is "A Text Adventure".
The story genre is "Science Fiction".
The release number is 6.
The story description is "Did your good friend Wells really time travel into the future to the year 802,701 A.D. to the age of Eloi and Morlocks? Only you can investigate his story and determine if he is telling the truth or if he is delusional.".
The story creation year is 2021.

[ WORDS - 28206 ]

Table of Releases
release	notes
"1"	"beta-1.0.1 release"
"2"	"beta-1.0.2 release"
"3"	"v1.0 parsercomp 2021 release"
"4"	"v1.1 post-parsercomp 2021 release"
"5"	"v1.2"
"6"	"v1.3"

Book - Beginning The Story

The player is in Woking Street.
The description of the player is "You rarely think of yourself in those terms, prefering to focus your prodigious logical and legal faculties on the work that your profession and your clients demand.[first time] But if you had to waste time on something so introspect you might describe yourself as a middle-aged man who has reached a certain station in life where success and social esteem allow you to enjoy all the benefits of this modern age.[only] Truly this is the best of times." [Mention something about Wells here?]

The current-year is text that varies.
The current-year is "1895".

The numeric-year is a number that varies.
The numeric-year is 1895.

When play begins: 
	now the left hand status line is "[location] - [current-year]";
	say "'Let me go!'

Wells struggles against the efforts of the two orderlies who are dragging him towards the horse-drawn ambulance parked in the street. Desperate, he pulls himself free and stumbles into you, almost knocking the both of you to the ground.

'My friend, I[apostrophe]m not crazy,' he says, his eyes desperate and pleading. 'I know my story sounds insane, but it[apostrophe]s true. Every word of it. You believe me, don[apostrophe]t you?'

Dr. Humboldt intervenes, placing himself between you and Wells. 'There, there, Wells. Of course we believe you. You just had a terrible shock; you need to rest after all these...time traveling adventures of yours. Plenty of time to sort it all out after you[apostrophe]ve had a bit of a break. Nothing to worry about.'

You look at the doctor and back at Wells, not knowing whom to believe. Wells is your oldest friend but the doctor makes a good point, especially after the story you[apostrophe]ve just heard from Wells[apostrophe] own mouth. Morlocks. Eloi. Time travel. It sounds fantastical.

'I can prove it all,' Wells says. He starts fumbling in his vest pockets, looking for something. 'In my workshop you[apostrophe]ll find...get your bloody hands off of me!' The orderlies have grabbed Wells a second time. 'No, damn you! Let me go!' 

Wells forgets whatever he was looking for in his pockets and struggles against the orderlies but they[apostrophe]re prepared this time and manage to overpower your friend and manhandle him into the ambulance. But it[apostrophe]s a near thing, so violent that Wells[apostrophe] pocket watch falls to the ground during the struggle.

Humboldt notices your concerned look. 'Don[apostrophe]t worry,' he says. 'They[apostrophe]re professionals, used to dealing patients like this all the time. They[apostrophe]re not being as rough with him as they look.'"

After printing the banner text, say "[line break][italic type]Players can type 'about' or 'help' and then hit the Enter/Return key at any time."

Chapter - Missing Item Description Check

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

Book - Mechanics

Chapter - Extensions

Include Basic Help Menu by Emily Short.
Include Punctuation Removal by Emily Short. [Writing §17.21. Understanding mistakes]
[Include Flexible Windows by Jon Ingold. ]
[Include Conversation Package by Eric Eve.]

After reading a command:
	resolve punctuated titles.

Chapter - Instead-Of Rules

Section - Waiting

Instead of waiting: say 
	"[if location is Woking Street]You shiver in the cold wind, drawing your light jacket closer around you. You really should get inside since you're not dressed appropriately for this winter weather.
	[otherwise]Time passes."

Section - Up

Instead of jumping in Woking Street: try going up.
Instead of going up in Woking Street: say "You jump up and down a few times, trying to warm yourself up, but it's a lost cause. Better get inside."

Instead of going up in the Entryway: say "You wander around upstairs for a few minutes but find nothing of interest and return downstairs."

Section - Using

Instead of using things: say "You'll have to be more specific."

Section - Attack

To say no-violence: say "Violence [aren't] the answer here and quite out of character, given your years of jurisprudence and respect for the law."

Instead of attacking someone with something: say "[no-violence]".
Instead of attacking someone: say "[no-violence]".

Instead of attacking something with something: say "Violence of this sort isn't relevent to your investigation."

Chapter - Before Rules

Section - Listening

Before listening:
	if the player is in Woking Street:
		say "The sound of the wind nearly obscures the normal sounds of the city at this time of night.";
		stop the action;
	else if the player is in the Clearing:
		say "Nature sounds mixed in with the sound of the wind through the trees.";
		stop the action;
	else if the player is in the Top Shaft: 
		say "The faint sounds of machinery mingle with the natural sounds of the clearing.";
		stop the action;
	else if the player is in the Bottom Shaft:
		say "The sound of machinery is louder now and seems to come from every direction.";
		stop the action;
	else if the player is in the Dining Room:
		say "[if the location of Watchett is the Kitchen] Through the kitchen door you can hear faint sounds of movement and work.[otherwise]You hear nothing unexpected.[end if]";
		stop the action;
	otherwise:
		continue the action.

Chapter - Every Turn Rules

Section - Parlor

Every turn:
	if a breaker (called fuse) [working-fuse] is in the right panel:
		if the fuse is working:
			now the orrery is switched on;
		otherwise:
			now the orrery is switched off.

Section - Workshop

Every turn:
	if the player is in the Workshop and travel-to-802701 is true: 
		now humboldt-should-return is true.

Chapter - Conversation

Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").

[Understand "talk to [someone] about [something]" as a mistake ("AUTOMATICALLY TRY THIS AS 'ask someone about something'").]
[The "talk to [someone] about [something] as a mistake" line above doesn't work like I want it to.

 > talk to humboldt about wells returns "You can't see any such thing."
 > talk to humboldt about ambulance returns the "AUTOMATICALLY TRY..." text

The [something] has to exist for the 2nd part of the Understand/as a mistake statement to be reached. Wells doesn't exist in the game but the ambulance does.]

Chapter - Take All

[https://bit.ly/3xV8H3P]

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.

[This changes the default message “There are none at all available!”]
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say “Grabbing for everything at once isn't going to help your investigation one bit. A methodical, measured approach is called for.”

Chapter - Tests

[In the game type "> test" to see a list of all the available tests]

[v1.0 Tests]
Test goto-kitchen with "north / west/ north / north / north." [from Woking Street]
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
Test unlock-workshop with "go north / purloin key / unlock workshop door with key."
Test goto-workshop with "go north / test unlock-workshop / go north / flip switch."
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

Chapter - Release

Release along with cover art ("The Time Machine") and an interpreter.

Chapter - User Interface (for use with Flexible Windows by Jon Ingold)

The carrying window is a text buffer g-window spawned by the main window.
The position of the carrying window is g-placeright.
The measurement of the carrying window is 30.

The character window is a text buffer g-window spawned by carrying window.
The position of the character window is g-placebelow.
The measurement of the character window is 50.

The topics window is a text buffer g-window spawned by character window.
The position of topics window is g-placebelow.
The measurement of the topics window is 50.

Rule for refreshing the carrying window:
	try taking inventory.

When play begins:
	open the carrying window;
	[open the character window;
	open the topics window.]

Every turn:
	refresh the carrying window.


Book - 1895

Part - Settings

Chapter - Woking Street

Woking Street is a room. 
The description of Woking Street is "You are standing halfway down the street outside of Wells['] house. A heavy snowfall wafts down, undisturbed except for the [area] directly in front of you[if ambulance is in Woking Street] where the ambulance is parked.[otherwise] where the scuffle with Wells happened.[end if] The front door is to the north[first time], the light escaping from the drawn curtains to one side looking invitingly warm[only].[first time] To the west, the flickering [gaslights] in the square seem much further away than fifty paces. To the east, the street dead-ends into a small [cul-de-sac].[only]"

The printed name of Woking Street is "68 Woking Street".

Section - Area

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


Section - Scenery

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
	
Section - Wandering

	Going west in Woking Street is wandering.
	Going northwest in Woking Street is wandering.
	Going northeast in Woking Street is wandering.
	Going east in Woking Street is wandering.
	Going southeast in Woking Street is wandering.
	Going south in Woking Street is wandering.
	Going southwest in Woking Street is wandering.
	
	Instead of wandering:
		say "You start walking away from the front door towards [if the noun is west]the intersection[else if the noun is east][one of]the fountain[or]the cul-de-sac[purely at random][otherwise]one of the other houses[end if] but a sudden [one of]frigid[or]cold[or]bitter[or]frosty[or]ice-cold[or]numbing[or]wintery[or]icy[purely at random] [one of]gust[or]flurry[or]burst[or]blast[purely at random][one of] of wind[or] of snow[purely at random] makes you reconsider. You really should get inside since you're not dressed appropriately for this winter weather."

Section - Humbolt's Exit

Instead of going north in Woking Street: 
	if Humboldt is not nowhere:
		say "Before you can leave, [if player is not carrying the pocket watch]Humboldt bends down and picks up Wells pocket watch from the street and hands it to you. 'Better hold on to this until I get back.' He [otherwise]Dr. Humboldt snaps his pocket watch shut and [end if]climbs into the ambulance. 'I[']ll return after I get Wells sedated and through the preliminaries. While I[']m gone, see if you can find the rest of this.' He hands you a single petal from a flower that Wells says was given to him by Weena in 802,701 A.D.

		'See if you can find the rest of this flower somewhere inside. Maybe it[']s in that workshop of his. Check with Mrs. Watchett, she should know where the workshop key is. Finding the rest of the flower might help us convince Wells that all this time travel nonsense of his is just a figment of his imagination. Talk to Mrs. Watchett.'

		With that he swings the rear doors shut. The driver cracks the reins and the ambulance starts down the street, turns the corner, and disappears.";
		now Humboldt is nowhere; 
		now the ambulance is nowhere;
		now the orderlies are nowhere;
		now the driver is nowhere;
		now the player is carrying the petal;
		now the player is carrying the pocket watch;
		try looking;
	otherwise:
		continue the action.



Section - Front Door

	The front door is north of Woking Street and south of the Entryway. 
	The front door is a door. 
	It is openable and lockable. 
	It is unlocked.
	The front door is scenery.

	The description of the front door is "[if location is Woking Street]The door to 68 Woking Street is indistinguishable from every other door that lines the street.[otherwise]You see nothing special about the heavy wooden door leading to the street outside."
	
Instead of attacking the front door with the poker: say "The front door isn't locked so I don't see why you would think you had to pry it open.";
Instead of attacking the front door with something: say "Violence isn't the answer here."
	
Section - Ambulance
	
The ambulance is a thing in Woking Street.
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

Section - The Workshop Key

The metal key is a thing.
The metal key is in Woking Street.
The metal key is undescribed.
The description of metal key is "A small metal key to his workshop that you can recall Wells carrying around everywhere he went."
Understand "glint" or "key" or "metallic" or "metallic object" as metal key.

The metal key unlocks the workshop-door.
		
Section - The Petal
	
The petal is a thing.
The petal is nowhere.
The description of the petal is "With its luminous colors it is not like any flower petal you have ever seen. Still, you can't tell much from a single petal. Perhaps the rest of the blossom is inside somewhere." ["...inside somewhere" What if you're inside the house? Or in 802,701? Conditional description?]
		
Section - Pocket Watch

The pocket watch is a thing.
The pocket watch is in Woking Street.
[The pocket watch is portable.]
Understand "timepiece" or "chronometer" or "hands" or "stem" as pocket watch.

The description of the pocket watch is "A simple pocket watch, given to Wells by his father. Thinking back on his story about time travel, you remember that Wells['] Weena was particularly enchanted with its moving hands and its winding mechanism."
	
Instead of using the pocket watch: say "It[']s getting late. Doctor Humboldt will be back soon."
	
Winding is an action applying to one touchable thing.
Understand "wind [something]" as winding.
Instead of winding the watch: say "You turn the stem back and forth a few seconds, killing time and gathering your thoughts."


Chapter - Entryway

The Entryway is a room. 
The description of the Entryway is "From here you can reach all other parts of the house. To your right, an ornately-carved [banister] parallels a [staircase] that leads up to the second floor landing. To the west is the library. To the north is the [if workshop-door is open]open[otherwise]closed[end if] door of Wells[apostrophe] workshop. The front door is to the south."

	The staircase is fixed in place in the Entryway. 
	The description of the staircase is "Stairs going up to the second floor.[first time] You have to admit, you haven't ever been up there.[only]"

	Understand "stairs" or "steps" as staircase.
	
	The banister is fixed in place in the Entryway.
	The description of the banister is "Just a normal handhold to grasp when going up and down the stairs."
	
	Understand "handrail" or "rail" or "railing" or "balustrade" or "guardrail" or "handhold" or "bannister" as banister.

Before taking books in the Entryway: say "BOOKS IN NEXT ROOM."

Section - Workshop Door
	
The workshop-door is north of the Entryway and south of the Workshop. 
The workshop-door is a door. 
The workshop-door is lockable. The workshop-door is locked.
The workshop-door is scenery. [Not "undescribed." Couldn't walk through it if it was "undescribed." See https://bit.ly/3rdieyO ]
Understand "workshop" or "door" as workshop-door. 
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

Chapter - Library

The Library is a room. 
The Library is west of the Entryway. 
The description of the Library is "A desk and a leather chair positioned near the drawn curtains are the only things in the room besides a variety of books, periodicals, and encyclopaedia that fill the floor-to-ceiling shelves on the three walls. The room continues to the north and the entryway is back east."

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

Section - Reading

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



Chapter - Parlor

The Parlor is a room. 
The Parlor is north of the Library.
The description of the Parlor is "A coal fire blazes away in a large fireplace set into the west wall. Sitting on the top of the fireplace mantle is an orrery. Directly in front of the hearth, angled towards one another, are two leather armchairs[if newspaper is on the armchairs] with today[']s [newspaper] sitting on one of them[end if].[if poker is in Parlor] Leaning against the fireplace is a [poker].[end if][paragraph break]A set of glass doors to the east leads outside and the room continues to the north."

The armchairs are things.
The armchairs are scenery in the Parlor.
The armchairs are supporters.
The armchairs are enterable.
Understand "armchair" or "chair"  or "chairs" as armchairs.
The description of the armchairs are "Like the library chair these armchairs are covered in worn leather. Larger than their library counterpart, they look even more inviting and comfortable, especially positioned as they are in front of the fire with the cold weather outside.[first time] But you don't have time to rest, you have a key to find.[only]"

Instead of entering the armchairs:
	say "Well, maybe just for a minute while you gather your thoughts. You sit in the[one of] left [or] right[purely at random] armchair.";
	move the player to the armchairs, without printing a room description.

Section - Garden Door

The Garden Door is east of the Parlor and west of the Garden. 
The Garden Door is a door. 
The Garden Door is openable and lockable.
The Garden Door is scenery.
The printed name of Garden Door is "garden door".
The description of Garden Door is "[if location is Parlor]A set of glass doors and stone steps lead down into a snow-covered garden.[otherwise]A set of stone steps lead up to glass doors and the inside of the house."

Understand "glass" or "glass door" or "glass doors" as Garden Door.

Instead of searching the Garden Door: say "[if the location is the Parlor]Through the glass doors you can see steps leading down to the snow-covered garden outside.[otherwise]Through the glass doors you can see the parlor inside.[end if]"


Section - Fireplace
	
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

Section - Fire

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

To say bare-hands: say "With your bare hands? You'd have to be as crazy as Humboldt things Wells is to even consider that.".

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

Section - Poker

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

Section - Newspaper

The newspaper is a thing.
The newspaper is on the armchairs.
The newspaper is undescribed. [on the armchairs.]
Understand "news" or "paper" as newspaper.
The description of the newspaper is "Today[']s edition of 'The Guardian,' which you[']ve already read."

The newspaper-reads is a number that varies.
The newspaper-reads is 0.

The penultimate-read is a number that varies.
The penultimate-read is 2.

[> examine newspaper vs. > read newspaper Recipe §9.6. Reading Matter]
Instead of searching the newspaper: try taking the newspaper.

Instead of taking the newspaper:
	if newspaper-reads is greater than penultimate-read:
		say "You realize that rereading today[']s paper isn[']t going to get you any closer to your goal and you drop the paper back onto the armchair.";
		now the newspaper is on the armchairs;
	otherwise:
		choose a random row from Table of Newspaper Stories;
		say "You glance at an article entitled '[Title entry]' about [Summary entry].";
		now the player has the newspaper;
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

Section - Orrery

The orrery is a device. The orrery is switched on.
The orrery is scenery on the mantle. 
The description of the orrery is "A mechanical model of our solar system contained in a rectangular wooden box consisting of three panels. The top half of the central panel of the tryptich contains a miniature model of the Sun and planets. Dials and pointers below this model display seasonal information, the Moon's phases, and the local time. The left and right panels are half the width of the central panel and are illustrated.[if the right panel is open] The right panel has been slid up to expose the inner mechanism of the orrery.[end if]"

Understand "planetarium" or "device" or "box" or "panels" or "triptych" as orrery.

The left panel is a thing.
The description of the left panel is "The left panel displays a bas-relief illustration of a shadowy, ape-like figure crouched in front of what appears to be a cavernous wall of machinery."

Understand "left" or "left side" or "left side of orrery" as left panel.

The central panel is a thing.
The description of the central panel is "In the top half of the central panel eight tiny jeweled spheres set into eight brass rings represent the planets and their orbits around our Sun. A row of dials underneath the model of the solar system display seasonal information and the Moon's phases. Underneath this row of dials, another row of pointers indicate the current date and time.[if the working-fuse is in the right panel] The second and minute hands spin slowly in a clockwise direction, accompanied by a faint whir and click from inside the box.[end if]".
Understand "model" or "spheres" or " jeweled spheres" or "planets" or "brass rings" or "rings" or "pointers" or "dials" or "solar system" as central panel.

The right panel is a thing.
The right panel is a container. The right panel is closed.
The right panel is opaque.
The description of the right panel is "The right panel displays a bas-relief illustration of a slender, androgynous figure stretching upwards to grab what appears to be an apple from a canopy of foliage overhead[if the right panel is open] and has been slide up halfway to expose the inner workings of the orrery.[end if].[if fuse-time-machine-found is true] On closer examination, it appears that this panel, unlike its leftside counterpart, can be slid upwards.[end if]".
Understand "right" or "right side" or "right side of orrery" as right panel.

The left panel, central panel, and right panel are part of the orrery.

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

The orrery-fuse-holder is a opaque container.
The orrery-fuse-holder is part of the orrery-mechanism.
The orrery-fuse-holder is undescribed.
The printed name of the orrery-fuse-holder is "orrery fuse holder".
The description of the orrery-fuse-holder is "Two metal clips that the ends of a fuse can snap in to.[no line break][if there is the fuse-orrery in the orrery-fuse-holder] Between the two clips is the orrery fuse.[otherwise if the fuse-time-machine is in the orrery-fuse-holder] Between the two clips is the time machine fuse.[otherwise] The fuse holder is empty.[end if]"

The examine containers rule does nothing when examining the orrery-fuse-holder. [Suppresses "In the fuse holder is an orrery fuse." after description printed] 
Understand "orrery fuse holder" or "fuse holder" or "clips" or "clip" as orrery-fuse-holder.
		
[Suppresses "The orrery is currently switched on/off" message? See https://bit.ly/3ovZgnb]
The examine devices rule does nothing when examining the orrery.

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

Section - Breaker | Orrery Fuse

A breaker is a kind of thing.
The breaker is either working or not working. A breaker is usually working.

fuse-time-machine-found is a truth state that varies. [Move these two lines to time machine]
fuse-time-machine-found is false.	

The fuse-orrery is a breaker. "pristine".
The printed name of the fuse-orrery is "orrery fuse".
The fuse-orrery is working.
The fuse-orrery is undescribed.
The fuse-orrery is in the orrery-fuse-holder. [DEL right panel. fuse]
The description of the fuse-orrery is "Almost as big as your thumb, this cylindrical fuse is made of pasteboard with metal caps on either end.[if the fuse-orrery is in something] Each of the fuse's ends is held securely in a metal clip that makes contact with the rest of the machine[end if] The pasteboard of the fuse looks [initial appearance]."
Understand "orrery fuse" or "pristine fuse" or "fuse" as fuse-orrery.

[DEL When no longer needed]
The working-fuse is a thing. "WORKING FUSE."
The working-fuse is undescribed.
The working-fuse is nowhere. [in theright panel.]
The printed name of working-fuse is "fuse".
Understand "fuse" as working-fuse.
working-fuse-burnt-out is a truth state that varies. 
working-fuse-burnt-out is false. [Was used in Release 3 but disabled in Release 4 onward. Kept for future use.]
	
Section - Putting Fuse In Orrery

Before removing a breaker (called fuse) from the orrery:
	try taking the fuse.

Before removing a breaker (called fuse) from the right panel:
	try taking the fuse.

After taking a breaker (called fuse): [from the right panel:]
	if the fuse is working:
		say "The minute you remove the fuse the gears inside stop moving and, with no calculations being made, the planets on the front halt in their orbits."; 
		now the orrery is switched off;
	otherwise:
		continue the action.

Before inserting a breaker (called fuse) into the orrery:
	try inserting the fuse into the right panel;
	stop the action.

Before inserting a breaker (called fuse) into the right panel:
	try inserting the fuse into the orrery-fuse-holder;
	stop the action.

Before inserting a breaker (called fuse) into the orrery-fuse-holder: [right panel:]
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

test fuse-prep with "north / north / west / north / slide right panel / purloin fuse-time-machine."

test orrery-fuse with "test fuse-prep / x mechanism / x orrery-fuse-holder / take fuse-orrery / x fuse-holder / x mechanism / put fuse-orrery in orrery-fuse-holder / x orrery-fuse-holder / x mechanism."

test fuse-time-machine with "test fuse-prep / x mechanism / x orrery-fuse-holder / take fuse-orrery / put fuse-time-machine in orrery-fuse-holder / x orrery-fuse-holder / x mechanism."

test two-fuses with "test fuse-prep / put fuse-time-machine in orrery / put fuse-time-machine in right panel / put fuse-time-machine in orrery-fuse-holder / take fuse-orrery / put fuse-time-machine in orrery-fuse-holder / put fuse-orrery in orrery-fuse-holder / take fuse-time-machine / put fuse-orrery in orrery-fuse-holder."


Chapter - Garden

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


Chapter - Dining Room

The Dining Room is a room. 
The Dining Room is north of the Parlor.
The description of the Dining Room is "A mahogany [dining table] that could seat eight comfortably dominates the space. Above the table hangs an electric [chandelier]. On the table is an [orrery]. To the north, to the right of the kitchen door, is a [sideboard] that holds tableware, cutlery, and place settings between meals. The parlor is to the south."

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

Section - Chandelier

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


Chapter - Kitchen

The Kitchen is a room. 
The Kitchen is north of the Kitchen Door.

The description of the Kitchen is "[first time]If your memory suffices, which it usually does in most ordinary situations, this is the first time you've been in [Watchett]'s domain. [only]The small room is dominated by a sturdy wooden work table in the center. Surrounding the table are numerous cabinets and shelves. A stove and a sink are set against the north wall.[if the location of Watchett is the Kitchen][paragraph break][Watchett] is at the sink, washing up the supper dishes.[end if]"

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

Section - Actions In Kitchen

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


Chapter - Workshop  

The workshop is a dark room. 

The description of the Workshop is "The workshop is almost twice as long as it is wide and ends in windows that look down into the garden. A long workbench runs down one side of the room; a large blackboard covered in equations and diagrams runs down the other. Tools and materials for Wells['] experiments fill the rest of the space. But the most striking, out-of-place object in the room is a device almost equidistant between you and the other end of the room[unicode 8212]Wells['] time machine."

Section - Workbench

The workbench is a thing.
The workbench is scenery in the Workshop.
The workbench is a supporter.
The description of the workbench is "[if the player has the blueprints]You see nothing special about the workbench.[otherwise]On the workbench is a set of blueprints."
Understand "bench" as workbench.

Instead of searching the workbench: try examining the workbench.

Section - Scenery

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

Section - Light Switch
		
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
	
Section - The Blueprints

The blueprints are a thing.
The blueprints are on the workbench.
The blueprints are undescribed.
Understand "plans" or "sheets" or "set" as blueprints.
The printed name of blueprints is "set of blueprints".

Instead of taking the blueprints: try examining the blueprints.

examined-blueprints is a truth state that varies.
examined-blueprints is false.

Instead of examining the blueprints:
	say "Spreading out the sheets you see that these are the plans for the time machine in the center of the room. [no line break]";
	if the player does not have a breaker [the working-fuse]:
		say "Using them, you[']re able to locate actual components in the machine, but this exercise brings you no closer to figuring out how to turn the time machine on.";
	if the player has a breaker [the working-fuse]:
		say "The blueprints identify where the fuse fits into the control panel of the time machine.";
	now examined-blueprints is true; [see Section 2 - The Time Machine 3.1.8.2-A]
	rule succeeds. [see Section 2 - The Time Machine 3.1.8.2-B]

Section - The Time Machine

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

[Replaced "examining" with "searching" in Instead statement]
Instead of searching [examining] the time machine:
	if the working-fuse is in the control panel: [time machine,] 
		say "The time machine looks like it is ready to operate."; 
	otherwise:
		if the player has the working-fuse:
			if examined-blueprints is true:
				say "Having reviewed the blueprints, you now know exactly where the fuse needs to go in Wells['] time machine.";
			otherwise:
				say "Looking at the fuse you realize that it probably belongs somewhere in the time machine, but you don[']t know where.";
		otherwise:
			if examined-blueprints is true:
				say "Having reviewed the blueprints, you can see that there[']s one missing component, you can see where it should go, but you have no idea what it is.";
			otherwise:
				say "A cursory search of the time machine doesn[']t reveal how it operates or how to get it running.[no line break][first time] If only there was some information you had about its construction.[only]".

Instead of opening the time machine: say "The time machine is already 'open.' All you have to do is [if the player is in the time machine]get out[otherwise]get inside[end if] if you desire."
[At some point should implement >climb in/out of time machine.]

Section - Time Machine Fuse

The fuse-time-machine is a breaker. "burnt".
The printed name of the fuse-time-machine is "time machine fuse".
The fuse-time-machine is not working.
The fuse-time-machine is undescribed.
The fuse-time-machine is in the control panel.
The description of the fuse-time-machine is "Almost as big as your thumb, this cylindrical fuse is made of pasteboard with metal caps on either end.[if fuse-time-machine is in something] Each of the fuse's ends is held securely in a metal clip that makes contact with the rest of the machine[end if] The pasteboard of the fuse looks [initial appearance] in places."
Understand "time machine fuse" or "burnt fuse" or "fuse" as fuse-time-machine.

[DEL]
burnt-out-fuse-found is a truth state that varies.
burnt-out-fuse-found is false.
	
The burnt-out-fuse is a thing.
The burnt-out-fuse is undescribed.
[The burnt-out-fuse is in the control panel.]
The printed name of burnt-out-fuse is "burnt out fuse".
[Understand "burnt fuse" or "burnt out fuse" as burnt-out-fuse.]

Section - Control Panel

The control panel is a thing. [DEL container.]
The control panel is part of the time machine.
[DEL The control panel is in the time machine.]
The control panel is undescribed.
Understand "controls" as control panel.

Instead of examining the control panel:
	if the player is in the time machine:
		say "The control panel can be divided into two sections. The top section has fourteen dials arranged in two rows of seven dials each. To the right of the rows of dials is a small [if the working-fuse is in the control panel]lit[otherwise]unlit[end if] lamp and a large round button.  Directly underneath the button the word 'DEPART' has been etched into the panel[']s surface.

		The bottom section has the word 'DESTINATION' etched into the panel above two rows of numbers, one above the other, with each number[']s digits displayed in its own tiny window.[no line break][if numeric-year is 1895] [paragraph break] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]8[close bracket] [bracket]0[close bracket] [bracket]2[close bracket] [bracket]7[close bracket] [bracket]0[close bracket] [bracket]1[close bracket] [line break] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]C[close bracket] [bracket]3[close bracket] [bracket]F[close bracket] [bracket]8[close bracket] [bracket]D[close bracket] [no line break] [otherwise] [paragraph break] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]1[close bracket] [bracket]8[close bracket] [bracket]9[close bracket] [bracket]5[close bracket] [line break] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]0[close bracket] [bracket]7[close bracket] [bracket]6[close bracket] [bracket]7[close bracket].[no line break][end if] [paragraph break] Underneath the two lines of numbers are a series of switches labeled with the numbers [bracket]0[close bracket] through [bracket]9[close bracket] and the letters [bracket]A[close bracket] through [bracket]F[close bracket]. To the right of these switches are two square buttons with the words 'SET' and 'CLEAR' etched into the panel next to them.";
	otherwise:
		say "From the outside you can see the control panel is wired into various components of the time machine and contains a menagerie of dials, switches, and buttons. You would have to enter the time machine to get a closer look at it.";
	rule succeeds.

The elapsed time section is a thing.
The elapsed time section is part of the control panel.
The description of elapsed time section is "Both rows of dials appear to be used to indicate elapsed time. The top row displays time intervals that you're familiar with[unicode 8212]years, months, weeks, days, hours, minutes, and seconds. You're not as familiar with the set of intervals displayed in the bottom row[unicode 8212]epochs, ages, 100 millennia, 10 millennia, 1 millennia, centuries, and decades. All of the dial pointers are positioned at zero."
Understand "dial" or "dials" as elapsed time section.

The destination section is a thing.
The destination section is part of the control panel.
The description of the destination section is "DESTINATION SECTION DESCRIPTION."
[
Just below the rows of dials a metal label are a row of eight numbers.
A row of eight single digits underneath the word "Destination" is below the row of Elapsed Time dials above
Below the Elapsed Time dials is the word "Destination," etched into the panel, and a row of eight single digits, each displayed in its own opening cut into the metal of the panel.
Below the Elapsed Time dials is the destination year, spelled out in a row of eight individual digits, each displayed by itself with a tiny dial to the right of the number, and, above it, the word 'Destination' etched into the panel.
]

The origin section is a thing.
The origin section is part of the control panel.
The description of the origin section is "ORIGIN SECTION DESCRIPTION."
[
Below the Destination section is the origin year, spelled out like the destination in a row of eight individual digits, each displayed on its own with a tiny dial to the right of the number. Above the row of numbers is the word 'Origin' etched into the metal of the panel. 			
]
			

The light panel is a locked container.
The light panel is openable.
The light panel is part of the control panel.
The description of the light panel is "LIGHT PANEL DESCRIPTION."

The small light is a thing.
The small light is part of the light panel.
The description of the small light is "SMALL LIGHT DESCRIPTION."

The keyhole is a thing.
The keyhole is part of the light panel.
The description of the keyhole is "KEYHOLE DESCRIPTION."
[DEL The keyhole is lockable.
The keyhole is locked.]

The time-fuse-holder is a container.
The time-fuse-holder is in the light panel.
The description of the time-fuse holder is "TIME FUSE HOLDER DESCRIPTION."

The lever is a thing.
The lever is part of the control panel.
The description of the lever is "LEVER DESCRIPTION."
	
[DEL The panel-upper-left is scenery in the time machine.
The description of panel-upper-left is "Both rows of dials appear to be used to indicate elapsed time. The top row displays time intervals that you're familiar with[unicode 8212]years, months, weeks, days, hours, minutes, and seconds. You're not as familiar with the set of intervals displayed in the bottom row[unicode 8212]epochs, ages, 100 millennia, 10 millennia, 1 millennia, centuries, and decades. All of the dial pointers are positioned at zero."
Understand "dial" or "dials" as panel-upper-left.]

The panel-upper-right is scenery in the time machine.
The description of panel-upper-right is "To the right of the dials is a small [if the working-fuse is in the control panel]lit[otherwise]unlit[end if] lamp and a large round button. Directly underneath the button the word 'DEPART' has been etched into the panel[']s surface."
Understand "lamp" or "round button" as panel-upper-right.
	
The panel-bottom is scenery in the time machine.
The description of panel-bottom is "Below the two rows of numbers and letters are sixteen toggle switches in two rows of eight switches each. The top row is labeled with the numbers 0[unicode 8211]9; the bottom row with the numbers 8 and 9 and the letters A[unicode 8211]F. All of the switches are in the Off position. To the right of the two rows of switches are two square buttons, one labeled 'SET'; the other labeled 'CLEAR'."
Understand "switches" or "square button" or "square buttons" or "clear button" or "set button" or "numbers" as panel-bottom.

The panel-things is scenery in the time machine.
Understand "date" or "dates" or "destination" as panel-things.

Adjusting is an action applying to one thing.
Understand "adjust [something]" as adjusting.
Instead of adjusting: say "I don[']t see how you would do that right now."

Instead of adjusting the panel-things:
	try modifying panel-things.
	
Changing is an action applying to one thing.
Understand "change [something]" as changing.
Instead of changing: say "I don[']t see how you would do that right now."

Instead of changing the panel-things: 
	try modifying panel-things.

Setting is an action applying to one thing.
Understand "set [something]" as setting.
Instead of setting: say "I don[']t see how you would do that right now."
	
Instead of setting the panel-things:
	try modifying panel-things.

Modifying is an action applying to one thing.
Understand "modify [something]" as modifying.
Instead of modifying: say "I don[']t see how you would do that right now."
		
Instead of modifying the panel-things:
	say "[first time]You reach out to flip some of the switches in the bottom section of the panel but hesitate, realizing that without Wells you have no idea how the time selector works. [only]Best to leave things on the control panel as they are for now."

	
Section - Round Button

The round button is a device in the time machine.
The round button is switched off.
The round button is undescribed.

Instead of examining the round button: try examining the panel-upper-right.

[> push button]

Instead of pushing the round button: try activating the round button.

[> activate control panel
 > activate time machine]

Activating is an action applying to one touchable thing.
Understand "activate [something]" as activating.

Instead of activating the time machine: try activating the control panel.
Instead of activating the control panel: try activating the round button.

Instead of activating the round button:
	if the player is in the time machine:
		if the working-fuse is in the control panel: 
			if working-fuse-burnt-out is false:
				say "You press the button on the control panel.";
				now the button is switched on;
			otherwise:
				say "You press the button but nothing happens.[no line break][if working-fuse-burnt-out is true] Smelling something burning you check the machine's components and find the source of the smell to be the fuse, which you remove from the machine.";
				now the player has the working-fuse; [ change to burnt out fuse ]
		otherwise:
			say "You press the button but nothing happens. There must be a piece missing from the time machine.";
	otherwise:
		if the working-fuse is in the control panel: 
			if working-fuse-burnt-out is false:
				say "Reaching into the time machine you press the single lit button on the control panel to see what happens. To your horror, the machine shimmers briefly and disappears from the room.";
				now the time machine is nowhere;
				now humboldt-should-return is true;
		otherwise:
			say "You press the button on the control panel but nothing happens."

Section - Putting Fuse In Time Machine

After removing a breaker (called fuse) from the control panel:
	if the fuse is working:
		say "The single light on the control panel dims to black and the barely parceptible hum surrounding the time machine fades away.";
	otherwise:
		say "NOT WORKING FUSE REMOVED FROM CONTROL PANEL."

[Two different ways to implement. See See https://bit.ly/320owaO]

[3.1.8.2-A - Using a boolean examined-blueprints to determine if blueprint has been examined.] 
[See Section 1 - Blueprints to see where boolean is set.]

[Writing §9.13. The past and perfect tenses]

[3.1.8.2-B - Using whether or not an object has been examined instead of setting a boolean value true or false.]
[See Section 1 - Blueprints to see where the blueprint examining is handled.]

Instead of inserting the burnt-out-fuse into the time machine: 
	try inserting the burnt-out-fuse into the control panel.

Instead of inserting the burnt-out-fuse into the control panel:
	say "INSERTING BURNT-OUT FUSE."	

Instead of inserting a breaker (called fuse) [working-fuse] into the time machine: 
	try inserting the fuse [working-fuse] into the control panel.
		
Instead of inserting the a breaker (called fuse) [burnt fuse] [working-fuse] into the control panel: 
	if the player has a breaker [working-fuse]:
		if examined-blueprints is true:
			say "Using the blueprints as a guide, you insert the fuse into the control panel in the appropriate slot.[no line break][if working-fuse-burnt-out is false] With an barely perceptible hum, the time machine powers up and the light on the control panel lights up.[end if]";
			now the fuse [working-fuse] is in the control panel; 
		otherwise:
			say "Despite your best efforts you don't know where the fuse belongs.";

	
Section - Workshop Windows

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
			
Part - Characters

A person can be either fixed or mobile. 
A person is usually fixed.

Chapter - Familiarity (for use with Conversation Package by Eric Eve)

Wells is a familiar man.
Humboldt is a familiar man.

experiments are a familiar thing.

Chapter - Watchett

Watchett is a female person.
Watchett is in the Kitchen.
The printed name of Watchett is "Mrs. Watchett". 
The description of Watchett is "Wells[apostrophe] steadfast aged housekeeper, she has been cleaning his house and cooking his meals for years. If you could steal her away from Wells you would in a heartbeat, but she would never leave him in a million years."

Understand "mrs" or "watchett" or "watchet" or "cook" or "maid" or "housekeeper" or "old lady" as Watchett.
[See §17.3. Overriding existing commands - New tokens for ^]

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

Section - Conversation (for use with Conversation Package by Eric Eve)

The ask-suggestions are { Wells, key, self-suggestion }.
The tell-suggestions are { Humboldt }.
[The other-suggestions are { other }.]

After saying hello to Watchett when the greeting type is explicit: 
	say "'Good evening, Mrs. Watchett.'[paragraph break]'Good evening sir,' she replies."

After saying hello to Watchett when the greeting type is implicit:
	say "'Excuse me', you say.[paragraph break]'Yes?' she asks, pausing in her cleaning up."

After quizzing watchett about key:
	say "'[key-start] [key-middle] [key-end]'[line break]";
	now watchett-key is true.

After quizzing watchett about wells: say "CF 'Always working too hard on his experiments, he is. I'm sure the doctor will make everything right.'"

After quizzing watchett about experiments: say "CF 'I wouldn't know anything about that. Mr. Wells was quite private about his experiments. Did all that in his workshop.'"

Section - Conversation (for use without Conversation Package by Eric Eve)

Instead of showing pocket watch to Watchett: say "'That looks like Mr. Wells['] watch. I[']d put it on the desk in the library for when he gets back.'" [HACK Why can't I simply write "try asking Watchett about it.?]
Instead of showing something to Watchett: say "Mrs. Watchett glances at the [noun], says something noncommittal, and continues with her work."

Instead of telling Watchett about something: [Writing §7.6. Reading and talking]
	try asking Watchett about it.

Instead of asking Watchett about "key":
	say "'[key-start] [key-middle] [key-end]'[line break]";
	now watchett-key is true.

Instead of asking Watchett about "wells": say "'Always working too hard on his experiments, he is. I'm sure the doctor will make everything right.'"
Instead of asking Watchett about "experiments": say "'I wouldn't know anything about that. Mr. Wells was quite private about his experiments. Did all that in his workshop.'"
Instead of asking Watchett about "workshop door": say "'Locked. Always locked. Only Mr. Wells had the key.'"
Instead of asking Watchett about "workshop": say "'Only Mr. Wells had the key.'"
Instead of asking Watchett about "front door": say "'Much too cold to be outside the way you're dressed. Best you warm up by the fire first.'"

Instead of asking Watchett about "pocket watch": say "'That looks like Mr. Wells['] watch. I[']d put it on the desk in the library for when he gets back.'"
Instead of asking Watchett about "watch": say "'That looks like Mr. Wells['] watch. I[']d put it on the desk in the library for when he gets back.'"
Instead of asking Watchett about "orrery": say "'Built by Mr. Wells. He[']s quite the inventor.'"
Instead of asking Watchett about "petal": say "'Very pretty, I guess. But you cannot tell much about the flower from a single petal.'"

Instead of asking Watchett about "work": say "'Getting things ready for tomorrow[']s supper. Mr. Wells will probably have a tremendous appetite when he gets back.'"
Instead of asking Watchett about "food": say "'Getting things ready for tomorrow[']s supper. Mr. Wells will probably have a tremendous appetite when he gets back.'"
Instead of asking Watchett about "dinner": say "'Getting things ready for tomorrow[']s supper. Mr. Wells will probably have a tremendous appetite when he gets back.'"
Instead of asking Watchett about "supper": say "'Getting things ready for tomorrow[']s supper. Mr. Wells will probably have a tremendous appetite when he gets back.'"
Instead of asking Watchett about "meals": say "'Getting things ready for tomorrow[']s supper. Mr. Wells will probably have a tremendous appetite when he gets back.'"
Instead of asking Watchett about "meal": say "'Getting things ready for tomorrow[']s supper. Mr. Wells will probably have a tremendous appetite when he gets back.'"
Instead of asking Watchett about "herself": say "'I[']m really not one to talk about myself.'"

Instead of answering Watchett that "hello": say "Mrs. Watchett acknowledges your greeting with a nod. 'Evening, Mr. Filby. Terrible about Mr. Wells, isn[']t it.'"

Instead of asking Watchett about something: say "Mrs. Watchett thinks for a moment before replying. 'I wouldn[']t know anything about that,' she says and continues her work."


Section - Movement

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

Chapter - Humboldt 

Humboldt is a person.
Humboldt is a male.
Humboldt is fixed.
Humboldt is in Woking Street.
The description of Humboldt is "A reputable physician and alienist, he has also known Wells for years. You are confident that his methodical nature, combined with his diagnostic skills, will enable him to determine what ails your friend." [enable him to determine what truth lies at the heart of Wells['] story about time travel. - modify description.]

The printed name of Humboldt is "Dr. Humboldt"

Understand "doctor" or "physician" or "dr" or "psychologist" or "alienist" or "dr humboldt" as Humboldt.

humboldt-should-return is a truth state that varies.
humboldt-should-return is false.

humboldt-endgame-begins is a truth state that varies.
humboldt-endgame-begins is false.

Section - Conversation



[Instead of telling someone about something, try asking someone about it.] 
[According to the compiler, "asking someone about it" is too vague to describe a specific action]

[Telling]

[Commented out this line because it prevented the "follow Patience rules" below from being applied]
[Instead of telling Humboldt about something: try asking humboldt about it.] [Writing §7.6. Reading and talking]

[Replaced it with specific things to tell Humbolt about ]
Instead of telling Humboldt about "wells": try asking Humboldt about it.
Instead of telling Humboldt about "diagnosis": try asking Humboldt about it.
Instead of telling Humboldt about "examination": try asking Humboldt about it.
Instead of telling Humboldt about "workshop": try asking Humboldt about it.
[Instead of telling Humboldt about "time machine": try asking Humboldt about it.]
Instead of telling Humboldt about "watch": try asking Humboldt about it.
Instead of telling Humboldt about "pocket watch": try asking Humboldt about it

[Asking]

[Instead of asking Humboldt about "help":
	say "HUMBOLDT SHOULD COME BACK WITH 'There is something you could do while I'm away...' HE HANDS YOU THE PETAL, ETC. AND LEAVES."]
		
Instead of asking Humboldt about "wells/madman/patient/lunatic": 
	if humboldt-endgame-begins is false:
		say "'I don't know enough to make a proper diagnosis right now. I'll know more after we get him to the hospital, calm him down, and do a proper examination.'";
	otherwise:
		say "'He's sedated and resting.'"

Instead of asking Humboldt about "diagnosis": 
	if humboldt-endgame-begins is false:
		say "'Too early to tell.'";
	otherwise:
		say "Unless you found some new evidence it doesn't look good for Wells. He still believes he travelled to the year 802,701 A.D."

Instead of asking Humboldt about "examination": 
	if humboldt-endgame-begins is false:
		say "'First thing to do is get him to my hospital. Get him admitted and sedated. Probably won't be able to do a proper examination until he's calmed down.'";
	otherwise:
		say "'The preliminaries are already completed. I'll write my summary after you tell me what you found here."

Instead of asking Humboldt about "workshop/shop": 
	if humboldt-endgame-begins is false:
		say "'Never seen the inside of it. I don't think anyone has. Best to ask Mrs. Watchett. She might have a key.'";
	otherwise:
		say "Humboldt looks around the workshop. He examines [one of]some machinery[or]some tools[or]the blackboard equations[or]the blackboard diagrams[or]the workbench[or]the time machine[at random]. '[one of]Interesting[or]Fascinating[or]Hmm[or]That's odd[at random]' is his only comment."
		[say "Humboldt looks around the workshop, poking into odd corners. He examines [one of]some machinery[or]some tools[or]the blackboard equations[or]the blackboard diagrams[or]some papers on the workbench[at random]. '[one of]Interesting[or]Fascinating[or]Hmm[or]That's odd[at random]' is his only comment."]

Instead of asking Humboldt about "time machine": 
	if humboldt-endgame-begins is false:
		say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'";
	otherwise:
		say "'Outside my area of expertise, I'm afraid.'"

[HACK - Without this > ask humboldt about THE time machine returns "There is no reply."]
Instead of asking Humboldt about "the time machine": 
	if humboldt-endgame-begins is false:
		say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'";
	otherwise:
		say "'Outside my area of expertise, I'm afraid.'"
		
[HACK - There should be some way I can write "Instead of asking Humboldt about himself"]	
Instead of asking Humboldt about "humboldt/doctor/physician/dr/psychologist/alienist/self/himself":
	say "Dr. Humboldt is much too professional and polite to start rambling on about himself, especially in this sort of situation."

[HACK - There should be some way I can write "Instead of asking Humboldt about yourself"]
Instead of asking Humboldt about "me/yourself/myself": say "Perhaps you should focus on the situation at hand instead of yourself."	
	
[Hack. Why can't I just write "Instead of asking Humboldt about "pocket watch/watch"?]
Instead of asking Humboldt about "pocket watch": say "'Looks like Wells['] watch. I[']ll have my hands full with him so why don't you hold onto it until we get back.'"
Instead of asking Humboldt about "watch": say "'Looks like Wells['] watch. I[']ll have my hands full with him so why don't you hold onto it until we get back.'" 
[Instead of asking Humboldt about "pocket watch" or "watch" or "timepiece" or "chronometer": say "WHAT POCKET WATCH?".]

Test watch-humboldt with "ask humboldt about watch / ask humboldt about pocket watch / tell humboldt about watch / tell humboldt about pocket watch".

Instead of showing the time machine to Humboldt: [This doesn't work because the time machine is fixed in place]
	say "SHOW HUMBOLDT TIME MACHINE."

Instead of showing the petal to Humboldt:
	say "'You were supposed to find the rest of it so we could convince Wells that his story was nonsense, a figment of his imagination. Did you find it?'"
	
Instead of showing the key to Humboldt:
	say "'[one of]I knew you would find it. [or]Mrs. Watchett knew where it was, I bet. [or]Good job. [at random]What have you found?'"
		
Instead of showing the blueprints to Humboldt:
	say "Humboldt takes the blueprints and walks over to the time machine. Shuffling the pages he manages to tie each blueprint diagram with its counterpart on the physical machine. After satisfying himself he returns the blueprints to you. 'Impressive workmanship. But there's no proof that it does what Wells says it does,' he says."

Instead of showing a breaker [the working-fuse] to Humboldt:
	say "Humbold briefly examines the fuse, turning it over in his hands, before returning it to you."
		
Instead of showing the pocket watch to Humboldt: 
	say "'Looks like Wells['] watch. I[']ll have my hands full with him so why don't you hold onto it until we get back.'"
	[HACK - Why can't I simply write "try asking Humboldt about it."]
	
[Asking & Telling - Humboldt Endgame]

[Tried to turn "showing" into "asking" that uses the Table of Humboldt Endgame Responses below but it didn't work]
[Instead of showing something to Humboldt, try asking Humboldt about something.]

[Second attempt that also didn't work]
[Before an actor showing something to Humboldt:
	[try the second noun examining the noun instead.]
	[try asking noun about second noun.]]

[This rule triggers a successful endgame]
Instead of asking Humboldt about "flower":
	now endgame-success is true.

[Writing §7.6. Reading and talking]
After asking Humboldt about a topic listed in Table of Humboldt Endgame Responses, say "[reply entry][line break]"

[16.13 - Topic columns]
Table of Humboldt Endgame Responses
topic	reply
"petal"	"'I gave that to you earlier.'"
"key"	"'Obviously it's the workshop key since we're standing in the bloody place.'"
"blueprints"	"'Your guess is as good as mine.'"
"fuse"	"'Looks like it fits into that contraption Wells has constructed.'"
"weena"	"'Figment of Wells[apostrophe] imagination I assume.'"
"eloi"	"'Figment of Wells[apostrophe] imagination I assume.'"
"morlocks"	"'Figment of Wells[apostrophe] imagination I assume.'"
"time travel"	"'Science fiction if you ask me.'"
	
After telling Humboldt about "petal":
	say "'I know all that. But did you find the rest of the flower?'"

After telling Humboldt about "time machine":
	say "'I'd like to believe that it does what you say it does but we've no proof.'"

After telling Humboldt about "workshop":
	say "Humboldt listens dispassionately as you enthusiastically point out various areas of the workshop, a nonplussed look on his face."

After telling Humboldt about "fuse":
	say "Humboldt nods slightly as you explain how the fuse is necessary for the time machine[apostrophe]s operation."

[ ⬆️ MIGRATED OVER TO time-machine-conversation ⬆️ ]

[This rule triggers a successful endgame]
After telling Humboldt about "flower":
	now endgame-success is true.

[ ⬇️ MIGRATED OVER TO time-machine-conversation ⬇️ ]

[Each of the following rules will increase Humboldt's patience by one step]
		
After telling Humboldt about "time travel":
	say "Humboldt listens as you try to expain your time travel experience in the future as best you can with a [patience of Humboldt] look on his face.";
	follow Patience rules.

[Understand "the future" as 802701. [This doesn't work]]
After telling Humboldt about "802701":
	say "Humboldt listens about your adventures in the year 802,701 with a [patience of Humboldt] look on his face.";
	follow Patience rules.

Understand "eloi" or "the eloi" as Eloi. ["the eloi" doesn't work and "eloi" might be unnecessary]
After telling Humboldt about "Eloi":
	say "Humboldt listens as you recount your experience with the Eloi with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After telling Humboldt about "Weena":
	say "Humboldt listens to you recount your experience with Weena with a [patience of Humboldt] look on his face.";
	follow Patience rules.
	
After telling Humboldt about "Morlocks":
	say "Humboldt listens to you recount your experience with the Morlocks with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After telling Humboldt about "river":
	say "Humboldt listens to you recount your experience at the river with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After telling Humboldt about "sphinx":
	say "Humboldt listens to you recount your description of the clearing and the sphinx with a [patience of Humboldt] look on his face.";
	follow Patience rules.

Section - Patience

[Writing §4.9. Using new kinds of value in properties]
patience is a kind of a value.
The patiences are accepting, tolerant, impatient, frustrated, angry. 
	
Humboldt has patience. Humboldt is accepting.

Chapter - Orderlies

The orderlies are people in Woking Street.
The orderlies are undescribed.
The description of the orderlies is "They're out of sight, inside the ambulance with Wells but, from what you remember, the two men were entirely professional, stronger than they looked, and had no trouble getting Wells into the ambulance against his will."
Understand "attendant" or "attendants" as orderlies.

Instead of taking the orderlies: say "Given the ease with which they got Wells into the ambulance against his will, you chance of overpowering even one of them against his will is slight. Best stick to the intellectual pursuits you're known for."

Instead of asking the orderlies about anything: say "If they both weren't out of sight in the ambulance you could."
Instead of telling the orderlies about anything: try asking the orderlies about it.
Instead of showing something to the orderlies: try asking the orderlies about it.


Chapter - Driver

The driver is a person.
The driver is a male.
The driver is fixed.
The driver is undescribed.
The driver is in Woking Street.
The description of the driver is "Trying to stay warm in the front of the ambulance, the driver waits for Humboldt to give him the signal to get going."

Instead of asking the driver about anything: say "'I'm just the driver, sir. The doctor there's the one who could answer that for you."
Instead of telling the driver about anything: say "'Fascinating, sir. I'm sure the doctor would be might interested to hear that.'"
Instead of showing the pocket watch to the driver: say "Very nice, sir.  I'd hold on to that. I've got one like it that was me granddads."





Chapter - Wells

Wells is a person in Woking Street.
Wells is undescribed.

Instead of examining Wells: say "Your last glimpse of your friend was so unlike his usual composed and methodical self that it was like seeing another person entirely. You want to believe his story but without proof or witnesses you don't know what to think."

Section - Rescuing

Understand "save [someone]" as rescuing.

Rescuing is an action applying to one visible thing.
Understand "rescue [someone]" as rescuing.

Instead of rescuing Wells: try entering ambulance.
Instead of rescuing someone: say "It does not look like [the noun] is in need of any rescuing. But the thought is nice."


Chapter - Gernsback 
[https://bit.ly/3rYUPl8]

[Gernsback is a person.
Gernsback is a male.
Gernsback is fixed.
Gernsback is in the Entryway.]

[The printed name of Gernsback is "TBD."]

Book - Traveling In Time

Part - Travel To 802,701

Travel To 802,701 is a recurring scene.

Travel To 802,701 begins when the time machine is in the Workshop and player is in the time machine and the button is switched on.

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
	now the button is switched off.

Travel To 802,701 ends when the time machine is in the Clearing.

[When Travel To 802,701 ends:
	say "TRAVELING TO 802,701 ENDS."]

Part - Travel To 1895

Travel To 1895 is a recurring scene.

Travel To 1895 begins when the time machine is in the Clearing and the player is in the time machine and the button is switched on.

When Travel To 1895 begins:
	[say "TRAVEL TO 1895 BEGINS.";]
	say "The time machine powers up and the grey void once again cloaks you and the machine in a temporal shroud. To your relief, the hands on the dials on the panel start turning backwards, one second at a time as you return to your point of origin. The time machine shudders and shakes slightly on its journey but the dread you felt on your outward trip is less than before as you watch the silent shapes perform their temporal pantomime on the grey surface surrounding you.

	Ages pass. One by one the dial hands approach zero and stop their retrograde spin. The time machine starts to slow and, as the last dial hits zero, it stops. The grey fog dissipates and the familiar workshop appears around you and the time machine.

	You have arrived back in the year 1895.";
	now the current-year is "1895";
	now the numeric-year is 1895;
	now the time machine is in the Workshop;
	now the time machine is undescribed;
	[now fuse-burnt-out is true;] [Commented out so multiple time travel round trips are possible]
	now the button is switched off.
	
Travel To 1895 ends when the time machine is in the Workshop.

[When Travel To 1895 ends:
	say "TRAVEL TO 1895 ENDS.";]	


Book - 802,701

Part - Settings

Chapter - Clearing

can-go-clearing-to-river is a truth state that varies.
can-go-clearing-to-river is false.

Every turn: 
	if the player is in the Balcony, now can-go-clearing-to-river is true.

The Clearing is a room. 
The description of the Clearing is "A midsized clearing dominated by a circular shaft in the center that rises about three feet above the ground. The face of a large statue looks down on you through a gap in the trees. There is a path to the east leading to a white dome in the distance.[if can-go-clearing-to-river is true] Now that you know it exists, you can just make out the overgrown path that you saw from the balcony leading southeast.[end if]"

Inside from the Clearing is Top Shaft.

Instead of going down in the Clearing: 
	if the metal grate is on the circular shaft:
		say "You might be able to if that grate wasn't in the way.";
	if the metal grate is not on the circular shaft:
		try entering the circular shaft.

Section - Scenery

The circular shaft is a thing.
The circular shaft is scenery in the Clearing.
The circular shaft is a supporter.
Instead of examining the circular shaft: say "About three feet in diameter, the circular shaft appears to be made of some unknown metal. [if metal grate is on circular shaft]A circular grate rests on the top of the shaft, flush with the surface. Through the grate you can see the rungs of a ladder going down into darkness.[otherwise]You can see the rungs of a ladder going down into darkness.[end if]"

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

Section - Metal Grate

The metal grate is a thing.
The metal grate is portable.
The metal grate is on the circular shaft.
The metal grate is a supporter.
The metal grate is undescribed.
The description of the metal grate is "About three feet in diameter, the grate is made of wide slats of metal welded together in a waffle pattern. Despite the patina of rust, it looks extremely sturdy and heavy.[if the metal grate is not on the circular shaft] The grate is lying on the ground next to the open shaft.[end if]"

[ > Remove grate ]

Understand the command "remove" as something new.
Understand the command "remove" as "take".

Instead of pulling the metal grate: try taking the metal grate.
Instead of pushing the metal grate: try taking the metal grate.

Instead of attacking the metal grate with something: say "The [second noun] has no effect on the metal of the grate, despite its rusted appearance. But you might be able to move the grate out of its current position if you try."

Instead of taking the metal grate:
	if the metal grate is on the circular shaft in the Clearing:
		say "Grabbing the grate through its openings, you brace yourself against the side of the shaft and manage to leverage it up and out of its resting position. It[']s extremely heavy but you succeed in toppling it to one side and onto the ground, narrowly missing your feet.";
		move the metal grate to the Clearing;
		now the metal grate is described;
	otherwise:
		say "It is way too heavy to try and move a second time from its position on the ground."

Climbing into is an action applying to one touchable thing.
Understand "climb in [something]" as climbing into.
Understand "climb into [something]" as climbing into.
Instead of climbing into the circular shaft: try entering the circular shaft.

[If you remove the circular grate from the circular shaft you can climb into it]
Instead of entering the circular shaft:
	if the metal grate is on the circular shaft:
		say "If the grate wasn't on top of the shaft you might be able to.";
	otherwise:
		say "Carefully you climb over the lip of the shaft and onto the ladder.[line break]";
		now the player is in the Top Shaft.

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

Chapter - Top Shaft

The Top Shaft is a room.
Down from Top Shaft is the Bottom Shaft.
Up from Top Shaft is the Clearing.
The description of Top Shaft is "You[']re hanging at the top of the shaft on the ladder leading down. Faint sounds of machinery rise from the darkness below. Exiting the shaft will put you back in the clearing."

Instead of going up from the Top Shaft: try exiting.

Instead of exiting in the Top Shaft: 
	say "You carefully climb out of the shaft.";
	now the player is in the Clearing.
	
The ladder is a thing.
The ladder is a backdrop. It is in the Clearing, Top Shaft and Bottom Shaft.
The description of the ladder is "A series of rusting iron bars sunk into the side of the shaft, leading down into the gloom."

Chapter - Bottom Shaft

The Bottom Shaft is a room.
Up from the Bottom Shaft is the Top Shaft.
The description of Bottom Shaft is "In the small amount of light that filters down from above you can see tunnels going in every direction."

The printed name of Bottom Shaft is "Bottom of the Shaft"

The tunnels are scenery in the Bottom Shaft.
The description of the tunnels are "All of the tunnels slope downward slightly and each one is indistinguishable from another."

encounter-morlocks is a truth state that varies.
encounter-morlocks is false.

Going north in the Bottom Shaft is wandering.
Going northeast in the Bottom Shaft is wandering.
Going east in the Bottom Shaft is wandering.
Going southeast in the Bottom Shaft is wandering.
Going south in the Bottom Shaft is wandering.
Going southwest in the Bottom Shaft is wandering.
Going west in the Bottom Shaft is wandering.
Going northwest in the Bottom is wandering.

Chapter - Domed Building

The Domed Building is a room.
The Domed Building is east of the Clearing.
The Domed Building is west of the Inside Dome.
Inside from the Domed Building is Inside Dome.

The dome-outside is scenery in Domed Building.
Understand "concrete" or "building" or "pantheon" or "columned" or "columns" or "column" or "portico" or "entrance" or "dome" as dome-outside. [Domed Building.]
Instead of examining dome-outside: try looking.

The description of the Domed Building is "Before you is a weathered concrete building with a domed top that vaguely resembles the Pantheon in Rome. The entrance to the building is through a columned portico to the east."

Chapter - Inside Dome

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

The well is a thing.
The well is a container.
The well is open.
The well is scenery in the Inside Dome.
The description of the well is "The well is circular and filled with what appears to be fresh water. It appears to be the same size as the oculus far above it with a knee-high wall running around its circumferance."

Instead of inserting things into the well: say "I don't see the purpose of dropping [the noun] in the water."

The wall is scenery in the Inside Dome.
The description of the wall is "The wall runs around the entire outer edge of the well."

Instead of entering the well: try entering the wall;
Instead of entering the wall: say "You rest briefly at the edge of the well to gather your thoughts."

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

In one or two of the dusk scenes you can make out small shadowy silhouettes hidden in the background undergrowth and shadows, spying on the Eloi[']s foreground activity[unicode 8212]Wells['] Morlocks."

Understand "cyclorama" or "mural" or "panel" or "panels" as murals.
	
Before taking the murals:
	say "They[']re pictures. You look at them, no reading necessary.";
	stop the action.

The mosaics are a thing.
The mosaics are scenery in the Inside Dome.
The description of the mosaics are "Each panel is composed of thousands of small square pieces of colored stone, tile, and glass best viewed at a slight distance. In certain places, individual pieces have fallen out unmaintained by future generations."
Understand "mosaic" or "square" or "stone" or "tile" or "glass" or "colored pieces" or "pieces" as mosaics.


Chapter - Balcony

[Treetops, foliage, and forest are handled in the Clearing]

The Balcony is a room.
The Balcony is south of Inside Dome.
The description of the Balcony is "This small concrete balcony looks down on the treetops below. To the south, through a break in the foliage, you can see a river with many tiny figures around it.[paragraph break]From up here you can also make out an overgrown path leading southeast from the clearing to the river, probably obscured by undergrowth."

The balcony-river is scenery in the Balcony.
The description of the balcony-river is "The river winds its way through the forest below you. Looking closely, you can see groups of people in the river and on its banks."
The printed name of balcony-river is "river".

Understand "river" as balcony-river.

The balcony-people is scenery in the Balcony.
The description of balcony-people is "From this distance it is difficult to make out specific details about the group gathered at the river below. They all appear to be similar in stature and dressed in the same garments, but you[']ll have to get closer to confirm these initial observations."

Understand "people" or "figures" or "group" as balcony-people.

Chapter - River Bank

The River Bank is a room.
The River is southeast of the Clearing.
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


Part - Characters

Chapter - Eloi

The Eloi are people. "[if the player is in the River Bank for more than the first time]A few of the Eloi gather around you.[otherwise]A small group of individuals, by your count twenty or thirty, are spread out along this section of the river bank, involved in a variety of activities. Some are swimming in the shallows, others are resting on the river bank, a few gather flowers or fruit and, to your horror, a few are involved in prurient matters in the shadows of nearby bushes. These must be the Eloi from Wells['] story.

Noticing your presence, a few of the Eloi gather around you.[end if]"

The indefinite article is "the".
The Eloi are in the River.
The Eloi are fixed.

The description of the Eloi is "All of the Eloi are slight and short, about four feet tall. All are dressed in the same type of manufactured tunic, belted at the waist, and wearing buskins on their feet. The homogeneity of their features, their build, and their dress make it hard to distinguish one from the other."

eloi-couples are scenery in the River.
The description of eloi-couples are "Best to focus on the task at hand, which is finding Weena."
Understand "couples" as eloi-couples.

Section - Conversation

Instead of telling the Eloi about something:
	try asking the Eloi about something.

Instead of asking the Eloi about something:
	say "Try as you might you can[']t make the Eloi understand what you are saying. Some of them laugh at your strange pronunciation while others coo and chatter among themselves quietly. Others become bored and drift off into other pursuits while still others walk over to see the new oddity." 
	[say "ASKING [noun] about [second noun]." [second noun = nothing in this example because it is not an object. See Writing §12.20. Stored actions]]

Instead of giving something to the Eloi:
	[say "GIVE [noun] TO [second noun]."]
	say "You hand the [noun] to one of the Eloi. Puzzled, they look at it a for a few second and, unable to discern its purpose, pass it around the small group gathered until the [noun] is returned to you."	
		
Instead of giving the pocket watch to the Eloi:
	say "Suddenly all the Eloi stop their chattering and silently focus on the pocket watch. The one with the watch turns it over in their hands before another grabs it away from them.[paragraph break]";
	now the Eloi is carrying the pocket watch.
	
Instead of showing something to the Eloi: [Handles both > show fuse to eloi and > show eloi the fuse]
	[say "SHOWING [noun] TO [second noun]."]
	say "The group looks at the [noun] with various degrees of puzzlement on their faces but no recognition of the [noun]'s function." [What is best way to handle possesiveness, i.e. "'s"?]

Instead of showing the pocket watch to the Eloi:
	say "Suddenly all the Eloi stop their chattering and silently focus on the pocket watch. One of them grabs it from you and turns it over in their hands. They show it to another Eloi who grabs it from them."[paragraph break];
	now the Eloi is carrying the pocket watch.

Chapter - Weena

Weena is a person.
Weena is nowhere.
Weena is fixed.
The description of Weena is "Slightly taller than the other Eloi but dressed as they are and with the same similarity of features and build, this is clearly the girl Wells described."

Section - Flower

The flower is a thing.
The flower is nowhere.
The description of the flower is "Unlike any vegetation you've ever seen, the petal that Humboldt gave you matches those on this flower's blossom exactly. If this won't convince the doctor of Wells[apostrophe] sanity then nothing will."

Section - Introduction Of Weena

Introduction Of Weena is a scene.

Introduction Of Weena begins when the Eloi is carrying the pocket watch.

When Introduction Of Weena begins:
	[say "INTRODUCTION TO WEENA BEGINS.";]
	say "Suddenly a young girl appears. Though her age, appearance and clothing mimics the other Eloi, her demeanor and the way she looks at you is different from the others. Obviously this is Weena and her encounter with Wells has changed her in some way, forced her to 'grow up' for lack of a better word.

	Weena gently takes the pocket watch from the Eloi who has it and turns it over slowly in her hands, her brow furrowed in thought.";
	now Weena is in the River;
	now Weena is carrying the pocket watch.

Introduction Of Weena ends when Weena has the pocket watch.

[When Introduction Of Weena ends:
	say "INTRODUCTION TO WEENA ENDS."]

Section - Weena Gives You Flower

Weena Gives You Flower is a scene.

Weena Gives You Flower begins when Weena has the pocket watch.

When Weena Gives You Flower begins:
	[say "WEENA GIVES YOU FLOWER BEGINS.";]
	say "Weena stares at the second hand making its way around the dial and taps at the crystal with her finger. Looking up, she smiles. She remembers. She hands the watch back to you and smiles."; 
	now the player is carrying the pocket watch.

Instead of asking Weena about something:
	say "Try as you might you can't make Weena understand what you are asking about. At times she laughs at your strange pronunciations." 

Instead of giving something to Weena:
	say "You hand the [noun] to Weena. Puzzled, she looks at it a for a few seconds and, unable to discern its purpose, passes it around the small group gathered until the [noun] is returned to you."

Instead of giving the pocket watch to Weena:
	say "She looks at the pocket watch, smiles, and then returns it to you."

Instead of showing something to Weena: [Handles both > show fuse to weena and > show weena the fuse]
	say "Weena looks at the [noun] with a degree of puzzlement on her face but no recognition of the [noun]'s function." [What is best way to handle possesiveness, i.e. "'s"?]

Instead of showing the pocket watch to Weena:
	say "She cocks her head and smiles back at you, waiting."

Instead of giving the petal to Weena: try showing the petal to Weena.

Instead of showing the petal to Weena:
	say "Weena looks at the petal in your hand and, reaching up into her hair, she remove a single flower and hands it to you before running off. It must be a game she played with Wells. The rest of the Eloi follow her and soon you are alone by the river.";
	now the player is carrying the flower;
	now the Eloi are nowhere;
	now Weena is nowhere.

Weena Gives You Flower ends when the player has the flower.

[When Weena Gives You Flower ends:
	say "WEENA GIVES YOU FLOWER ENDS."]

Book - Ending The Story

Chapter - Morlock Endgame

[Writing §8.18. Randomness]
[Writing §9.4. When play ends]

Instead of wandering in the Bottom Shaft:
	if encounter-morlocks is true:
		if the player has the poker:
			say "Even with a weapon you shouldn't try your luck, especially without a source of light and possibly some allies. I mean, you barely escaped from your first encounter with these brutish savages.";
		otherwise:
			say "I don't fancy you would want to try your luck a second time in that darkness, especially without a weapon. I mean, you barely escaped from your first encounter with those mongoloid underdwellers.";
	otherwise:
		if a random chance of 1 in 3 succeeds:
			if the player has the poker:
				say "You start down the [noun] tunnel without a light or a map towards the sound of the nearest machinery. Suddenly, without warning, multiple pairs of brutish hands reach out of the darkness and attempt to grab you. With a strength born of desperation and fear, you flail at them with the poker and drive what must be Morlocks off into the darkness. Retreating in what you hope is the correct direction, you find yourself back at the bottom of the shaft.";
				now encounter-morlocks is true;
			otherwise:
				if a random chance of 2 in 3 succeeds:
					say "You start down the [noun] tunnel without a light or a map towards the sound of the nearest machinery. Suddenly, without warning, mongoloid hands reach out of the darkness and grab you. By some miracle you are able to beat off your attackers and retreat back to the bottom of the shaft.";
				otherwise:
					say "You start down the [noun] tunnel without light or map towards the sound of the nearest machinery. The light fades as you proceed down the tunnel until you are in near absolute darkness. The noise of machinery gets louder and louder with each step you take.[paragraph break]Suddenly, without warning, multiple pairs of brutish hands reach out of the darkness and grab at you. You fight back valiently but, outnumbered and without a weapon, you are quickly overwhelmed by the negroid shadows and knocked unconscious.[paragraph break]Later, you regain consciousness in the freezing cold in some storage room carved out of solid rock. Shivering, you look around. Surrounding you are the naked bodies of Eloi, male and female, suspended on hooks, future fodder for the Morlocks. You bang on the door in horrror but the omnipresent and overwhelming sound of machinery drowns out your screams. Exhausted, you slump against the wall and soon succumb to the freezing cold, wishing you had believed Wells from the start.";
					end the story finally;
				now encounter-morlocks is true;
		otherwise:
			say "You start down the [noun] tunnel but without a light or a map you wander unsuccessfully in the darkness, eventually returning to where you started. Maybe you'll have better luck in another direction.".

Chapter - Humboldt's Return

Humboldt's Return is a scene.

Humboldt's Return begins when humboldt-should-return is true.

When Humboldt's Return begins:
	[say "HUMBOLDT'S RETURN BEGINS.";]
	say "The door to the workshop opens and Dr. Humboldt enters. He appears both relieved and annoyed. 'Where the hell have you been hiding? Mrs. Watchett and I have been through the entire house looking for you.'[no line break][if the time machine is not nowhere] He looks over your shoulder at the time machine. 'So that must be Wells['] time machine contraption.'[end if]";
	now Humboldt is in the Workshop;
	now Humboldt is mobile;

Humboldt's Return ends when Humboldt is in the Workshop.

When Humboldt's Return ends:
	[say "HUMBOLDT APPEARS IN THE WORKSHOP.";]
	now humboldt-endgame-begins is true;
	[say "HUMBOLDT'S RETURN ENDS."]

Chapter - Humbolt Endgame

Humboldt Endgame is a scene.

Humboldt Endgame begins when humboldt-endgame-begins is true.

[When Humboldt Endgame begins:
	say "HUMBOLDT ENDGAME BEGINS."]

[Recipe §7.13. Traveling Characters, Van Helsing example]
Every turn:
	if Humboldt is mobile:
		if the location of Humboldt is not the location of the player:
			let the way be the best route from the location of Humboldt to the location of the player, using doors;
			try Humboldt going the way;
			[Should Humboldt get annoyed if you walk around and don't tell him what you discovered?]
		[otherwise:
			say "HUMBOLDT WATCHES YOU [patience of Humboldt]."]

[Humboldt's patience is changed by various conversation topics (see 1895 • Characters • Humboldt • Conversation)]
Patience rules is a rulebook. [Writing §19. Rulebooks - §19.2, §19.3, §19.8]
[This is the increment patience by one rule: ] [Why doesn't this work?]
[This is the increment patience rule:] [Why doesn't this work?]
A patience rule:
	if the patience of Humboldt is:
		-- accepting:
			now the patience of Humboldt is tolerant;
		-- tolerant:
			now the patience of Humboldt is impatient;
		-- impatient:
			now the patience of Humboldt is frustrated;
		-- frustrated:
			now the patience of Humboldt is angry;
		-- angry:
			now endgame-failure is true.

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

Humboldt Endgame ends when endgame-success is true or endgame-failure is true.

When Humboldt Endgame ends:
	[say "HUMBOLDT ENDGAME ENDS."]
	if endgame-success is true:
		[say "SUCCESS. HUMBOLDT REALIZES THAT WELLS IS NOT INSANE.";]
		say "Humboldt studies the flower in amazement. 'I[']m just an amateur botanist but this morphology is unique,' he says. 'There must be some truth to Wells[apostrophe] story.' You recount your adventures in the future and take the doctor for a brief journey to the year 802,701 before the both of you go to the hospital to free Wells.";
	if endgame-failure is true:
		[say "FAILURE. YOU ARE DRAGGED OFF TO THE ASYLUM."]
		say "At the end of his patience, Humboldt realizes you have become just as delusional as Wells. Leaving the room abruptly, he returns with his two attendants. Quickly, they manhandle you into the ambulance outside and cart you off to the hospital to share a ward with Wells.";
	end the story finally.
	
Book - Help

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
	say "NOTE: If you have never played this game before I suggest you play it first without reading any of this information below since individual items may contain Spoilers.
	
Release 5 Notes (v1.2)[paragraph break]
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
• Refactored Watchett conversation to use Eric Eve's Conversation Package extension in time-machine-conversation storyworld (code to be integrated into time-machine at when all character conversation's refactored.
		
	
Release 4 Notes (v1.1)[paragraph break]
This release incorporates several fixes based on reviews and feedback from people who played the game during ParserComp 2021 judging.[paragraph break]
• Before he leaves, Humboldt will pick up Wells['] pocket watch off of the street and hand it to you if you have not already picked it up.[line break]
• The ambulance driver is now a person that you can have limited conversation with.[line break]
• In the Clearing you can now Pull, Push, and attempt to Break the grate with another object (previously only Take Grate worked).[line break]
• The time machine fuse will no longer burn out after a single round trip.[line break]
• You no longer need to talk to Mrs. Watchett before successfully finding the key, but it might take several searches of the area to find it.[line break]
• In the Parlor, the attempted taking of coals, ashes, or embers from the fireplace returns an appropirate response.[line break]
• It is now possible to put the watch or any other object down in the Library and retrieve it. In the prior release you were unable to retrieve anything that was put down in the Library, getting a 'It's hardly portable' message when attempting to pickup the previously dropped or place object.[line break]"


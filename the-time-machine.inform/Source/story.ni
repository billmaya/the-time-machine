The story title is "The Time Machine".
The story author is "Billy Tenenbaum".
The story headline is "A Temporal Investigation".
The story genre is "Science Fiction".
The release number is 1.
The story description is "Did your good friend Wells really time travel into the future to the year of 802,701, to the age of what he calls the Eloi and the Morlocks? Only you can get investigate your friend's story and determine if he is telling the truth or if he is insane.".
The story creation year is 2021.

[ WORDS - 20709 ]

Book 1 - Beginning The Story

The player is in Woking Street.
The description of the player is ""

The current-year is text that varies.
The current-year is "1895".

When play begins: 
	now the left hand status line is "[location] - [current-year]";
	say "'Let me go!'

Wells struggles against the efforts of the two orderlies who are dragging him towards the horse-drawn ambulence parked in the street. Desperate, he pulls himself free and stumbles into you, almost knocking the both of you to the ground.

'My friend, I[apostrophe]m not crazy,' he says, his eyes desperate and pleading. 'I know my story sounds insane,  but it[apostrophe]s true. Every word of it. You believe me, don[apostrophe]t you?'

Dr. Humboldt intervenes, placing himself between you and Wells. 'There, there, Wells. Of course we believe you. You just had a terrible shock; you need to rest after all these...time traveling adventures of yours. Plenty of time to sort it all out after you[apostrophe]ve had a bit of a break. Nothing to worry about.'

You look at the doctor and back at Wells, not knowing who to believe. Wells is your oldest friend but the doctor makes a good point, especially after the story you[apostrophe]ve just heard from Wells[apostrophe] own mouth. Morlocks. Eloi. It sounds fantastical.

'I can prove it all,' Wells says. He starts fumbling in his vest pockets, looking for something. 'In my workshop you[apostrophe]ll find...get your bloody hands off of me!' The orderlies have grabbed Wells a second time 'No, damn you! Let me go!' 

Wells forgets whatever he was looking for in his pockets and struggles against the orderlies but they[apostrophe]re prepared this time and manage to overpower your friend and manhandle him into the ambulence. But it[apostrophe]s a near thing, so violent that Wells[apostrophe] pocket watch falls to the ground during the struggle.

Humboldt notices your concerned look. 'Don[apostrophe]t worry,' he says. 'They[apostrophe]re professionals, used to dealing patients like this all the time. They[apostrophe]re not as rough as they look.'"

After printing the banner text, say "[line break][italic type]First time players should type 'about' or 'help' and then hit the Enter/Return key."

Chapter 1 - Missing Item Description Check

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

Book 2 - Mechanics

Chapter 1 - Extensions

Include Basic Help Menu by Emily Short.
Include Punctuation Removal by Emily Short. [Writing §17.21. Understanding mistakes]

After reading a command:
resolve punctuated titles.

Chapter 2 - Instead-Of Rules

Section 1 - Waiting

Instead of waiting: say 
	"[if location is Woking Street]You shiver in the cold wind, drawing your light jacket closer around you. You really should get inside since you're not dressed appropriately for this winter weather.
	[otherwise]Time passes."

Section 2 - Up

Instead of going up in Woking Street: say "You jump up and down a few times, trying to warm yourself up, but it's a lost cause. Better get inside."

Instead of going up in the Entryway: say "You wander around upstairs for a few minutes but find nothing of interest and return downstairs."

Section 3 - Using

Instead of using things:
	if the player is in the Kitchen: [TBD - Any object in Kitchen, even if carried by player, will display text below]
		say "Given your gender and dearth of knowledge about things domestic, perhaps it is best if you leave the operation of these devices to Mrs. Watchett. I'm sure she would help you in any way possible as long as it does not interfere with here preparations.";
	otherwise:
		say "You'll have to be more specific."
		[continue the action.]

Section 4 - Attack

Instead of attacking someone: say "Violence [aren't] the answer here, especially given your years of jurisprudence."

Chapter 2 - Before Rules

Section 1 - Listening

Before listening:
	if the player is in Woking Street:
		say "The sound of the wind nearly obscures the normal sounds of the city at this time of night.";
		stop the action;
	else if the player is in the Clearing:
		say "Nature sounds mixed in with the sound of the wind through the trees.";
		stop the action;
	else if the player is in the Top Shaft: 
		say "The faint sounds of machinery from below mingle with the natural sounds of the clearing.";
		stop the action;
	else if the player is in the Bottom Shaft:
		say "The sound of machinery is louder now and seems to come from every direction.";
		stop the action;
	otherwise:
		continue the action.







Chapter 3 - Every Turn Rules

Section 1 - Workshop

Every turn:
	if the player is in the Workshop and the player has the flower:
		now humboldt-should-return is true.

Chapter 4 - Conversation

Understand "talk to [someone]" as a mistake ("To start a conversation, try to ASK [the noun] ABOUT something or TELL [the noun] ABOUT something.").

[Understand "talk to [someone] about [something]" as a mistake ("AUTOMATICALLY TRY THIS AS 'ask someone about something'").]
[The "talk to [someone] about [something] as a mistake" line above doesn't work like I want it to.

 > talk to humboldt about wells returns "You can't see any such thing."
 > talk to humboldt about ambulance returns the "AUTOMATICALLY TRY..." text

The [something] has to exist for the 2nd part of the Understand/as a mistake statement to be reached. Wells doesn't exist in the game but the ambulence does.]


Chapter 5 - Take All

[https://bit.ly/3xV8H3P]

Rule for deciding whether all includes a thing when taking: it does not.
Rule for deciding whether all includes a thing when removing from: it does not.

[This changes the default message “There are none at all available!”]
Rule for printing a parser error when the latest parser error is the nothing to do error:
	say “Grabbing for everything at once isn't going to help your investigation one bit. A methodical, measured approach is called for.”






Chapter 6 - Tests

[In the game type "> test" to see a list of all the available tests]

Test goto-kitchen with "north / west/ north / north / north." [from Woking Street]
Test goto-dining with "north / west / north / north." [from Woking Street]

Test house-look with "x other houses / x residences". [from Woking Street]
Test kitchen-desc with "x work table / x cabinets / x kitchen shelves / x stove / x sink / x work area." [from Kitchen]

Test humboldt-woking-talk with "ask humboldt about wells / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about workshop / ask humboldt about time machine"

Test take-encyc with "take encyclopaedia / take encyclopaedia / take encyclopaedia / take encyclopaedia / take encyclopaedia."
Test take-book with "take book / take book / take book / take book / take book / take book."
Test take-mag with "take periodical / take periodical / take periodical / take periodical / take periodical."  

Test tend-fire with "tend fire / take poker / tend fire / drop poker / tend fire."

Test orrery-examine with "examine orrery / examine planetarium / examine device / examine mechanism / examine box / examine solar system."
Test orrery-on-off with "turn orrery on / turn orrery off."
Test orrery-syn-on-off with "turn planetarium on / turn planetarium off / turn device on / turn device off / turn mechanism on / turn mechanism off / turn box on / turn box off / turn solar system on / turn solar system off."

Test switch-examine with " examine orrery's switch / examine orrery switch."
Test switch-flip with "flip orrery's switch / flip orrery's switch / flip switch / flip switch."

Test unlock-workshop with "go north / purloin key / unlock workshop door with key."
Test goto-workshop with "test unlock-workshop / go north / flip switch."

[Test prepare-time-machine with "gonear time machine / purloin fuse / examine blueprints / put fuse in time machine."]
Test prepare-time-machine with "test unlock-workshop / go north / flip switch / purloin fuse / examine blueprints / put fuse in time machine."

Test circular-shaft-look with "x shaft / take grate / x shaft."

Test clearing-sphinx-se with "go southeast / go up / go down / go southeast."
Test clearing-balcony-se with "go southeast / go east / go east / go south / go north / go west / go west / go southeast."

[Test eloi-ask-show-give with "purloin watch / purloin poker / purloin key / purloin petal / gonear river."]
Test eloi-ask-show-give with "purloin watch / purloin poker / purloin key / purloin petal / go southeast."
			
Test travel-802701 with "test prepare-time-machine / enter / activate panel / exit / up / down / test eloi-ask-show-give."
Test travel-1895 with "go northwest / enter / activate panel."
Test endgame-humboldt with "test travel-802701 / show eloi watch / show weena petal / test travel-1895 / exit."

Test goto-802701 with "purloin key / purloin fuse / n /unlock workshop door with key / n / flip switch / examine blueprints / put fuse in time machine. / get in time machine / press button."


Book 3 - 1895

Part 1 - Settings

Chapter 1 - Woking Street

Woking Street is a room. 
The description of Woking Street is "You're standing halfway down the street. Snow gently wafts down in large amounts, covering what fell minutes before, undisturbed except for the [area] of the street directly in front of you[if ambulence is in Woking Street] where the ambulence is parked[end if].[first time][paragraph break]To the west, the flickering [gaslights] in the square seem much further away than fifty paces. Fifty paces to the east the street dead-ends into a small [cul-de-sac].[only]"

	The area is scenery in Woking Street.
	The area is a supporter.
	The description of the area is "Directly in front of you the falling snow is rapidly covering the footsteps and carriage tracks from the scuffle between Wells and the hospital attendants that happened minutes ago.[if watchett-key is true][paragraph break]Something metallic catches your eye, almost buried under the rapidly falling snow.[otherwise][paragraph break]As you survey the area nothing catches your eye. Of course, it would help if you knew what you were looking for.[end if]"

	Understand "footsteps" or "carriage tracks" or "area of the street" or "street area" as area.

	[> search street -> YCST https://bit.ly/3tvvi3z]
	[> search area]

Instead of searching the area:
	if watchett-key is true:
		say "Bending down, you brush the snow away to reveal a small metallic key. Picking it up, you put it in your pocket.";
		now the player is carrying the metal key;
	otherwise:
		say "Despite the cold you bend down and survey the small patch of macadam but nothing catches your eye. Of course, it would help if you knew what you were looking for."

	[Snow is handled in the Garden]

	The gaslights are scenery in Woking Street. [coal gas https://bit.ly/3ijMeoV ] 
	The description of the gaslights are "Incandescent globes of light hold steady against the early winter darkness and swirling snow. Wells says there is talk of replacing them with something called electrical fixtures, which could be product of his overactive intellect, but you would miss the soft green glow of gassified coal that lights your nightime steps."
	Understand "gas" or "lights" or "gas lights" or "flickering" or "flickering lights" or "flickering gas lights" as gaslights.

	The cul-de-sac is scenery in Woking Street.
	The description of the cul-de-sac is "A small roundabout with a sputtering [fountain] in the center closes off the street to the east."
	Understand "close" or "dead end" or "impasse" or "blind alley" or "dead-end" or "dead-end street" or "roundabout" or "cul de sac" or "end of street" as cul-de-sac. 
	
	The fountain is scenery in Woking Street.
	The description of the fountain is "The water in the small, sputtering fountain vainly battles to remain upright against the frigid winter wind that swirls around the enclosed area."
	Understand "water" or "sputtering" or "sputtering fountain" or "small fountain" or "small" as fountain.
	
	The square is scenery in Woking Street.
	The description of square is "During the day the road that intersects perpendicularly with Woking Street and the park beyond are live with carriages and pedestrians, even during this season. But now, at night and in this weather, both are empty except for the occasional carriage or pedestrian hurrying to warmer locations."
	Understand "park" or "open space" or "municipal park" or "intersection" or "urban park" or "crossroads" or "main street" or "common" or "greenery" or "green park" as the square.

	Going west in Woking Street is wandering.
	Going northwest in Woking Street is wandering.
	Going northeast in Woking Street is wandering.
	Going east in Woking Street is wandering.
	Going southeast in Woking Street is wandering.
	Going south in Woking Street is wandering.
	Going southwest in Woking Street is wandering.
	
	Instead of wandering:
		say "You start walking away from the front door towards [if the noun is west]the intersection[else if the noun is east][one of]the fountain[or]the cul-de-sac[purely at random][otherwise]one of the other houses[end if] but a sudden [one of]frigid[or]cold[or]bitter[or]frosty[or]ice-cold[or]numbing[or]wintery[or]icy[purely at random] [one of]gust[or]flurry[or]burst[or]blast[purely at random][one of] of wind[or] of snow[purely at random] makes you reconsider.[line break][line break]You really should get inside since you're not dressed appropriately for this winter weather."
	
	The houses are scenery in Woking Street.
	The description of houses are "Nothing much has changed since you last glanced around.[first time] Twenty or thirty terraced houses ring the circular cul-de-sac, uniform in height and facade, each sharing walls with their neighbors except for the end-terrace units to the west. Most of the houses are dark at this time of night, though scattered lights show in the odd window, probably due to the recent commotion. Maybe one or two of the lights has gone off as those residents have gone back to sleep.[only]"
	
	Understand "other houses" or "dark houses" or "buildings" or "other buildings" or "residences" as houses.

	The front door is north of Woking Street and south of the Entryway. 
	The front door is a door. 
	It is openable and lockable. 
	It is unlocked.

	The description of the front door is "[if location is Woking Street]At first glance the door to 68 Woking Street is indistinguishable from every other door that lines the street, except for the unusual [knocker].[otherwise]You see nothing special about the heavy, wooden door leading to the street outside."
	
	[TBD - More detailed description of front door? See Victorian doors https://bit.ly/3rOzQkZ and https://bit.ly/3b0ymNP]

Section 1 - Humbolt Exit

Before going north in Woking Street: 
	if Humboldt is not nowhere:
		say "Humboldt snaps his pocket watch shut and starts getting into the ambulence. 'I'll be back in a few hours after I've gotten him sedated and through the preliminaries.' Humboldt turns back towards you abruptly. 'I nearly forgot. See what you can make of this.'[paragraph break]He hands you a single petal from some flower. You recognize it as Wells[apostrophe] proof of his future trip to the year 802,701, given to him by the girl he called Weena. 'I'm a pretty good amateur botanist but even I can't tell the morphology of this from a single petal. If you find the rest somewhere inside, maybe we can convince your friend that his whole future trip was a figment of his imagination. See what you can dig up until I get back.'[paragraph break]With that Humboldt swings the ambulence door shut. With the crack of the reins the ambulence starts off down the street, turns the corner, and disappears into the evening traffic.";
		now Humboldt is nowhere; [Writing §8.10. Removing things from play]
		now the ambulence is nowhere;
		now the player is carrying the Petal.	

Section 2 - Front Door
	
	The initial appearance of the front door is "[if location is Woking Street]The front door to 68 Woking Street is to the north.[first time] The light escaping from the drawn curtains to one side looks invitingly warm.[only][otherwise]The door to the street outside is to the south."
	
	The address is a thing.
	The address is scenery in Woking Street.
	The address is fixed in place.
	The description of address is "Two brass numbers, a 6 and an 8, fastened to the door underneath the door knocker." 
	Understand "68" or "street address" or "numbers" or "door address" as address.

	[TBD Would like to make text conditional? - "...[if knocker examined]sundial[otherwise]knocker."]
	[TBD How do you make a door a supporter, i.e. The address is on the front door. "If a supporter were a kind of a door or vice versa there'd be no problem, but they aren't." See Writing §3.5]
	
	The knocker is scenery in Woking Street.
	The description of the knocker is "Made of brass, this door knocker is in the shape of a sundial. By virtue of its unique design it stands out among all the unexceptional, cast iron lions heads, faces, or simple rings that adorn every other door on the street. It is unique, custom-made, the only one of its kind in the entire city, probably the world, and always brings a smile to your face since it reflects the temporal obsessions of your friend who lives at this address."
	
	The sundial is scenery in Woking Street.
	The sundial is a supporter.
	The description of the sundial is "Octogon shaped, this custom-made timekeeper is attached vertically to the door. While it has all of the components of it’s horizontal cousins, these componens are arranged in a slightly different configuration to account for its vertical nature and the surrounding buildings.[paragraph break]Roman [numerals] from one to twelve surround a stylized [sun] at the center. A hinged gnomon, which would normally cast a shadow during daylight hours, serves as the knocker. Underneath the sun and gnomon is the [motto] 'Sine Umbra Nihil'. Lightly etched complementary [Babylonian] and [Italian] hour lines cross the sundial's face."
	
	Understand "timekeeper" or "timepiece" as sundial.
	
		The numerals are a thing.
		The numerals are on the sundial.
		The numerals are fixed in place.
		The numerals are undescribed.
		The description of the numerals are "Etched Roman numerals from I to XII encircle the stylized sun in a Copernican fashion."
		Understand "roman numerals" as numerals.
	
		The sun is a thing.
		The sun is on the sundial.
		The sun is fixed in place.
		The sun is undescribed.
	
		The motto is a thing.
		The motto is on the sundial.
		The motto is fixed in place.
		The motto is undescribed.
		The description of the motto is "If you remember your school Latin, 'Sine Umbra Nihil' loosely translates into 'Without shadow there is nothing.'"
	
		The babylonian line is a thing.
		The babylonian line is on the sundial.
		The babylonian line is fixed in place.
		The babylonian line is undescribed.
		The description of babylonian is "A sundial's Babylonian line is used to indicate the hours of sunrise."
		Understand "babylonian line" as babylonian line.
	
		The italian line is a thing.
		The italian line is on the sundial.
		The italian line is fixed in place.
		The italian line is undescribed.
		The description of italian is "A sundial's Italian line is used to indicate the hours of sunset."
		Understand "italian line" as italian line.
	
		The gnomon is a thing.
		The gnomon is on the sundial.
		The gnomon is fixed in place.
		The gnomon is undescribed.
		The description of the gnomon is "An triangular piece of metal, ornately engraved and hinged at the isosceles' apex."
		Understand "triangular" or "triangle" or "isosceles" or "piece" or "metal" or "knocker" as gnomon.
	
	Knocking is an action applying to one touchable thing.
	Understand "knock on [something]" as knocking.
	Understand "knock [something]" as knocking.
	
	Instead of knocking front door: try using gnomon.
	
	Using is an action applying to one touchable thing. [see Writing 17.1]
	Understand "use [something]" as using.	
	
	Instead of using the knocker: try using gnomon.	
	
	Instead of using the gnomon: say "You reach out and raise the hinged gnomon several times and tap on the brass base underneath. The gentle 'tap, tap, tap' sound is almost lost in the wind but you are sure it is being heard clearly inside."
	
	After going north through the front door:
		now the front door is closed;
		continue the action.
	
	After going south through the front door:
		now the front door is closed;
		continue the action.
		
[Sundial links
victorian	https://bit.ly/3tP1ssg
image	https://bit.ly/371QTYW
mottos	https://bit.ly/2Z7bRS4
parts-of	https://bit.ly/3p83dwZ ]
	
Section 3 - Ambulence
	
The ambulence is a thing in Woking Street.
The description of the ambulence is "Horse-drawn, the ambulence resembles a private carriage but is uniquely adapted for its medical function. The driver waits impatiently in his enclosed glass cab at the front. Large rear doors, now open, allow entrance and egress from the vehicle of patient, orderlies, and doctor."
The ambulence is fixed in place.
The ambulence is undescribed.
Understand "ambulance" or "cab" as ambulence.

Instead of taking the ambulence: say "What delusions of grandeur. Perhaps they should break out a straightjacket for you."

Instead of searching the ambulence: try entering the ambulence.
Instead of entering the ambulence: say "With a steady hand Dr. Humboldt stops you. 'Better stay here.'"

Section 4 - The Workshop Key

The metal key is a thing.
The metal key is in Woking Street.
The metal key is undescribed.
The description of metal key is "A small metal key that you can recall Wells carrying around everywhere he went."
Understand "glint" or "key" or "metallic" or "metallic object" as metal key.

The metal key unlocks the workshop-door.
		
Section 5 - The Petal
	
The petal is a thing.
The petal is nowhere.
The description of the petal is "You can't tell much from a single petal except that it came from a flower. Perhaps the rest of the blossom is inside somewhere."
		
Section 6 - Pocket Watch

The pocket watch is a thing.
The pocket watch is in Woking Street.
[The pocket watch is undescribed.]
[The printed name of pocket watch is "Wells[apostrophe] pocket watch".]
The pocket watch can be open or closed. The pocket watch is closed.
Understand "timepiece" or "chronometer" as pocket watch.

The description of the pocket watch is "Wells[apostrophe] pocket watch, given to him by his father. Thinking back on his amazing tale, you remember that his 'Weena' was particularly enchanted with the moving hands and its winding mechanism."

Instead of using the pocket watch, say "[one of]You check the time.[or]You wind the watch.[or]It's getting late. Humboldt will be back soon.[purely at random]"

Chapter 2 - Entryway

The Entryway is a room. 
The description of the Entryway is "From here you can reach all other parts of the house. To your right, an ornately-carved [banister] parallels the [staircase] that leads up to the second floor landing. Through an open door to the west you can see shelves of books and hear the faint sounds of a crackling fire. Down a short hallway to the north is the [if workshop-door is open]open[otherwise]closed[end if] door of Wells[apostrophe] workshop."
	
	The staircase is fixed in place in the Entryway. 
	The description of the staircase is "Stairs going up to the second floor. You have to admit, you haven't ever been up there."
	Understand "stairs" or "steps" as staircase.
	
	The banister is fixed in place in the Entryway.
	The description of the banister is "Just a normal handhold for going up and down the steps."
	
	Understand "handrail" or "rail" or "railing" or "balustrade" or "guardrail" or "handhold" as banister.

Section 1 - Workshop Door
	
The workshop-door is north of the Entryway and south of the Workshop. 
The workshop-door is a door. 
The workshop-door is lockable. The workshop-door is locked.
The workshop-door is scenery. [Not "undescribed." Couldn't walk through it if it was "undescribed." See https://bit.ly/3rdieyO ]
Understand "workshop" or "door" as workshop-door. 
The printed name of workshop-door is "workshop door".

Instead of examining the workshop-door:
	say "An ordinary looking door leading to Wells[apostrophe] workshop. The door is [if workshop-door is open]open[otherwise]closed[end if]."

Chapter 3 - Library

The Library is a room. 
The Library is west of the Entryway. 
The description of the Library is "Hundreds of books on a variety of subjects fill the floor-to-ceiling [shelves] on the north, east, and, west walls. The remaining free space not devoted to [books], [periodicals], and a set of [encyclopaedia] is monopolized by a few pieces of [furniture].

Against the south wall is a small [desk] for note-taking, correspondence, and reconciling household accounts. A small leather [chair] is positioned near the drawn floor-to-ceiling [curtains] for more comtemplative research and relaxation. The room continues to the north."

The shelves are a thing.
The shelves are scenery in the Library.
The shelves are a supporter.

[Writing §4.5. Kinds of value]
[Writing §4.8. New value properties, Example 48]
[Writing §4.9. Using new kinds of value in properties]

Bookness is a kind of value. The booknesses are reference, magazine, and hardcover.

The books are a thing. [What if some of the books are from the future?]
The books have a bookness called type. The type of the books is hardcover.
The books are scenery on the shelves.
The description of books is "BOOKS DESCRIPTION." [Should not be displayed because of > examine books code in Section 1 below (included to keep books from showing up when Missing Item Description code is run).]
Understand "book" as books.

The periodicals are a thing.
The periodicals have a bookness called type. The type of the periodicals is magazine.
The periodicals are scenery on the shelves.
The description of periodicals is "PERIODICALS DESCRIPTION." [Should not be displayed becuase of > examine periodicals code in Section 1 below (included to keep periodicals from showing up when Missing Item Description code is run).]
Understand "magazine" or "magazines" as periodicals.

The encyclopaedia are a thing.
The encyclopaedia are scenery on the shelves.
The encyclopaedia has a bookness called type. The type of the encyclopaedia is reference.
The description of encyclopaedia is "ENCYCLOPAEDIA DESCRIPTION." [Should not be displayed becuase of > examine encyclopaedia code in Section 1 below (included to keep encyclopaedia from showing up when Missing Item Description code is run).]
Understand "encyclopedia" or "encyclopaediae" or "encyclopedias" as encyclopaedia.

The furniture is a thing.
The furniture is scenery in the Library.
Instead of examining the furniture, say "You'll have to be more specific about what you're interested in examining."

The desk is a thing.
The desk is scenery in the LIbrary.
The desk is a supporter.
The description of the desk is "A standing desk with a few handwritten papers on it."
Instead of searching the desk, say "You quickly shuffle through the papers on the desk but find nothing of interest."
	
The library papers are a thing.
The library papers are on the desk.
The library papers are portable.
The library papers are undescribed.
The printed name of library papers is "papers".

Instead of searching the papers: try searching the desk.
Instead of examining the papers: try searching the desk.
Instead of taking the papers: try searching the desk.

The chair is a thing.
The chair is scenery in the Library.
The chair is a supporter.
The chair is enterable.
The description of the chair is "Covered in worn leather it looks very comfortable and inviting, angled like it is against the curtained window.[first time] But you don't have time to rest, you have a key to find.[only]"

The curtains are a thing.
The curtains are scenery in the Library.
The curtains are a container.
The description of the curtains is "Pulled shut, the floor-to-ceiling dark fabric shields the room from the cold weather outside."
Understand "curtain" as curtains.
Instead of opening the curtains, say "Pulling a curtain aside, you briefly look at the snow-covered street outside. The continuously falling snow is rapidly covering the disturbed area where the ambulence was a few minutes ago. You let the fabric drop back into place and look around the room."

Instead of pushing the curtains: try opening the curtains.
Instead of searching the curtains: say "You look in the folds of the fabric but find nothing."

[Writing §4.3. Degrees of certainty, Example 44 - different default messages for something nondescript]
[Writing §7.1. Actions]

Section 1 - Reading

Instead of examining books: try taking books.
Instead of examining periodicals: try taking periodicals.
Instead of examining encyclopaedia: try taking encyclopaedia

Instead of searching the books: try taking books.
Instead of searching the periodicals: try taking periodicals.
Instead of searching encyclopaedia: try taking encyclopaedia.

Instead of searching the shelves: say "A frequent visitor, the items on the shelf are vaguely familiar, though nothing really catches your interest."

[Maybe don't make it random but chose a new one each time and never choose the same one twice?]
Instead of taking something in the Library:
	if the noun provides the property type:
		if the type of the noun is reference:
			choose a random row from Table of Encyclopaedia Volumes; 
			say "You take the volume labeled '[Label entry]' and leaf through the pages from '[Start-Word entry]' to '[End-Word entry]' until you get bored and place the volume back on the shelf.";
		else if the type of the noun is magazine:
			choose a random row from Table of Periodicals;
			say "You take a copy of '[Name entry]' off the shelf and leaf through [Note entry] before placing it back with the other issues.";
		else if the type of the noun is hardcover:
			choose a random row from Table of Books;
			say "You take a copy of '[Name entry]' off the shelf and leaf through a few pages before placing it back on the shelf.";
		otherwise:
		 	say "READING [the type of the noun].";
	otherwise:
		say "That's hardly portable.".

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

Chapter 4 - Parlor

The Parlor is a room. 
The Parlor is north of the Library.
The description of the Parlor is "A coal [fire] blazes away in a large [fireplace] set into the west wall. Directly in front of the hearth are two leather [armchairs] positioned advantageously to view the flames while conversing, drinking, or smoking.[if poker is in Parlor] Leaning against the fireplace is a [poker].[end if] Today's [newspaper] sits on one of the armchairs.[if pocket watch is on the small table in Parlor] On top of a small table against the east wall is a [pocket watch].[end if] A set of glass doors to the east lead outside to the garden and the room continues to the north."

The Garden Door is east of the Parlor and west of the Garden. 
The Garden Door is a door. 
The Garden Door is openable and lockable.
The Garden Door is scenery.
The description of Garden Door is "[if location is Parlor]A set of glass doors and stone steps lead down into a snow-covered garden.[otherwise]A set of stone steps lead up to glass doors and the inside of the house."

Understand "glass" or "glass door" or "glass doors" as Garden Door.

The armchairs are things.
The armchairs are scenery in the Parlor.
The armchairs are supporters.
The armchairs are enterable.
Understand "armchair" or "chair"  or "chairs" as armchairs.
The description of the armchairs are "Like the library chair they are covered in worn leather. Larger then their smaller counterpart they look even more inviting and comfortable, especially positioned as they are in front of the crackling fire.[first time] But you don't have time to rest, you have a key to find.[only]"

Instead of entering the armchairs:
	say "Well, maybe just for a minute while you gather your thoughts. You sit in the[one of] left [or] right[purely at random] armchair.";
	now the player is in the armchairs.

The newspaper is a thing.
The newspaper is on the armchairs.
Understand "news" or "paper" as newspaper.
The description of the newspaper is "Today's newspaper, already read."

[> examine newspaper vs. > read newspaper Recipe §9.6. Reading Matter]
Instead of taking the newspaper, say "You've already read it." 

The small table is a thing.
The small table is scenery in the Parlor.
The small table is a supporter.
The description of the small table is "Nothing out of the ordinary, just a small wooden table to the left of the garden doors."

Section 1 - Fireplace
	
The fireplace is a thing.
The fireplace is scenery in the Parlor.
The description of the fireplace is "A firebox set into the wall, protected by a wooden surround with a mantle above it. A fire is burning in the firebox."

The firebox is scenery in the parlor. "The interior of the fireplace, lined with fireproof brick."
The hearth is scenery in the parlor. "The base of the fireplace, divided into an inner hearth, where the fire is burning in a grate, and an outer hearth, which projects slightly into the room and protects the floor."
The mantle is scenery in the parlor. "A decorative piece of wood on top of the surround, painted to look like marble."
The damper is scenery in the parlor. "This movable door that separates the firebox from the flue and chimney above it. When no fire is burning it is closed and prevents cold air from entering the house."
The flue is scenery in the parlor. "You can't see it but you know it is beyond the damper, a conduit for smoke and gases."
The chimney is scenery in the parlor. "Unseen, but you know it surrounds the flue, preventing any heat from contacting flammable house materials."
The surround is scenery in the parlor. "Like the hearth it serves as protection for the surrounding area, in this case the walls instead of the floor."
The grate is scenery in the parlor. "A cast iron basket that holds the burning coals."
The brick is scenery in the parlor. "Heat-resistent bricks that reflect the fire's heat back into the room."

Instead of using the fireplace, say "That's not something you can use, but just enjoy."

[https://bit.ly/33EceFC https://bit.ly/2RO6PJq]

Section 2 - Fire

The fire is a thing.
The fire is in the parlor. [fireplace.]
The fire is undescribed.
The description of the fire is "The fire[apostrophe]s flames reflect off of the fireproof brick and back into the room, warming it. As the coals burn, the embers and ashes fall through the grate onto the brick.."

The coals are undescribed in the parlor. "A significant pile of red-hot fossilized plants and amorphous carbon providing heat and light."
Understand "coal" or "pile" as coals.
	
The flames are scenery in the parlor. "Hypnotic and mesmerizing if you stare too long at them."
Understand "flame" as flames.

The ashes is scenery in the parlor. "Embers that have cooled down, piling up beneath the grate."
Understand "ash" as ashes.

The embers are scenery in the parlor. "Small pieces of coal that have fallen through the grate, still quite hot."
Understand "ember" as embers.

Understand the command "tend" as something new. [> tend the fire]
Understand "tend [something]" as using.

Instead of using the fire:
	if the player has the poker:
		say "A few sparks rise up the flue and things warm up a bit as you spread the coals a bit more evenly around the grate.";
	otherwise:
		say "You will need something to do that with since your bare hands won't suffice.".

Instead of pushing the coals:
	if the player has the poker:
		say "You spread the coals a bit more evenly around the grate.";
	otherwise:
		say "With your bare hands? You'd have to be as crazy Humboldt thinks Wells is to even consider that."

Instead of pushing the embers:
	if the player has the poker:
		say "You spread the embers a bit more evenly around the inner hearth.";
	otherwise:
		say "With your bare hands? You'd have to be as crazy Humboldt thinks Wells is to even consider that."

Instead of pushing the ashes:
	if the player has the poker:
		say "You spread the ashes a bit more evenly around the inner hearth.";
	otherwise:
		say "With your bare hands? You'd have to be as crazy Humboldt thinks Wells is to even consider that."

Understand the command "poke" as something new.
Understand "poke [something]" as using.

Instead of using the coals:
	if the player has the poker:
		say "You spread the coals a bit more evenly around the grate.";
	otherwise:
		say "With your bare hands? You'd have to be as crazy Humboldt thinks Wells is to even consider that."

Instead of using the embers:
	if the player has the poker:
		say "You spread the embers a bit more evenly around the inner hearth.";
	otherwise:
		say "With your bare hands? You'd have to be as crazy Humboldt thinks Wells is to even consider that."

Instead of using the ashes:
	if the player has the poker:
		say "You spread the ashes a bit more evenly around the inner hearth.";
	otherwise:
		say "With your bare hands? You'd have to be as crazy Humboldt thinks Wells is to even consider that."

Understand the command "burn" as something new.
Understand "burn [something]" as burning.
Instead of burning something: say "That really woudn[apostrophe] accomplish anything productive."

Section 3 - Poker

The poker is a thing. [https://bit.ly/3sczKUx]
The poker is undescribed in the Parlor.
Understand "fire iron" or "fire hook" as poker.
The description of the poker is "About three feet long, pointed and hooked at one end, this weighted implement is used to stir up the coal embers to achieve even burning."

[> use poker]

Instead of using the poker:
	say "Taking the poker, you stir the coals a bit, spreading them evenly around the grate, causing a few sparks to rise up through the flue.";
	now the player is carrying the poker.

[> use poker on fire]
[Writing §12.7. New actions
 Writing §17.1. Understand]
	
[Understand "use [something] on [something]" as using.]



Chapter 5 - Garden

The Garden is a room.
The Garden is east of the Garden Door.
The description of the Garden is "Set below the level of the road and shielded from the city outside by second floor [walls] to the north and east, what Wells calls his ‘sunken urban wilderness’ is currently hidden underneath a thick blanket of undisturbed [snow] that continues to fall from the sky.

The hibernating dunes of vegetation surround you on all sides. From past visits you know which white hillock is the hollyhocks, which is the larkspurs, and which is the snapdragons, but it is much too cold now to do any additional exploration.

A [gate] set into that wall looks out onto the snow-covered [street] beyond. To the south, the dark panes of Wells' workshop [windows] stare silently down on the snow-covered [bench] nestled among some ornamental rhododendron [bushes]. The parlor doors are to the west."

Understand "parlor" or "parlor doors" or "parlor door" as Garden Door.

The garden walls are a thing.
The garden walls are scenery in the Garden.
The printed name of garden walls is "walls".

The snow is a thing.
The snow is backdrop. It is in Woking Street and the Garden.
The description of snow is "Microscopic flakes of all shapes and sizes [one of]float [or]whirl [or]drift [purely at random]down to cover the street and houses."

Instead of taking snow:
	say "You grab at a flake or two and watch it melt in your hand."

The gate is a thing.
The gate is scenery in the Garden.
The description of the gate is "The gate is locked and looks out onto a quiet side street."

Before opening the gate:
	say "The gate is locked.";
	stop the action.

The garden street is a thing.
The garden street is scenery in the Garden.
The printed name of the garden street is the "side street." 
The description of garden street is "The side street beyond the grate is quiet at this time of night."

The bench is a thing.
The bench is scenery in the Garden.
The bench is a supporter.
The bench is enterable.

The garden bushes are a thing.
The garden bushes are scenery in the Garden.
The description of garden bushes is "Covered by snow, they're not much to look at."
Understand "wilderness" or "hollyhocks" or "larkspurs" or "snapdragons" or "rhododendrons" or "tree" or "trees" or "vegetation" or "dunes" or "dune" as bushes.

Chapter 6 - Dining Room

The Dining Room is a room. 
The Dining Room is north of the Parlor.
The description of the Dining Room is "The house's centerpiece for dining and entertainment, dominated by a dark walnut [dining table] that seats eight comfortably. The table currently has four [place settings] at one end for an upcoming meal. At the other end of the table is a clockwork [orrery]. Above the table hangs an electric [chandelier], probably the first of its kind in the entire city, which fills the room and bathes the wainscotted and wallpapered [walls] in what you feel is a harsh, yellowish light.[paragraph break]To the north, to the right of the kitchen door is a [sideboard] used to hold [tableware] and place settings between meals.[if the location of Watchett is the Kitchen] Through the kitchen door you can hear faint sounds of movement and work.[end if]"

The Kitchen Door is north of the Dining Room and south of the Kitchen. 
The Kitchen Door is a door. 
The Kitchen Door is openable.
The Kitchen Door is scenery.

The dining room walls are a thing.
The dining room walls are scenery in the Dining Room.
The printed name of dining room walls is "walls".
Instead of examining the dining room walls, say "You'll have to be more specific. Are you interested in the wainscot or the wallpaper?"

The wainscot is a thing. [https://bit.ly/3qTcueh]
The wainscot is scenery in the Dining Room.
Understand "wainscotting" or "wainscott" or "wainscoting" or "wainscotted" or "wainscoted" as wainscot

The wallpaper is a thing.
The wallpaper is scenery in the Dining Room.

The dining table is a thing.
The dining table is scenery in the Dining Room.
The dining table is a supporter.

The place settings is a thing. [https://bit.ly/2P0Izmb]
The place settings is scenery on the dining table.

The sideboard is a thing.
The sideboard is scenery in the Dining Room.
[The sideboard is a supporter.]
The sideboard is a container.
The sideboard can be open or closed.
The sideboard can be openable. The sideboard is closed.

Instead of opening the sideboard: try searching the sideboard.
Instead of searching the sideboard: say "I don't think Mrs. Watchett would appreciate you rummaging around in her tableware and place settings."

The tableware is a thing. [https://bit.ly/3dBRN2q]
The tableware is scenery in the Dining Room.
Understand "dishes" or "plates" or "bowls" or "glassware" or "glass" or "glasses" as tableware.
Understand "silverware" or "knive" or "knives" or "cutlery" or "fork" or "forks" or "spoon" or "spoons" as tableware.

The chandelier is a thing.
The chandelier is scenery in the Dining Room.

Section 1 - The Orrery

The orrery is a thing. [https://bit.ly/3s8YLzS  https://www.google.com/search?tbm=isch&q=orrery&tbs=imgo:1]
The orrery is scenery on the dining table.
The orrery is a device.
The orrery is switched off.
The description of the orrery is "A heliocentric mechanical model of the eight planets in the Solar System contained in a small rectangular mahogany box with decorative inlays on short legs built by Wells. On its flat surface, tiny brass dials and rings represent the retrograde motions of the eight planets orbiting the sun, the planets themselves represented by tiny, jeweled half-spheres. Rotating pointers along the outer edge indicate seasonal and phase information as time passes.[first time] While not built to scale the entire mechanism is still a marvel of mechanical engineering and craftsmanship.[only][paragraph break]There is a switch on the long side of the box and, next to it,[if the sliding panel is closed] a small sliding panel.[otherwise] the inner mechanisms of the box are on display.[end if]" 

[^ Optional description if orrery is turned on - [if the orrery is switched on] ORRERY IS ON.[otherwise] ORRERY IS OFF. ]

Understand "planetarium" or "device" or "mechanism" or "box" or "solar system" as orrery.

[ > open orrery ]

Before opening the orrery: 
	try opening the sliding panel;
	stop the action.

[ > close orrery ]

Before closing the orrery:
	try closing the sliding panel;
	stop the action.

The sliding panel is a thing.
The description of the sliding panel is "You see nothing special about the sliding panel except the fact that it can slide."
The sliding panel is a container.
The sliding panel is closed.
The sliding panel is scenery in the Dining Room.

Understand "slide [a closed container]" as opening.
Understand "slide [an open container]" as closing.

Instead of opening the sliding panel: 
	say "You slide open the panel to reveal the inner workings of the mechanism. Among the prime gears, slotted pin follower devices, and hollow shafts and tubes you recognize a small [fuse] between the switch and the rest of the mechanism. Other than one item, it's all one big mysterious conglomeration to you[first time], probably like one of legal documents you usually write up for your clients[only]."; [TBD - Should this be conditional based on fuse location?]
	now the sliding panel is open;
	now the fuse is in the sliding panel.

Instead of closing the sliding panel: 
	say "You slide the panel shut, hiding the inner workings of the device.";
	now the sliding panel is closed;
	if the fuse is in the sliding panel in the Dining Room:
		now the fuse is nowhere.

[> flip switch]
	
An orrery's switch is a thing.
An orrery's switch is scenery in the Dining Room.
An orrery's switch is a device.
An orrery's switch is switched off.
Understand "orrery switch" as orrery's switch.
	
Instead of examining the orrery's switch:
	say "There is nothing special about the orrery's switch except the fact that it can be turned on and off."

Understand "flip [a switched off device]" as switching on.
Understand "flip [a switched on device]" as switching off.
	
Instead of switching on the orrery's switch:
	if the fuse is in the sliding panel in the Dining Room:
		if the sliding panel is open: 
			say "The gears inside begin turning slowly at various speeds as the mechanism begins calculating the positions of each planetary body, updating each planet's orbital position around the Sun on the surface display.";
		otherwise:
			say "A slight sound comes from inside the box as the planetary orbits are calculated by the mechanism inside. Imperceptabley, the planets on the surface begin their endless journey around the Sun.";
		now the orrery's switch is switched on;
		now the orrery is switched on;
	otherwise:
		say "It looks like the orrery won't function unless you put the fuse in the sliding panel.".
	
Instead of switching off the orrery's switch:
	if the sliding panel is open:
		say "The gears inside stop moving and the planet's halt in their orbits.";
	otherwise:
		say "The box is silent and the planet's stop their movements around the Sun.";
	now the orrery's switch is switched off;
	now the orrery is switched off.

Section 2 - The Fuse
	
The fuse is a thing.
The fuse is nowhere.

The description of the fuse is "[if the sliding panel is open or the player has the fuse]Almost as big as your thumb, the circular fuse is made of pasteboard with metal caps on either end.[end if][if fuse is in sliding panel] Each of the metal caps is held in a metal clip that connects it to the rest of the orrery mechanism.[end if][if humboldt-endgame-begins is true] The pasteboard cylinder between the metal caps is blackened and burned. Obviously it has shorted out and is useless.[end if]"
	
[> take fuse]
	
After taking the fuse:
	if the orrery is switched on:
		say "The minute you remove the fuse the orrery shuts off and stops its calculations.";
		now the orrery's switch is switched off;
		now the orrery is switched off;
	otherwise:
		say "Taken[paragraph break]".


Chapter 7 - Kitchen

The Kitchen is a room. 
The Kitchen is north of the Kitchen Door.

The description of the Kitchen is "With enough space for several cooks, the entire room is organized around exterior lines, dominated by a large, sturdy wooden [work table] in the center of the room. Surrounding this table are numerous free-standing [cabinets] and [shelves] for storage. The cooking [stove] and copper [sink] are against the north wall, separated by another small [work area].[if the location of Watchett is the Kitchen] Mrs. Watchett is in the midst of preparing another one those meals you enjoy so much.[otherwise] You can see the evening meal in mid-preparation but Mrs. Watchett is nowhere to be seen.[end if]"

The meals are a thing.
The meals are scenery in the Kitchen.
The description of meals is "[if the location of Watchett is the Kitchen] [Watchett] doesn't look like she needs any help right now but she might be able to answer a quesion or two.[otherwise]Best to leave that to Mrs. Watchett.[end if]"

Understand "meal" or "dinner" or "food" as meals.

The work table is a thing.
The work table is scenery in the Kitchen.
The work table is a supporter.
The description of the work table is "It has been modified extensively by Wells according to some scientific 'best practice.'[one of] He can't help himself it seems, tinkerer that he is.[or] As his atttorney, you know that some of these modifications are the genesis of several of the patents he holds.[or] Beyond that you are at a loss, both culinary and mechanical.[purely at random]"

The cabinets are a thing.
The cabinets are scenery in the Kitchen.
The cabinets are a container.
The cabinets can be open or closed.
The cabinets are openable. The cabinets are closed.
The description of the cabinets is "They have been modified extensively by Wells according to some scientific 'best practice.'[one of] He can't help himself it seems, tinkerer that he is.[or] As his atttorney, you know that some of these modifications are the genesis of several of the patents he holds.[or] Beyond that you are at a loss, both culinary and mechanical.[purely at random]"

Understand "cabinet" or "storage" or "free-standing" or "free standing" or "standing" as cabinets.

The kitchen shelves are a thing.
The kitchen shelves are scenery in the Kitchen.
The kitchen shelves are a supporter.
The description of the kitchen shelves is "They have been modified extensively by Wells according to some scientific 'best practice.'[one of] He can't help himself it seems, tinkerer that he is.[or] As his atttorney, you know that some of these modifications are the genesis of several of the patents he holds.[or] Beyond that you are at a loss, both culinary and mechanical.[purely at random]"
	
Understand "shelf" as kitchen shelves.

The stove is a thing.
The stove is scenery in the Kitchen.
The stove is a supporter.
The description of the stove is "It has been modified extensively by Wells according to some scientific 'best practice.'[one of] He can't help himself it seems, tinkerer that he is.[or] As his atttorney, you know that some of these modifications are the genesis of several of the patents he holds.[or] Beyond that you are at a loss, both culinary and mechanical.[purely at random]"

The sink is a thing.
The sink is scenery in the Kitchen.
The sink is a container.
The description of the sink is "It has been modified extensively by Wells according to some scientific 'best practice.'[one of] He can't help himself it seems, tinkerer that he is.[or] As his atttorney, you know that some of these modifications are the genesis of several of the patents he holds.[or] Beyond that you are at a loss, both culinary and mechanical.[purely at random]"

Understand "copper" as sink.

The work area is a thing.
The work area is scenery in the Kitchen.
The work area is a supporter.
The description of the work area is "It has been modified extensively by Wells according to some scientific 'best practice.'[one of] He can't help himself it seems, tinkerer that he is.[or] As his atttorney, you know that some of these modifications are the genesis of several of the patents he holds.[or] Beyond that you are at a loss, both culinary and mechanical.[purely at random]"

Section 1 - Actions In Kitchen

[See Book 2, Chapter 2, Section 3 for Using rules]

Instead of switching on the stove: try using the stove.
Instead of switching on the sink: try using the sink.
		
Instead of opening the stove: try using the stove.
Instead of opening the cabinets: try searching the cabinets.

Instead of searching the stove: say "I don't think Mrs. Watchett would appreciate you interfering with her dinner preparations." 
Instead of searching the cabinets: say "I don't think Mrs. Watchett would appreciate you rummaging around in her cabinets."
Instead of searching the kitchen shelves: say "You glance briefly at the various items on the shelves but find nothing pertinent to your investigation."


Chapter 8 - Workshop  

The workshop is a dark room. 
[The Workshop is north of the Workshop Door.] 
The description of the Workshop is "[if light switch is switched on]Twice as long as it is wide, the workshop ends thirty feet away in a several [windows] that look out over the garden. A long [workbench] runs down the entire east side of the room, covered in [tools], [papers], and [materials]. The entire west wall is covered by a large [blackboard], covered in [chalk] [equations] and [diagrams].[paragraph break]Midway down the room, closer to the west wall, is a mechanical device that resembles nothing you have ever seen before anywhere in your entire life.[otherwise]The entryway lights behind you cast a small amount of illumination into this room, revealing dark, shadowy shapes on the east and west sides of the room but not much more. You can see the dark shapes of the garden outside the windows at the far end of the room and a switch immediately to the left of the door."

The workbench is a thing.
The workbench is scenery in the Workshop.
The description of the workbench is "You see nothing special about the workbench."
Understand "bench" as workbench.

[ > search workbench ?]

Instead of searching the workbench: try examining the workshop papers.

The tools are a thing.
The tools are scenery in the Workshop.
The description of tools is "Enough equipment for any crazy experiment Wells could dream up. Hand tools of all types and various functions scattered across the workbench or hanging on the wall. What appears to be a very complicated lathe sits next to a forge for smelting metals."
	
The workshop papers are a thing.
The workshop papers are scenery in the Workshop.
The description of workshop papers is "You search through the handwritten pages scattered across the workbench and find no useful information. But you do find what appears to be a set of blueprints to the device in the center of the room, clearly marked 'Temporal Mechanism 3.'"
	
[ > search papers ?]

The materials are a thing.
The materials are scenery in the Workshop.
The description of materials is "The raw materials for Wells[apostrophe] experiments are stacked throughout the room and piled either on or under the workbench. A cursory examination reveals metal plates and rods in all shapes and sizes as well as hundreds of connectors, screws, fasteners, and wires. None of it looks like it will help you in your investigation."
Understand "battery" or "batteries" or "wires" or "connectors" or "screws" or "fasteners" or "plates" or "rods" or "alloys" or "chemicals" or "minerals" as materials.

The blackboard is a thing.
The blackboard is scenery in the Workshop.
The description of the blackboard is "Spanning the entire west wall, it is covered with equations and diagrams of increasing complexity."

The equations are a thing.
The equations are scenery in the Workshop.
The description of equations are "You honestly don't know where to start. The writing starts at the left and get increasing complex as you move to the right, but, quite frankly, it's all Greek to you (you never had much of a head for Hellenic Indo-European languages, you're a Latin man)."

The diagrams are a thing.
The diagrams are scenery in the Workshop.
The description of the diagrams are "It looks like the preliminary sketches on the blackboard are the first inklings of the mechanical device in the center of the room."
Understand "sketch" or "sketches" as diagrams.

The chalk is a thing.
The chalk is undescribed in the Workshop.
The description of the chalk is "It is white and chalky."

Instead of taking the chalk: say "You reach for a piece of chalk but realize you don't have the faintest idea what you would even write on the board. Better to investigate other areas of the workshop."

The eraser is a thing.
The eraser is scenery in the Workshop.
The description of eraser is "Rectangular and covered in chalk dust you could erase the blackboard if you dared."

Section 1 - Light Switch
		
The lights are a thing.
The lights are scenery in the Workshop.
The description of the lights is "You see nothing special about the lights except [if light switch is switched off]they are turned off (perhaps there's a switch here somewhere)[otherwise]they are turned on[end if]."

The light switch is a device.
The light switch is in the Workshop.
The light switch is switched off.

Instead of examining the light switch:
	say "A simple switch that you can flip on or off."

[Writing §3.14. Devices and descriptions, Down Below example]
Carry out switching off the light switch: now the Workshop is dark.
Carry out switching on the light switch: now the Workshop is lighted.

Understand "flip [something switched off]" as switching on.
Understand "flip [something switched on]" as switching off.

After deciding the scope of the player when the location is the Workshop:
	[place the blackboard in scope;]
	[place the workbench in scope;]
	place the light switch in scope.

[Recipes §3.7. Lighting, Hohmann Transfer example]
[Writing §18.22. Printing the description of a dark room]
Rule for printing the description of a dark room:
	if the room is the Workshop:
		say "The windows at the other end of the room provide some light but without more illumination it is impossible to clearly determine what anything is or navigate the room successfully. There is a light switch by the door."

[Writing §18.19. Printing the announcement of darkness]
Rule for printing the announcement of darkness:
	if the room is the Workshop:
		say "Without light it is impossible to navigate the room without hazard."

[Writing §18.18. Printing a refusal to act in the dark]
[Objects must be in scope for > examine [object] or > search [object] to return text below instead of "You can't see any such thing."]
Rule for printing a refusal to act in the dark:
	if the room is the Workshop:
		if we are examining something:
			if we are not examining the light switch:
				say "You will need a bit more light before you can examine the in any detail.";
			otherwise:
				say "A simple switch that you can flip on or off.";
		if we are searching something:
			if we are not searching the light switch:
				say "You could use a little more light before you can do that successfully.";
			otherwise:
				say "It is a simple on/off switch. Not much to search."
	
	
Section 2 - The Blueprints

The blueprints are a thing.
The blueprints are on the workbench.
The blueprints are undescribed.
Understand "plans" or "sheets" as blueprints.

examined-blueprints is a truth state that varies.
examined-blueprints is false.
[TBD Missing blank line after paragraph below?]
[TBD is [em] not valid for em-dashes?]
Instead of examining the blueprints:
	if the player does not have the fuse:
		say "Spreading out the individual sheets you see that these plans are a one-to-one match for Wells[apostrophe] time machine in the center of the room. While you can identify each actual assemblage to its blueprint counterpart, the names associated with them on the blueprints—plattnerite rods, chronometric dials—make no sense. In fact, the only object you can identify with any surety is the bicycle saddle in the center of the machine where the operator sits. ";
	if the player has the fuse:
		say "Spreading out the individual sheets you see the plans mirror Wells' time machine in the center of the room. While you cannot fathom the function of some of the components—chronometric dials, plattnerite rods—one item stands out, the fuse you took from the orrery.";
	now examined-blueprints is true; [see Section 2 - The Time Machine 3.1.8.2-A]
	rule succeeds. [see Section 2 - The Time Machine 3.1.8.2-B]

Section 3 - The Time Machine
	
The time machine is a thing. [The indefinite article is "the".]
The time machine is undescribed in the Workshop.
The time machine is fixed in place. [This prevents > show time machine to humboldt]
The time machine is enterable. 
The description of time machine is "Approximately the size of the hansom cab that brought you here tonight, the device must be the time machine that Wells was talking about. It can't be anything else. The interior of the time machine appears quite cramped, with space just enough for a simple bicycle saddle for the occupant to sit on and a small control panel. Surrounding this cramped interior is an assemblage of struts, wires, and crystals, who purpose you can't fathom, that forms a latticework between the occupant and the exterior environment."
Understand "mechanism" or "device" or "temporal" as time machine.

The control panel is a device.
The control panel is in the time machine.
The control panel is switched off.
The control panel is undescribed.
Understand "controls" as control panel.

The button is a thing in the time machine. [TBD Fix this button/control panel thing up]
The button is undescribed.

Instead of pushing the button: try activating the control panel.

Instead of examining the control panel:
	if the player is in the time machine:
		say "A cursory glance at the two sets of chronometric dials shows them configured for two dates, one today and one far in the future. From the status of the various lights it looks like the control panel is ready to be activated.";
	otherwise:
		say "From the outside you can see the control panel is composed of various dials, switches, lights, and a single button but you would have to be standing in the machine to examine anything in greater detail.";
	rule succeeds.

[> activate control panel
 > activate time machine]

Activating is an action applying to one touchable thing.
Understand "activate [something]" as activating.

Instead of activating the time machine:
	try activating the control panel.

Instead of activating the control panel:
	if the player is in the time machine:
		if humboldt-endgame-begins is false:
			say "Saying a brief prayer and holding your breath, you press the single lit button on the control panel.";
		otherwise:
			say "You press the button but nothing happens. Smelling someting burning you check the machine's components and find the source of the smell to be the fuse, which you remove from the machine.";
			now the player has the fuse;
	otherwise:
		say "Reaching into the time machine you press the single lit button on the control panel to see what happens. To your horror, the machine shimmers briefly and disappears from the room.";
		now the time machine is nowhere;
		now humboldt-should-return is true;
	now the control panel is switched on.

The saddle is a thing.
The saddle is in the time machine.
The saddle is undescribed.
The saddle is fixed in place.
Understand "bicycle" and "seat" as saddle.

[Two different ways to implement. See See https://bit.ly/320owaO]

[3.1.8.2-A - Using a boolean examined-blueprints to determine if blueprint has been examined.] 
[See Section 1 - Blueprints to see where boolean is set.]

[Replaced "examining" with "searching" in Instead statement]
Instead of searching [examining] the time machine:
	if the fuse is in the time machine, say "EVERYTHING LOOKS GOOD TO GO.";
	otherwise:
		if the player has the fuse:
			if examined-blueprints is true:
				say "After reviewing the blueprints, you now know exactly where the fuse needs to go in Wells' time machine.";
			otherwise:
				say "Looking at the fuse you realize that it probalbly should go somewhere in the time machine but you don't have the first clue where that would be.";
		otherwise:
			if examined-blueprints is true:
				say "According to the blueprints there's one missing component required. You can see where it should go but have no idea what it is.";
			otherwise:
				say "According to Wells[apostrophe] statements this must be his 'time machine.' You reach inside it and flip a few switches back and forth but nothing happens. Right now you have no clue about how to activate it or what the next steps might be.".

Instead of opening the time machine: say "The time machine is alread 'open.' All you have to do is get inside if you desire."

[Writing §9.13. The past and perfect tenses]

[3.1.8.2-B - Using whether or not an object has been examined instead of setting a boolean value true or false.]
[See Section 1 - Blueprints to see where the blueprint examining is handled.]			
Instead of inserting the fuse into the time machine:
	if the player has the fuse:
		if examined-blueprints is true:
			say "You snap the fuse into its appointed slot. With an imperceptible hum, the time machine powers up. Lights appear on the control panel, probably indicating that it is ready to activate.";
			now the fuse is in the time machine;
		otherwise:
			say "Despite your best efforts you don't know where the fuse belongs.";
	
Section 4 - Workshop Windows
	
The windows are a thing.
The windows are a backdrop. They are in the Workshop and the Garden.
Understand "workshop windows" or "window" as windows.

The description of the windows is "[if the player is in the Garden and the light switch is switched off]Above the bench you can see the darkened workshop windows.[else if the player is in the Garden and the light switch is switched on]Above you the lit windows of the workshop cast a warm light over the snow-covered garden.[else if the player is in the Workshop and the light switch is switched off]The windows look down into the snow-covered garden below.[else if the player is in the workshop and the light switch is switched on]The warm glow from the lights illuminates the snow-covered garden below."

The windows can be open or closed.
The windows can be openable. The windows are openable.

Instead of opening the windows:
	if the player is in the Garden:
		say "It looks like the windows can only be opened from inside the workshop.";
	otherwise:
		say "Opening the windows lets in the cold and snow so you decide to leave them shut for now."

[> look through windows 
 > look in windows]

Instead of searching the windows: [Recipe §3.6 Windows]
	if light switch is switched on:
		if the player is in the Garden:
			say "Climbing onto the bench, you peer through the glass into the workshop. Twice as long as it is wide, it ends thirty feet away in a locked door. A long workbench runs down the east side of the room, a large blackboard covers the entire west wall, and a strange mechanical device is in the center of the room, which must be Wells[apostrophe] time machine.";
			move the player to the bench, without printing a room description;
		else if the player is in the Workshop:
			say "The workshop lights cast a warm glow onto the snow-covered garden outside.";
		else if the player is on the bench:
			say "Nothing has changed. The workbench, blackboard, and time machine are still where they were when you last looked.";
	else if light switch is switched off:
		if the player is in the Garden:
			say "Climbing onto the bench, you peer through the glass into the darkened workshop.";
			move the player to the bench, without printing a room description;
		else if the player is in the Workshop:
			say "Through the windows you can see down into the snow-covered garden outside.";
		else if the player is on the bench:
			say "Nothing has changed. You still can't see anything inside the darkened workshop."

				
Part 2 - Characters

A person can be either fixed or mobile. 

Chapter 1 - Watchett

Watchett is a person. 
Watchett is a female. 
Watchett is fixed.
Watchett is in the Kitchen.
The description of Watchett is "Wells[apostrophe] steadfast aged housekeeper, she has been managing his household affairs and cooking his meals for years. If you could steal here away from Wells you would in a heartbeat, but she would never leave him in a million years."

The printed name of Watchett is "Mrs. Watchett". 

Understand "mrs" or "watchett" or "watchet" or "cook" or "maid" or "housekeeper" or "old lady" as Watchett.
[See §17.3. Overriding existing commands - New tokens for ^]

Section 1 - Conversation

Instead of telling watchett about something: [Writing §7.6. Reading and talking]
	try asking watchett about it.


Instead of asking Watchett about "wells": say "Always working too hard on his experiments, he is. I'm sure the doctor will make everything right."
Instead of asking Watchett about "experiments": say "I wouldn't know anything about. Anything like that is in the professor[apostrophe]s workshop."
Instead of asking Watchett about "workshop door": say "Locked. Always locked. Only Mr. Wells has the key."
Instead of asking Watchett about "front door": say "Much too cold to be outside the way you're dressed. Best you warm up by the fire first."
[DEL - Modify or remove?]
Instead of asking Watchett about "door": say "A puzzled look on her face, Mrs. Watchett looks at both the front door and the workshop door, trying to understand which door you're asking about."

[See Writing §11.5. Conditions and question ]
watchett-key is a truth state that varies.
watchett-key is false.

Instead of asking Watchett about "key": 
	say "'Mr. Wells always kept it on his person. That's where it still must be.'";
	now watchett-key is true.

Section 2 - Movement

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



Chapter 2 - Humboldt 

Humboldt is a person.
Humboldt is a male.
Humboldt is fixed.
Humboldt is in Woking Street.
The description of Humboldt is "A reputable physician and alienist, he has also known Wells for years. You are confident that his methodical nature, combined with his diagnostic skills, will enable him to determine what ails your friend."

The printed name of Humboldt is "Dr. Humboldt"

Understand "doctor" or "physician" or "dr" or "psychologist" or "alienist" or "dr humboldt" as Humboldt.

humboldt-should-return is a truth state that varies.
humboldt-should-return is false.

humboldt-endgame-begins is a truth state that varies.
humboldt-endgame-begins is false.

Section 1 - Conversation

[Instead of telling someone about something, try asking someone about it.] 
[According to the compiler, "asking someone about it" is too vague to describe a specific action]

Instead of telling Humboldt about something: [Writing §7.6. Reading and talking]
	try asking humboldt about it.
	
Instead of asking Humboldt about "wells/madman/patient/lunatic": 
	if humboldt-endgame-begins is false:
		say "'I don't know enough to make a proper diagnosis right now. I'll know more after we get him to the hospital, calm him down, and do a proper examination.'";
	otherwise:
		say "'He's sedated and resting."

Instead of asking Humboldt about "diagnosis": 
	if humboldt-endgame-begins is false:
		say "'Too early to tell.'";
	otherwise:
		say "Unless you found some new evidence it doesn't look good for Wells. He still believes he travelled to the year 802701."

Instead of asking Humboldt about "examination": 
	if humboldt-endgame-begins is false:
		say "'First thing to do is get him to my hospital. Get him admitted and sedated. Probably won't be able to do a proper examination until he's calmed down.'";
	otherwise:
		say "'The preliminaries are already completed. I'll write my summary after you tell me what you found here."

Instead of asking Humboldt about "workshop/shop": 
	if humboldt-endgame-begins is false:
		say "'Never seen the inside of it. I don't think anyone has. Best to ask Mrs. Watchett. She might have a key.'";
	otherwise:
		say "Humboldt looks around the workshop, poking into odd corners. He examines [one of]some machinery[or]some tools[or]the blackboard equations[or]the blackboard diagrams[or]some papers on the workbench[at random]. '[one of]Interesting[or]Fascinating[or]Hmm[or]That's odd[at random]' is his only comment."

Instead of asking Humboldt about "time machine": 
	if humboldt-endgame-begins is false:
		say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'";
	otherwise:
		say "'Outside my area of expertise, I'm afraid.'"

Instead of showing the time machine to Humboldt: [This doesn't work because the time machine is fixed in place]
	say "SHOW HUMBOLDT TIME MACHINE."

Instead of showing the petal to Humboldt:
	say "'You were supposed to find the rest of it so we could convince Wells that his story was nonsense, a figment of his imagination. Did you find it?'"
	
Instead of showing the key to Humboldt:
	say "'[one of]I knew you would find it. [or]Mrs. Watchett knew where it was, I bet. [or]Good job. [at random]What have you found?'"

Instead of showing the blueprints to Humboldt:
	say "Humboldt takes the blueprints and walks over to the time machine. Shuffling the pages he manages to tie each blueprint diagram with its conterpart on the physical machine. After satisfying himself he returns the blueprints to you. 'Impressive workmanship. But there's no proof that it does what Wells says it does,' he says."

Instead of showing the fuse to Humboldt:
	say "Humbold briefly examines the fuse, turning it over in his hands, before returning it to you."
		
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
After asking Humboldt about a topic listed in Table of Humboldt Endgame Responses, say "[reply entry]"

[16.13 - Topic columns]
Table of Humboldt Endgame Responses
topic	reply
"petal"	"'I gave that to you earlier.'"
"key"	"'Obviously it's the workshop key since we're standing in the bloody place.'"
"blueprints"	"'Your guess is as good as mine.'"
"fuse"	"'Looks like it fits into that contraption Wells has constructed.'"
"weena"	"Figment of Wells[apostrophe] imagination I assume."
"eloi"	"Figment of Wells[apostrophe] imagination I assume."
"morlocks"	"Figment of Wells[apostrophe] imagination I assume."
"time travel"	"Science fiction if you ask me."

After telling Humboldt about "petal":
	say "'I know all that. But did you find the rest of the flower?'"

After telling Humboldt about "time machine":
	say "'I'd like to believe that it does what you say it does but we've no proof.'"

After telling Humboldt about "workshop":
	say "Humboldt listens dispassionately as you enthusiastically point out various areas of the workshop, a nonplussed look on his face."

After telling Humboldt about "fuse":
	say "Humboldt nods slightly as you explain how the fuse is necessary for the time machine[apostrophe]s operation."

[This rule triggers a successful endgame]
After telling Humboldt about "flower":
	now endgame-success is true.

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

Section 2 - Patience

[Writing §4.9. Using new kinds of value in properties]
patience is a kind of a value.
The patiences are accepting, tolerant, impatient, frustrated, angry. 
	
Humboldt has patience. Humboldt is accepting.

Chapter 3 - Orderlies

The orderlies are people in Woking Street.
The orderlies are undescribed.
Understand "attendant" as orderlies.
	
Instead of examining the orderlies: say "They're out of sight, inside the ambulence with Wells but, from what you remember, the two men were entirely professional, stronger than they looked, and had no trouble getting Wells into the ambulence against his will."

Instead of taking the orderlies: say "Given the ease with which they got Wells into the ambulence against his will, you chance of overpowering even one of them against his will is slight. Best stick to the intellectual pursuits you're known for."

Chapter 4 - Wells

Wells is a person in Woking Street.
Wells is undescribed.

Instead of examining Wells: say "Your last glimpse of your friend was so unlike his usual composed and methodical self that it was like seeing another person entirely. You want to believe his story but without proof or witnesses you don't know what to think."

Section 1 - Rescuing

Understand "save [someone]" as rescuing.

Rescuing is an action applying to one visible thing.
Understand "rescue [someone]" as rescuing.

Instead of rescuing Wells: try entering ambulence.
Instead of rescuing someone: say "It does not look like [the noun] is in need of any rescuing. But the thought is nice."


Chapter 5 - Gernsback 
[https://bit.ly/3rYUPl8]

[Gernsback is a person.
Gernsback is a male.
Gernsback is fixed.
Gernsback is in the Entryway.]

[The printed name of Gernsback is "TBD."]

Book 4 - Traveling In Time

Part 1 - Travel To 802,701

Travel To 802,701 is a scene.

Travel To 802,701 begins when the time machine is in the Workshop and player is in the time machine and the control panel is switched on.

When Travel To 802,701 begins:
	[say "TRAVELING TO 802,701 BEGINS.";]
	say "The workshop goes hazy and dark. Mrs. Watchett comes in, followed by Dr. Humboldt. They talk briefly and then walk towards the workshop windows. While it normally takes a minute to traverse the room, they both shoot across the space like rockets, talk briefly again while looking out at the garden and then, just as quickly, leave the same way they came at the same speed, turning off the lights and shutting the door, leaving you in darkness.[paragraph break]Night becomes day like turning on a lamp. The workshop becomes faint and hazy, then fainter and ever fainter. Tomorrow night comes black, then day again, night again, day again, faster and faster still as the machine picks up speed. An eddying murmur fills your ears and a strange, dumb confusedness descends on your mind.[paragraph break]The peculiar sensations of time traveling fade into the background as you hurtle headlong into the future. The dim suggestion of the workshop, the entire house, the entire neighborhood falls away. The sun hops swiftly across the sky, leaping it every minute, with every minute marking a day. The moon spins swiftly through her quarters from new to full, surrounded by faint glimpses of circling stars. Eventually, the night and day merge into one continuous greyness and the sky takes on a wonderful deepness of twilight blue split by a brilliant arch that is the sun.[paragraph break]After an indeterminate amount of time, as the dials approach your ultimate destination, the machine shifts gears somewhere in its interior and your progress begins to slow gradually and the landscape, first misty and vague, begins reappearing. You're on a hillside, trees growing and changing like puffs of vapor, now brown, now green; they grow, spread, shiver, and pass away. Huge buildings rise up faint and fair and then pass like dreams. The whole surface of the earth seems to change as it melts and flows under your eyes. The white snows of winter flash across the world to be followed by a bright, brief green of spring.  Great architectures shimmer in the distance. Eventually even the winter disappears, replaced by what appears to be an eternal spring as the machine slows even more. 'The earth seems very fair' is the first conscious thought that you remember thinking as the machine slows down further and comes to a stop.[paragraph break]You have arrived.";
	now the current-year is "802,701";
	now the time machine is in the Clearing;
	now the time machine is described;
	now the control panel is switched off.

Travel To 802,701 ends when the time machine is in the Clearing.

[When Travel To 802,701 ends:
	say "TRAVELING TO 802,701 ENDS."]

[ From H.G.Wells' "The Time Machine"
 “I drew a breath, set my teeth, gripped the starting lever with both hands, and went off with a thud. The laboratory got hazy and went dark. Mrs. Watchett came in and walked, apparently without seeing me, towards the garden door. I suppose it took her a minute or so to traverse the place, but to me she seemed to shoot across the room like a rocket. I pressed the lever over to its extreme position. The night came like the turning out of a lamp, and in another moment came tomorrow. The laboratory grew faint and hazy, then fainter and ever fainter. Tomorrow night came black, then day again, night again, day again, faster and faster still. An eddying murmur filled my ears, and a strange, dumb confusedness descended on my mind.

“I am afraid I cannot convey the peculiar sensations of time travelling. They are excessively unpleasant. There is a feeling exactly like that one has upon a switchback—of a helpless headlong motion! I felt the same horrible anticipation, too, of an imminent smash. As I put on pace, night followed day like the flapping of a black wing. The dim suggestion of the laboratory seemed presently to fall away from me, and I saw the sun hopping swiftly across the sky, leaping it every minute, and every minute marking a day. I supposed the laboratory had been destroyed and I had come into the open air. I had a dim impression of scaffolding, but I was already going too fast to be conscious of any moving things. The slowest snail that ever crawled dashed by too fast for me. The twinkling succession of darkness and light was excessively painful to the eye. Then, in the intermittent darknesses, I saw the moon spinning swiftly through her quarters from new to full, and had a faint glimpse of the circling stars. Presently, as I went on, still gaining velocity, the palpitation of night and day merged into one continuous greyness; the sky took on a wonderful deepness of blue, a splendid luminous colour like that of early twilight; the jerking sun became a streak of fire, a brilliant arch, in space; the moon a fainter fluctuating band; and I could see nothing of the stars, save now and then a brighter circle flickering in the blue.

“The landscape was misty and vague. I was still on the hillside upon which this house now stands, and the shoulder rose above me grey and dim. I saw trees growing and changing like puffs of vapour, now brown, now green; they grew, spread, shivered, and passed away. I saw huge buildings rise up faint and fair, and pass like dreams. The whole surface of the earth seemed changed—melting and flowing under my eyes. The little hands upon the dials that registered my speed raced round faster and faster. Presently I noted that the sun belt swayed up and down, from solstice to solstice, in a minute or less, and that consequently my pace was over a year a minute; and minute by minute the white snow flashed across the world, and vanished, and was followed by the bright, brief green of spring.

“The unpleasant sensations of the start were less poignant now. They merged at last into a kind of hysterical exhilaration. I remarked, indeed, a clumsy swaying of the machine, for which I was unable to account. But my mind was too confused to attend to it, so with a kind of madness growing upon me, I flung myself into futurity. At first I scarce thought of stopping, scarce thought of anything but these new sensations. But presently a fresh series of impressions grew up in my mind—a certain curiosity and therewith a certain dread—until at last they took complete possession of me. What strange developments of humanity, what wonderful advances upon our rudimentary civilisation, I thought, might not appear when I came to look nearly into the dim elusive world that raced and fluctuated before my eyes! I saw great and splendid architecture rising about me, more massive than any buildings of our own time, and yet, as it seemed, built of glimmer and mist. I saw a richer green flow up the hillside, and remain there, without any wintry intermission. Even through the veil of my confusion the earth seemed very fair. And so my mind came round to the business of stopping.

“The peculiar risk lay in the possibility of my finding some substance in the space which I, or the machine, occupied. So long as I travelled at a high velocity through time, this scarcely mattered: I was, so to speak, attenuated—was slipping like a vapour through the interstices of intervening substances! But to come to a stop involved the jamming of myself, molecule by molecule, into whatever lay in my way; meant bringing my atoms into such intimate contact with those of the obstacle that a profound chemical reaction—possibly a far-reaching explosion—would result, and blow myself and my apparatus out of all possible dimensions—into the Unknown. This possibility had occurred to me again and again while I was making the machine; but then I had cheerfully accepted it as an unavoidable risk—one of the risks a man has got to take! Now the risk was inevitable, I no longer saw it in the same cheerful light. The fact is that, insensibly, the absolute strangeness of everything, the sickly jarring and swaying of the machine, above all, the feeling of prolonged falling, had absolutely upset my nerves. I told myself that I could never stop, and with a gust of petulance I resolved to stop forthwith. Like an impatient fool, I lugged over the lever, and incontinently the thing went reeling over, and I was flung headlong through the air. 
]



Part 2 - Travel To 1895

Travel To 1895 is a scene.

Travel To 1895 begins when the time machine is in the Clearing and the player is in the time machine and the control panel is switched on.

When Travel To 1895 begins:
	[say "TRAVEL TO 1895 BEGINS.";]
	say "The clearing becomes hazy and dark and the rapidly alternating cycle of night and day becomes a continuous greyness as the machine hurtles back in time. The murmur in your ears and the confusedness in your mind are not as bad as the last time. The dials spin backwards, years melting away in seconds as the machine's operation reaches a crescendo and slows down as you approach your starting point.[paragraph break]You are back.";
	now the current-year is "1895";
	now the time machine is in the Workshop;
	now the control panel is switched off.

Travel To 1895 ends when the time machine is in the Workshop.

[When Travel To 1895 ends:
	say "TRAVEL TO 1895 ENDS.";]	




Book 5 - 802,701

Part 1 - Settings

Chapter 1 - Clearing

[TBD Substituting different article in clearing description first time or when player in time machine - The time machine has 'arrived' in a/A mid-sized, man-made clearing... or rewrite description ]

can-go-clearing-to-river is a truth state that varies.
can-go-clearing-to-river is false.

Every turn: 
	if the player is in the Sphinx Steps, now can-go-clearing-to-river is true;
	if the player is in the Balcony, now can-go-clearing-to-river is true.

The Clearing is a room. 
The description of the Clearing is "A mid-sized, man-made clearing surrounded by overgrown rhododendrum [bushes]. Paths lead off in all directions but you are not sure where they end up. In the distance, almost totally obscured by the [treetops], is a large white domed structure to the east. A set of stone steps in the tangled [undergrowth] to the north lead up.[paragraph break]In the exact center of the clearing is a [circular shaft] set into the earth, projecting about three feet above the ground."

Inside from the Clearing is Top Shaft.

The clearing bushes are a thing.
The clearing bushes are scenery in the Clearing.
The description of clearing bushes is "A tangle of bushes on all sides almost obscures the paths leading off in all directions."
The printed name of clearing bushes is "bushes".

The treetops are a thing.
The treetops are backdrop. They are in the Clearing and the Sphinx Steps and the Balcony.
Understand "forest" and "trees" as treetops.
The description of treetops is "Above your head the leafy canopy of deciduous and evergreen trees filters the midday sunlight."

The undergrowth is a thing.
The undergrowth is scenery in the Clearing.
The description of undergrowth is "Along with the ungroomed bushes, the tangle of undergrowth helps obscure the few paths you can see."

The circular shaft is a thing.
The circular shaft is scenery in the Clearing.
The circular shaft is a supporter.
Instead of examining the circular shaft: say "About three feet in diameter, the circular shaft appears to be made of concrete. [if metal grate is on circular shaft]On the shaft a circular grate rests on the top, flush with the surface. Through the grate you can see the rungs of a ladder going down into darkness.[otherwise]Through the open shaft you can see the rungs of a ladder going down into darkness.[end if]"

The metal grate is a thing.
The metal grate is portable.
The metal grate is on the circular shaft.
The metal grate is a supporter.
The metal grate is undescribed.
The description of the metal grate is "About three feet in diameter, the grate is made of wide slats of rusted metal welded together in a waffle pattern. Despite the rust, it looks extremely sturdy and heavy."

[ > Remove grate ]

Understand the command "remove" as something new.
Understand the command "remove" as "take".

Instead of taking the metal grate:
	if the metal grate is on the circular shaft in the Clearing:
		say "Interlacing your fingers into the grate openings and bracing yourself against the side of the concrete shaft, you manage to slowly leverage it up and out of its resting position. Carefully you work it off the top of the shaft and manage to drop it with a thud onto the ground without smashing your toes or scuffing your Northampton Barkers. Blazes, that was heavy.";
		move the metal grate to the Clearing;
		now the metal grate is described;
	otherwise:
		say "No way, it is way too bloody heavy to try and move again."

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
		say "You attempt to find a way out of the clearing by going [noun] but one false path after another leads you right back to where you started.".		
						
Before going southeast in the Clearing:
	if the player is in the time machine:
		say "You would have to get out of the time machine first.";
		stop the action;
	otherwise:
		if can-go-clearing-to-river is false:
			say "You attempt to find a way out of the clearing by going [noun] but one false path after another leads you right back to where you started.";
			stop the action;
		otherwise:
			continue the action.
	

Chapter 2 - Sphinx Steps

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

The pedestal is a thing.
The pedestal is scenery in the Sphinx Steps.
The description of the pedestal is "Made of bronze and thick with verdigris, it is the columnar base that supports the statue above."

The statue is a thing.
The statue is scenery in the Sphinx Steps.
The description of the statue is "A gigantic reclining sphinx made of white marble. Its weather-worn surface carries the unpleasant suggestion of disease and its sightless eyes seem to watch everything. The wings, instead of being carried vertically at the sides spread out so the entire figure seems to hover. You are not sure, but you think you can see the faint shadow of a smile on the lips. It is inhuman, unsympathetic, and overwhelmingly powerful."
Understand "sphinx" or "carved figure" or "face" or "wings" as the sphinx.


Chapter 3 - Top Shaft

The Top Shaft is a room.
Down from Top Shaft is the Bottom Shaft.
The description of Top Shaft is "You're perched at the the top of the shaft on the ladder leading down. Exiting the shaft will put you back in the Clearing. The faint sound of rhythmic machinery rises from the darkness below."

The printed name of Top Shaft is "Top of the Shaft"

[This doesn't work, probably because there is no "shaft" thing like there is in the Clearing.]
[Climbing out is an action applying to one thing.
Understand "climb out [room]" as climbing out.
Understand "climb out of [room]" as climbing out.
Instead of climbing out: try exiting.]

Instead of exiting in the Top Shaft: 
	say "You carefully climb out of the shaft.";
	now the player is in the Clearing.
	
The ladder is a thing.
The ladder is a backdrop. It is in the Top Shaft and Bottom Shaft.
The description of the ladder is "Sunk into the side of the shaft, the series of rusting iron bars lead down into the darkness."

Chapter 4 - Bottom Shaft

The Bottom Shaft is a room.
Up from the Bottom Shaft is the Top Shaft.
The description of Bottom Shaft is "A small amount of light from above filters down, allowing you to see tunnels sloping down in every direction." 
[The sound of machinery is louder now and seems to come from everywhere."]

The printed name of Bottom Shaft is "Bottom of the Shaft"

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

Chapter 5 - Domed Building

The Domed Building is a room.
The Domed Building is east of the Clearing.
The Domed Building is west of the Inside Dome.
Inside from the Domed Building is Inside Dome.

Understand "concrete" or "pantheon" or "columned" or "columns" or "portico" or "entrance" as Domed Building.

The description of the Domed Building is "Before you is a weathered concrete building built along the lines of the Pantheon in Rome. A columned portico to the east provides entrance to the inside of the domed building behind it."

[Pantheon - https://bit.ly/3bQq6jS (wikipedia)  https://bit.ly/2NLr9tv (google images) https://bit.ly/37WsJP Z https://bit.ly/3q3aAq6]

Chapter 6 - Inside Dome

The Inside Dome is a room.
The Inside Dome is north of the Balcony.
Understand "dome" as Inside Dome.

The description of Inside Dome is "Sunlight streams through the dome's [oculus], illuminating the room below. Low stone [tables] are arranged symmetrically throughout the room, surrounding a central [well] underneath the dome's apex. Mosaic [murals] cover the walls. Sunlight streams through an archway to the south and the exit of the building is to the west."
	
The printed name of Inside Dome is "Inside the Domed Building"

The oculus is a thing.
The oculus is scenery in the Inside Dome.
The description of oculus is "A circular opening at the apex of the dome, it allows sunlight and rain to enter. From this distance it looks small but given the size of the dome it is probably thirty or forty feet in diameter."
Understand "apex" as oculus.

The tables are a thing.
The tables are scenery in the Inside Dome.
The description of the tables are "The low-slung metal tables are arranged in a circular pattern around the well, designed for kneeling or sitting. It looks like each circular table can seat eight or twelve people. A slight circular depression in the center of each table about four feet in diameter looks like it serves as a container for something."
Understand "circular" or "container" or "depression" as tables.

The well is a thing.
The well is scenery in the Inside Dome.

The description of the well is "Mirroring the oculus diameter, this circular pool of water ripples, reflecting a slightly distorted image of the room around you."

The water is a thing.
The water is scenery in the Inside Dome.
The water is edible.
The description of the water is "The water seems fresh, replenished and circulated by some unseen mechanism far below. [first time] (Undoubtably, Wells would be able to elucidate the engineering behind such a feat but you can only wonder at its execution.)[only]."

Before taking the water:
	try eating the water;
	stop the action.

Instead of eating the water:
	say "You cup some water in your hands for a quick drink.";
	stop the action.

[Writing §10.2. Liquids]
Instead of drinking the water, say "You cup some water in your hand and take a quick drink."

The murals are a thing.
The murals are scenery in the Inside Dome.
The description of the murals are "Circling the entire dome wall except for the entrances and exits, the pictorial cyclorama displays a day-to-night series of idealized pastoral scenes of a leisurely life. In the various [mosaics], tunicked figures gather fruit, bathe in the river, pick flowers, wander the countryside, and eat, dance, and play in the sunlight. In the dusk scenes you can make out shadowy figures in the background spying on the childish figures in the foreground, hidden in the undergrowth and shadow. Each mural has a title, written in a strange Arabic script that you cannot decipher."
Understand "cyclorama" or "mural" as murals.
	
[Instead of reading the murals: say "You don't understand the writing."]
Before taking the murals:
	say "While you have a basic understanding of Latin required for your legal work, the linguistic skills required to decypher the words associated with each mural is quite beyond you.";
	[say "Foreign languages beyond Latin were never your specialty.";]
	stop the action.

The mosaics are a thing.
The mosaics are scenery in the Inside Dome.
The description of the mosaics are "On closer examination it appears that each mural is made up of thousands of small colored pieces of square stone, tile, and glass. However, gaps in sections where the pieces have fallen out show that the original work has not been maintained as it should have been by future generations."
Understand "mosaic" or "square" or "stone" or "tile" or "glass" or "colored pieces" or "pieces" as mosaics.

Chapter 7 - Balcony

The Balcony is a room.
The Balcony is south of Inside Dome.
The description of the Balcony is "A small concrete balcony looks down on the treetops below. In the distance, through a break in the foliage, you can see a river to the south and a path winding its way southeast from the clearing where you arrived to the river. To the northwest you can see the head and wings of [if sphinx steps is visited]the[otherwise]a[end if] sphinx poking through the treetops."

Chapter 8 - River

The River is a room.
The River is southeast of the Clearing.
The description of the River is "[first time]The path southeast winds its way left and right through dense undergrowth. Finally you pull yourself free from the tangled underbrush into the northwest bank of a sizeable river.[paragraph break][only]The river curves its way from the northeast to the southwest, bisected in its journey by a twelve-foot high stone dam upstream. The water gushes through a open sluice gate next to what looks like a ruined paddle wheel, crashing down to the river below. Moving rapidly away from the dam, the water loses speed until it flows sluggishly to where you stand on the northwest bank, the path back to the clearing behind you."

Part 2 - Characters

Chapter 1 - Eloi

The Eloi are people. The indefinite article is "the".
The Eloi are in the River.
The Eloi are fixed.
The description of the Eloi is "Just as Wells described them, the Eloi are short, about four feet high, slight, and dressed in tunics belted at the waist and wearing buskins on their feet. The similarity of their features and builds makes it hard to determine individual gender but with some effort you can tell the men from the women. Actually, boys from girls would be better terms to use given their apparent stature, age, and demeanor. 

The Eloi have spread themselves all along this side of the river and are involved in a variety of activities. Some are swimming in the shallows, others are playing on the banks or gathering flowers or fruit.  You can even see, to your horror, a few couples of both genders in the bushes involved in prurient matters."

["As you move among them, your clothes and your height bring attention to yourself..."]

[
The Eloi notice you standing there in your drag nineteenth century clothing. In small groups they approach and circle you, cooing softly in their singsong language that Wells described earlier. They're don't appear afraid, merely curious, 
]

Instead of asking the Eloi about something:
	say "Try as you might you can't make the Eloi understand what you are asking about. Some of them laugh at your strange pronunciations while others coo and chatter among themselves quietly. Others become bored and drift off into other pursuits while still others walk over to see the new oddity." 
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

Chapter 2 - Weena

Weena is a person.
Weena is nowhere.
Weena is fixed.
The description of Weena is "Slightly taller than the other Eloi but dressed as they are and with the same similarity of features and build, this is clearly the girl Wells described."

Section 1 - Flower

The flower is a thing.
The flower is nowhere.
The description of the flower is "Unlike any vegetation you've ever seen, the petal that Humboldt gave you matches those on this flower's blossom exactly. If this won't convince the doctor of Wells[apostrophe] sanity then nothing will."

Section 2 - Introduction Of Weena

Introduction Of Weena is a scene.

Introduction Of Weena begins when the Eloi is carrying the pocket watch. [or the player gives the Eloi the pocket watch.]

When Introduction Of Weena begins:
	[say "INTRODUCTION TO WEENA BEGINS.";]
	say "Suddenly a young girl appears, differing from the other Eloi in demeanor. She seems older though she looks to be the same age as the others and carries herself with a bit more bearing. This must be Wells[apostrophe] Weena.[paragraph break]She gently takes the pocket watch from the Eloi who has it and turns it over slowly in her hands, remembering.";
	now Weena is in the River;
	now Weena is carrying the pocket watch;
	now the pocket watch is open.

Introduction Of Weena ends when Weena has the pocket watch.

[When Introduction Of Weena ends:
	say "INTRODUCTION TO WEENA ENDS."]

Section 3 - Weena Gives You Flower

Weena Gives You Flower is a scene.

Weena Gives You Flower begins when the pocket watch is open.

When Weena Gives You Flower begins:
	[say "WEENA GIVES YOU FLOWER BEGINS.";]
	say "Suddenly, Weena presses the watch's fob and the cover springs open, revealing the hands within. She stares at the second hand making its way around the dial and taps at the crystal with her finger. Looking up, she smiles. She remembers.[paragraph break]Snapping the watch shut she hands it back to you and nods her head."; 
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

Instead of showing the petal to Weena:
	say "Weena looks at the petal in your hand and, reaching up into her hair, she remove a single flower and hands it to you before running off. The rest of the Eloi follow her and soon you are alone by the river.";
	now the player is carrying the flower;
	now the Eloi are nowhere;
	now Weena is nowhere.

Weena Gives You Flower ends when the player has the flower.

[When Weena Gives You Flower ends:
	say "WEENA GIVES YOU FLOWER ENDS."]

Book 6 - Ending The Story

Chapter 1 - Morlock Endgame

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
					say "You start down the [noun] tunnel without a light or a map towards the sound of the nearest machinery. Suddenly, without warning, multiple pairs of brutish hands reach out of the darkness and grab at you. You fight back valiently but without a weapon you are quickly overwhelmed by the negroid shadows and knocked unconscious.[paragraph break]Later, you regain consciousness in the freezing cold. Shivering, you look around in horror at the naked bodies of Eloi, male and female, suspended on meat hooks, future Morlock meals. As you succumb to the numbing cold your multiple failures, both here in 802,701 and back in 1895, drives you to madness.";
					end the story finally;
				now encounter-morlocks is true;
		otherwise:
			say "You start down the [noun] tunnel but without a light or a map you wander unsuccessfully in the darkness, eventually returning to where you started. Maybe you'll have better luck in another direction.".

Chapter 2 - Humboldt's Return

Humboldt's Return is a scene.

Humboldt's Return begins when humboldt-should-return is true.

When Humboldt's Return begins:
	[say "HUMBOLDT'S RETURN BEGINS.";]
	say "The door to the workshop opens and Mrs. Watchett enters followed by Dr. Humboldt. The doctor appears both relieved and annoyed at the same time. 'Where the bloody hell have you been hiding? Mrs. Watchett and I have been through the entire house looking for you. We were afraid something had happened.' His attention is drawn to the time machine behind you. 'Hmm. That must be the contraption Wells was going on about.'";
	now Humboldt is in the Workshop;
	now Humboldt is mobile;
	now Watchett is in the Workshop;
	now Watchett is mobile.

Humboldt's Return ends when Humboldt is in the Workshop.

When Humboldt's Return ends:
	[say "HUMBOLDT APPEARS IN THE WORKSHOP.";]
	now humboldt-endgame-begins is true;
	[say "HUMBOLDT'S RETURN ENDS."]

Chapter 3 - Humbolt Endgame

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

The block giving rule is not listed in the check giving it to rules. [Recipes §7.4. Barter and Exchange]
After giving the flower to Humboldt:
	now endgame-success is true.

Humboldt Endgame ends when endgame-success is true or endgame-failure is true.

When Humboldt Endgame ends:
	[say "HUMBOLDT ENDGAME ENDS."]
	if endgame-success is true:
		[say "SUCCESS. HUMBOLDT REALIZES THAT WELLS IS NOT INSANE.";]
		say "Humboldt studies the flower in amazement. 'I'm just an amateur botanist but this morphology is unique,' he says. 'There must be some truth to Wells[apostrophe] story. You recount your adventures in the future and take the doctor for a brief journey to the year 802,701 before the both of you go to the hospital to free Wells.";
	if endgame-failure is true:
		[say "FAILURE. YOU ARE DRAGGED OFF TO THE ASYLUM."]
		say "At the end of his patience, Humboldt realizes you have become just as delusional as Wells. Leaving the room abruptly, he returns with his two attendants. Quickly, they manhandle you into the ambulence outside and cart you off to the hospital to share a ward with Wells.";
	end the story finally.
	



Book 7 - Help

Table of Basic Help Options (continued)
title		subtable		description
"Contact the author"		--		"If you have any difficulties with [story title], please contact me at..."
"Hints"		Table of Hints		--
"Settings"		Table of Setting Options		--

Table of Hints
title		subtable		description		toggle
"Key Hints"		Table of Key Hints		""		hint toggle rule
"Workshop Hints"		Table of Workshop Hints		""		hint toggle rule
"Time Machine Hints"		Table of Time Machine Hints		""		hint toggle rule

Table of Key Hints
hint		used
"key-hint-1"		a number
"key-hint-2"		
"key-hint-3"		

Table of Workshop Hints
hint		used
"workshop-hint-1"		a number
"workshop-hint-2"		
"workshop-hint-3"		

Table of Time Machine Hints
hint		used
"time-machine-hint-1"		a number
"time-machine-hint-2"		
"time-machine-hint-3"		




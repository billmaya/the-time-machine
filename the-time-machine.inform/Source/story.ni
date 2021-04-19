"The Time Machine" by Billy Tenenbaum

[WORDS - 16470 ] 

Book 1 - Beginning The Story

The player is in Woking Street.
The description of the player is ""

When play begins: say "'Let me go!'

Wells struggles against the two burly orderlies who try and drag him into the horse-drawn ambulence parked in the street. With a strength born of desperation he breaks free and crashes into you, almost dragging both of you to the ground. 

'Save her,' he says, his voice hoarse, his eyes pleading. 'Save Weena for me. You're my only hope.'

Dr. Humboldt intervenes, placing himself between you and Wells. 'There, there Wells. Of course we'll help this 'Wanna.' But first you need to get some rest. Clear your head. Get some perspective on the situation.'

'Weena, you fool! Weena!' He twists towards you, attempting to get away from Humboldt. 'I'm not crazy. The Morlocks are going to try and kill her. Use the time machine in my workshop to save her. I've got the key...'

Wells starts fumbling in one of his vest pockets as Humboldt nods to the two orderlies behind Wells. Grabbing Wells, they overpower him and manhandle the flailing man into the dark recesses of the ambulence. If you're totally honest, it appears they relish using more force than necessary. Humboldt notices your concerned look.

'Don't worry,' he says, consulting his pocket watch. 'They're professionals. Used to this kind of stuff all the time. They're not as rough as they look.'"

After printing the banner text, say "[line break][italic type]First time players should type 'about' or 'help' and then hit the Enter/Return key."

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

Chapter 2 - Instead-Of Rules

Section 1 - Waiting

Instead of waiting: say 
	"[if location is Woking Street]You shiver in the cold wind, drawing your light jacket closer around you. You really should get inside since you're not dressed appropriately for this winter weather
	[otherwise]Time passes."

Section 2 - Up

Instead of going up in Woking Street: say "You jump up and down a few times, trying to warm yourself up, but it's a lost cause. Better get inside."
Instead of going up in the Entryway: say "You wander around upstairs for a few minutes but find nothing of interest and return downstairs."

[TBD - Mrs. Watchett should wander away if you go "up" in the Entryway.]

Chapter 3 - Every Turn Rules

Every turn:
	if the player is in the Workshop and the player has the flower:
		now humboldt-should-return is true.

Chapter 4 - Tests

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

Test prepare-time-machine with "gonear time machine / purloin fuse / examine blueprints / put fuse in time machine."

Test circular-shaft-look with "x shaft / take grate / x shaft."

Test clearing-sphinx-se with "go southeast / go up / go down / go southeast."
Test clearing-balcony-se with "go southeast / go east / go east / go south / go north / go west / go west / go southeast."

Test eloi-ask-show-give with "purloin watch / purloin poker / purloin fuse / purloin key / gonear river."


Book 3 - 1895

Part 1 - Settings

Chapter 1 - Woking Street

Woking Street is a room. 
The description of Woking Street is "You're standing halfway down the street. Snow gently wafts down in large amounts, covering what fell minutes before, undisturbed except for the [area of the street] directly in front of you[if ambulence is in Woking Street] where the ambulence is parked[end if].[first time][paragraph break]To the west, the flickering [gaslights] in the square seem much further away than fifty paces. Fifty paces to the east the street dead-ends into a small [cul-de-sac].[only]"

	The area of the street is scenery in Woking Street.
	The description of the area of the street is "Directly in front of you the falling snow is rapidly covering the footsteps and carriage tracks from the scuffle between Wells and the hospital attendants that happened minutes ago.[if watchett-key is true][paragraph break]Something metallic catches your eye, almost buried under the rapidly falling snow.[otherwise][paragraph break]As you survey the area nothing catches your eye. Of course, it would help if you knew what you were looking for.[end if]"

	Understand "footsteps" or "carriage tracks" or "area" or "street area" as area of the street.

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
	
	[TBD Put all this on one line before release]
	[TBD Change the [purely at random]s to something else?]
	Instead of wandering:
		say "You start walking away from the front door towards 
			[if the noun is west]the intersection
			[else if the noun is east]
				[one of]the fountain
				[or]the cul-de-sac
				[purely at random]
			[otherwise]one of the other houses[end if]
			but a sudden 
				[one of]frigid[or]cold[or]bitter[or]frosty[or]ice-cold[or]numbing[or]wintery[or]icy[purely at random] 
				[one of]gust[or]flurry[or]burst[or]blast[purely at random]
				[one of]of wind[or]of snow[purely at random] 
				makes you reconsider.
			[line break]
			[line break]
			You really should get inside since you're not dress appropriately for this winter weather."
			
	The houses are scenery in Woking Street.
	The description of houses are "Nothing much has changed since you last glanced around.[first time] Twenty or thirty terraced houses ring the circular cul-de-sac, uniform in height and facade, each sharing walls with their neighbors except for the end-terrace units to the west. Most of the houses are dark at this time of night, though scattered lights show in the odd window, probably due to the recent commotion. Maybe one or two of the lights has gone off as those residents have gone back to sleep.[only]"
	
	Understand "other houses" or "dark houses" or "buildings" or "other buildings" or "residences" as houses.

	The front door is north of Woking Street and south of the Entryway. 
	The front door is a door. 
	It is openable and lockable. 
	It is unlocked.

	The description of the front door is "[if location is Woking Street]At first glance the door to 68 Woking Street is indistinguishable from every other door that lines the street, except for the unusual [knocker].[otherwise]You see nothing special about the heavy, wooden door leading to the street outside."
	
	[TBD - More detailed description of front door? See Victorian doors https://bit.ly/3rOzQkZ and https://bit.ly/3b0ymNP]
	
	Before going north in Woking Street: 
		say "Humboldt snaps his pocket watch shut and starts getting into the ambulence. 'I'll be back in a few hours after I've gotten him sedated and through the preliminaries.' Humboldt turns back towards you abruptly. 'I nearly forgot. See what you can make of this.'[paragraph break]He hands you a single petal from some flower. You recognize it as Wells[apostrophe] proof of his future trip to the year 802,701, given to him by the girl he called Weena. 'I'm a pretty good amateur botanist but even I can't tell the morphology of this from a single petal. If you find the rest somewhere inside, maybe we can convince your friend that his whole future trip was a figment of his imagination. See what you can dig up until I get back.'[paragraph break]With that Humboldt swings the ambulence door shut. With the crack of the reins the ambulence starts off down the street, turns the corner, and disappears into the evening traffic.";
		now Humboldt is nowhere; [Writing §8.10. Removing things from play]
		now the ambulence is nowhere;
		now the player is carrying the Petal.	

	The initial appearance of the front door is "[if location is Woking Street]The front door to 68 Woking Street is to the north.[first time] The light escaping from the drawn curtains to one side looks invitingly warm.[only][otherwise]The door to the street outside is to the south."
	
	The address is a thing.
	The address is scenery in Woking Street.
	The address is fixed in place.
	The description of address is "Two brass numbers, a 6 and an 8, fastened to the door underneath the door knocker." 
	Understand "68" or "street address" or "numbers" or "door address" as address.

	[TBD Would like to make text conditional? - "...[if knocker examined]sundial[otherwise]knocker."]
	[TBD How do you make a door a supporter, i.e. The address is on the front door. "If a supporter were a kind of a door or vice versa there'd be no problem, but they aren't." See Writing §3.5]
	
	The knocker is scenery in Woking Street.
	The description of the knocker is "Made of brass, this door knocker is in the shape of a sundial. By virtue of its unique design is stands out among all the unexceptional, cast iron lions heads, faces, or simple rings that adorn every other door on the street. It is unique, custom made, the only one of its kind in the entire city, probably the world, and always brings a smile to your face since it reflects the temporal obsessions of your friend who lives at this address."
	
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
	
The ambulence is a thing in Woking Street.
The description of the ambulence is "Horse-drawn, the ambulence resembles a private carriage but is uniquely adapted for its medical function. The driver waits impatiently in his enclosed glass cab at the front. Large rear doors, now open, allow entrance and egress from the vehicle of patient, attendents, and doctor."
The ambulence is fixed in place.
The ambulence is undescribed.

Instead of taking the ambulence: say "What delusions of grandeur. Perhaps they should break out a straightjacket for you."

Instead of entering the ambulence: say "With a steady hand Dr. Humboldt stops you. 'Better stay here.'"

[Sundial links
victorian	https://bit.ly/3tP1ssg
image	https://bit.ly/371QTYW
mottos	https://bit.ly/2Z7bRS4
parts-of	https://bit.ly/3p83dwZ ]

Section 1 - The Workshop Key

The metal key is a thing.
The metal key is in Woking Street.
The metal key is undescribed.
Understand "glint" or "key" or "metallic" or "metallic object" as metal key.

[The printed name of metal key is "workshop key".]
The metal key unlocks the workshop-door.

Instead of examining the metal key: 
	if watchett-key is true: 
		say "Bending down you brush the snow away to reveal a small metallic key. Picking it up you put it in your pocket.";
		now the player is carrying the metal key;
	otherwise: 
		say "Perhaps the extreme cold is affecting your mental faculties. You can't see anything like that in front of you."

[What about handling > search area ?]
		
Section 2 - The Petal
	
The petal is a thing.
The petal is nowhere.
The description of the petal is "You can't tell much from a single petal except that it came from a flower. Perhaps the rest of the blossom is inside somewhere."

Chapter 2 - Entryway

The Entryway is a room. 
The description of the Entryway is "From here you can reach all other parts of the house. To your right, an ornately carved [banister] parallels the [staircase] that leads up to the second floor landing. Through an open door to the west you can see shelves of books and hear low sounds of conversation under a crackling fire. Down a short hallway to the north is the [if workshop door is open]open[otherwise]closed[end if] door of Wells[apostrophe] workshop."
	
	The staircase is fixed in place in the Entryway. 
	The description of the staircase is "Stairs going up to the second floor. You have to admit, you haven't ever been up there."
	Understand "stairs" or "steps" as staircase.
	
	The banister is fixed in place in the Entryway.
	The description of the banister is "Just a normal handhold for going up and down the steps."
	
	Understand "handrail" or "rail" or "railing" or "balustrade" or "guardrail" or "handhold" as banister.
	
The workshop-door is north of the Entryway and south of the Workshop. 
The workshop-door is a door. 
The workshop-door is lockable. The workshop-door is locked.
The workshop-door is scenery. [Not "undescribed." Couldn't walk through it if it was "undescribed." See https://bit.ly/3rdieyO ]
Understand "workshop" or "door" as workshop-door. 

Instead of examining the workshop-door: say "No one you know has ever been inside, not even Mrs. Watchett."

Chapter 3 - Library

The Library is a room. 
The Library is west of the Entryway. 
The description of the Library is "Hundreds of books on a variety of subjects fill the floor-to-ceiling [shelves] on the north, east, and, west walls. The remaining free space not devoted to [books], [periodicals], and [encyclopaedia] is monopolized by a few pieces of [furniture].

Against the south wall is a small [desk] for notetaking, correspondence, and reconciling household accounts. A small leather [chair] is positioned near the drawn floor-to-ceiling [curtains] for more comtemplative research and relaxation. A doorway leads north."

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
Understand "book" as books.

The periodicals are a thing.
The periodicals have a bookness called type. The type of the periodicals is magazine.
The periodicals are scenery on the shelves.
Understand "magazine" or "magazines" as periodicals.

The encyclopaedia are a thing.
The encyclopaedia are scenery on the shelves.
The encyclopaedia has a bookness called type. The type of the encyclopaedia is reference.
Understand "encyclopedia" as encyclopaedia.

[Writing §16.16. Defining things with tables - Thought I had to use this code but didn't have to]
[The encyclopaedia has a number called Volume.
The encyclopaedia has a text called Label.
The encyclopaedia has a text called Start-Word.
The encyclopaedia has a text called End-Word.
The encyclopaedia has a number called Publish-Date.
The encyclopaedia in the Library are defined by the Table of Encyclopaedia Volumes.]

The furniture is a thing.
The furniture is scenery in the Library.
Instead of examining the furniture, say "You'll have to be more specific about what you're interested in examining."

The desk is a thing.
The desk is scenery in the LIbrary.
The desk is a supporter.
The description of the desk is "A standing rolltop desk with a few handwritten papers on it."
Instead of searching the desk, say "You quickly shuffle through the papers but find nothing of interest."
	
[The library papers are a thing.
The library papers are scenery on the desk.
The printed name of library papers is "papers".]

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

Instead of pushing the curtains, try opening the curtains.

[Writing §4.3. Degrees of certainty, Example 44 - different default messages for something nondescript]
[Writing §7.1. Actions]

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
The description of the Parlor is "A coal [fire] blazes away in a large fireplace set into the west wall. Directly in front of the hearth are two leather [armchairs] positioned advantageously to view the flames while conversing, drinking, or smoking. Leaning against the fireplace is a [poker]. Today's [newspaper] sits on one of the armchairs. On top of a small table against the east wall is a [pocket watch]. A set of glass doors to the east lead outside to the garden."

The Garden Door is east of the Parlor and west of the Garden. 
The Garden Door is a door. 
The Garden Door is openable and lockable.
The Garden Door is scenery.
The description of Garden Door is "[if location is Parlor]A set of glass doors and stone steps lead down into a snow-covered garden.[otherwise]A set up stone steps lead up to glass doors and the inside of the house."

Understand "glass" or "glass door" or "glass doors" as Garden Door.

The fireplace is a thing.
The fireplace is scenery in the Parlor.
Understand "hearth" and "mantle" or "damper" or "flue" or "surround" or "ash dump" as fireplace.
The description of the fireplace is "The fire burns in an inner hearth of bricks, protected by a wooden surround that is topped with a decorative wooden mantle painted to look like marble."

Instead of using the fireplace, say "That's not something you can use, but just enjoy."

The fire is a thing.
The fire is scenery in the Parlor.
Understand "coal" or "flames" as fire.
The description of the fire is "Hot, the flames reflect off of the hearth brick back into the room. As the coals burn, the embers fall through the grate onto the ash dump."

[> tend the fire]

Understand the command "tend" as something new.
Understand "tend [something]" as using.

Instead of using the fire:
	if the player has the poker:
		say "A few sparks rise up the flue and things warm up a bit as you spread the coals a bit more evenly around the grate.";
	otherwise:
		say "You will need something to do that with since your bare hands won't suffice.".

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

[The mantle is a thing.
The mantle is scenery in the Parlor.
The mantle is a supporter.]

The pocket watch is a thing.
The pocket watch is on the small table.
The pocket watch is undescribed.
The pocket watch can be open or closed. The pocket watch is closed.
Understand "timepiece" or "chronometer" as pocket watch.
The description of the pocket watch is "Wells' pocket watch, given to him by his father. Thinking back on his amazing tale, you remember that his 'Weena' was particularly enchanged with the moving hands and it's winding mechanism."

[DEL him placing it here before telling his amazing tale. "]

Instead of using the pocket watch, say "[one of]You check the time.[or]You wind the watch.[or]It's getting late. Humboldt will be back soon.[purely at random]"

[The clock is a thing. [https://bit.ly/37AqP7s]
The clock is scenery on the mantle.]

[The painting is a thing. [Casper David Friedrich's "Wanderer above the Sea of Fog" https://bit.ly/3aEJKQo]
The painting is scenery in the Parlor.]

The armchairs are things.
The armchairs are scenery in the Parlor.
The armchairs are supporters.
The armchairs are enterable.
Understand "armchair" or "chair" as armchairs.
The description of the armchairs are "Like the library chair they are covered in worn leather. Larger then their smaller counterpart they look even more inviting and comfortable, especial positioned as they are in front of the crackling fire.[first time] But you don't have time to rest, you have a key to find.[only]."

[> sit in armchair (Which armchair will you sit in? Random?)]
Instead of entering the armchairs:
	say "Well, maybe just for a minute while you gather your thoughts. You sit in the[one of] left [or] right[purely at random] armchair.";
	now the player is in the armchairs.

The newspaper is a thing.
The newspaper is undescribed on the armchairs.
Understand "news" or "paper" as newspaper.
The description of the newspaper is "Today's newspaper, already read."

[> examine newspaper vs. > read newspaper]
[Recipe §9.6. Reading Matter]
	
[DEL Instead of reading the newspaper, say "You've already read it."]
Instead of taking the newspaper, say "You've already read it."

The small table is a thing.
The small table is scenery in the Parlor.
The small table is a supporter.
The description of the small table is "Nothing out of the ordinary, just a small wooden table to the left of the garden doors."

[The decanter is a thing.
The decanter is undescribed on the table.
Understand "brandy" as decanter.

The snifter is a thing.
The snifter is a container.
The snifter is undescribed on the table.]

Chapter 5 - Garden

The Garden is a room.
The Garden is east of the Garden Door.
The description of the Garden is "Set below the level of the road and shielded from the city outside by second floor [walls] to the north and east, what Wells calls his ‘sunken urban wilderness’ is currently hidden underneath a thick blanket of undisturbed [snow] that continues to fall from the sky.

From past visits you know which white hillock is the hollyhocks, which is the larkspurs, and which is the snapdragons, but it is much too cold now to do any additional exploration. The hibernating dunes of vegetation continue to the north.

To the north, a [gate] set into that wall looks out onto the snow-covered street beyond. To the south, the dark panes of Wells' workshop [windows] stare silently down on the snow-covered [bench] nestled among some ornamental rhododendron [bushes]. The parlor doors are to the west."

Understand "parlor" or "parlor doors" or "parlor door" as Garden Door.

The garden walls are a thing.
The garden walls are scenery in the Garden.
Understand "walls" as garden walls.

The snow is a thing.
The snow is scenery in the Garden.

The gate is a thing.
The gate is scenery in the Garden.

The bench is a thing.
The bench is scenery in the Garden.
The bench is a supporter.
The bench is enterable.

The garden bushes are a thing.
The garden bushes are scenery in the Garden.
Understand "wilderness" or "hollyhocks" or "larkspurs" or "snapdragons" or "rhododendrons" or "tree" or "trees" or "vegetation" as bushes.

Chapter 6 - Dining Room

The Dining Room is a room. 
The Dining Room is north of the Parlor.
The description of the Dining Room is "The house's centerpiece for dining and entertainment, dominated by a dark walnut [dining table] that seats eight comfortably. The table currently has four [place settings] at one end for an upcoming meal. At the other end of the table is a clockwork [orrery]. Above the table hangs an electric [chandelier], probably the first of it's kind in the entire city, fills the room and bathes the wainscotted and wallpapered [walls] in what you feel is a harsh, yellowish light.[paragraph break]To the north, to the right of the kitchen door is a [sideboard] used to hold [tableware] and place settings between meals.[if the location of Watchett is the Kitchen] Through the kitchen door you can hear faint sounds of movement and work.[end if]"

The Kitchen Door is north of the Dining Room and south of the Kitchen. 
The Kitchen Door is a door. 
The Kitchen Door is openable.
The Kitchen Door is scenery.

The dining room walls are a thing.
The dining room walls are scenery in the Dining Room.
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
The sideboard is a supporter.

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
The description of the orrery is "A heliocentric mechanical model of the eight planets in the Solar System contained in a small rectangular mahogany box with decorative inlays on short legs.On it’s flat surface, tiny brass dials and rings represent the retrograde motions of the eight planets orbiting the sun, the planets themselves represented by tiny, jeweled half-spheres. Rotating pointers along the outer edge indicate seasonal and phase information as time passes.[first time] While not built to scale the entire mechanism is still a marvel of mechanical engineering and craftsmanship.[only][paragraph break]There is a switch on the long side of the box and, next to it,[if the sliding panel is closed] a small sliding panel.[otherwise] the inner mechanisms of the box are on display.[end if]" 

[^ Optional description if orrery is turned on - [if the orrery is switched on] ORRERY IS ON.[otherwise] ORRERY IS OFF. ]

Understand "planetarium" or "device" or "mechanism" or "box" or "solar system" as orrery.

The sliding panel is a thing.
The description of the sliding panel is "You see nothing special about the sliding panel except the fact that it can slide."
The sliding panel is a container.
The sliding panel is closed.
The sliding panel is scenery in the Dining Room.

Understand "slide [a closed container]" as opening.
Understand "slide [an open container]" as closing.

Instead of opening the sliding panel: 
	say "You slide open the panel to reveal the inner workings of the mechanism. Among the prime gears, slotted pin follower devices, and hollow shafts and tubes you recognize a small [fuse] between the switch and the rest of the mechanism. Other than than one item, it's all one big mysterious conglomoration to you[first time], probably like one of legal documents you usually write up for your clients[only].";
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
			say "The gears inside begin turning slowly at various speeds as the mechanism begins calculating the positions of each planetary body, updating each planet's orbital postion around the Sun on the surface display.";
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

Instead of examining the fuse:
	if the sliding panel is open: 
		say "Almost as big as your thumb, the circular fuse is made of pasteboard with metal caps on either end. Each of the metal caps is held in a metal clip.";
	otherwise: 
		say "YOU DON'T SEE THE FUSE."
	
[> take fuse]
	
After taking the fuse:
	if the orrery is switched on:
		say "The minute you remove the fuse the orrery shuts off and stops its calculations.";
		now the orrery's switch is switched off;
		now the orrery is switched off.


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

[TBD - This rule is triggered by > use switch in the Workshop]
Instead of using [things in the Kitchen]: say "Given your gender and dearth of knowledge about things domestic, perhaps it is best if you leave the operation of these devices to Mrs. Watchett. I'm sure she would help you in any way possible as long as it does not interfere with here preparations."

Chapter 8 - Workshop  

The workshop is a room. 
The Workshop is north of the Workshop Door. 
The description of the Workshop is "[if light switch is switched on]Twice as long as it is wide, the workshop ends thirty feet away in a several [windows] that look out over the garden. A long [workbench] runs down the entire east side of the room, covered in [tools], [papers], and [materials]. The entire west wall is covered by a large [blackboard], covered in [chalk] [equations] and [diagrams].[paragraph break]Midway down the room, closer to the west wall, is a mechanical device that resembles nothing you have ever seen before anywhere in your entire life.[otherwise]The entryway lights behind you cast a small amount of illumination into this room, revealing dark, shadowy shapes on the east and west sides of the room but not much more. You can see the dark shapes of the garden outside the windows at the far end of the room and a switch immediately to the left of the door."

The windows are a thing.
The windows are a backdrop. They are in the Workshop and the Garden.
Understand "workshop windows" or "window" as windows.

[> look through windows]

Instead of searching the windows: [Recipe §3.6 Windows]
	if light switch is switched on:
		if the player is in the Garden:
			say "Climbing onto the bench, you peer through the glass into the workshop. Twice as long as it is wide, it ends thirty feet away in a locked door. A long workbench runs down the east side of the room, a large blackboard covereed the entire west wall, and a strange mechanical device in the center of the room.";
			now the player is on the bench;
			stop the action; [<- This doesn't stop the Garden description from being printed after you > look through windows]
		if the player is in the Workshop:
			say "The workshop lights cast a warm glow onto the snow-covered garden outside.";
	else if light switch is switched off:
		if the player is in the Garden:
			say "Climbing onto the bench, you peer through the glass into the darkened workshop.";
			now the player is on the bench;
			stop the action; [<- This doesn't stop the Garden description from being printed after you > look through windows]
		else if the player is in the Workshop:
			say "Through the windows you can see down into the snow-covered garden outside.".

	
[ With code below, in Garden with lights off, > look through windows says [A].
  But when you get on the bench and type > look through window [B] is not said.
  Went with simpler code above, debug below later.

Instead of searching the windows: [Recipe §3.6 Windows]
	if light switch is switched on:
		if the player is in the Garden:
			if the player is on the bench:
				say "GARDEN -> WORKSHOP, ON BENCH, LIGHTS ON."; 
			otherwise:
				say "GARDEN -> WORKSHOP, OFF BENCH, LIGHTS ON.";
		if the player is in the Workshop:
			say "WORKSHOP -> GARDEN, LIGHTS ON.";
	else if light switch is switched off:
		if the player is in the Garden:
			if the player is on the bench:
				say "GARDEN -> WORKSHOP, ON BENCH, LIGHTS OFF."; [B]
			otherwise:
				say "GARDEN -> WORKSHOP, OFF BENCH, LIGHTS OFF."; [A]
		else if the player is in the Workshop:
			say "WORKSHOP -> GARDEN, LIGHTS OFF.".
]

The workbench is a thing.
The workbench is scenery in the Workshop.
The description of the workbench is "You see nothing special about the workbench."
Understand "bench" as workbench.

[ > search workbench ?]

The tools are a thing.
The tools are scenery in the Workshop.
The description of tools is "Enough equipment for any crazy experiment Wells could dream up. Hand tools of all types and function scattered across the workbench or handging on the wall. What appears to be a very complicated lathe sits next to a forge for smelting metals."
	
The papers are a thing.
The papers are scenery in the Workshop.
The description of papers is "You look through the handwritten pages scattered across the workbench and find no useful information. But you do find what appears to be a set of blueprints to the device in the center of the room, clearly marked 'Temporal Mechanism 3.'"
	
[ > search papers ?]

The materials are a thing.
The materials are scenery in the Workshop.
The description of materials is "Raw materials for Wells' 'experiments' stacked throughout the room and piled on and under the workbench. Metal plates, rods, and alloys in all shape and sizes. A huge supply of chemicals and minerals, enough to stock a pharmacist's shop. Hundreds of connectors and screws and fasteners. Batteries and wires and power sources you can't even begin to fathom how they are used."
Understand "battery" or "batteries" or "wires" or "connectors" or "screws" or "fasteners" or "plates" or "rods" or "alloys" or "chemicals" or "minerals" as materials.

The blackboard is a thing.
The blackboard is scenery in the Workshop.
The description of the blackboard is "Spanning the entire west wall, it is covered with equations and diagrams of increasing complexity."

The equations are a thing.
The equations are scenery in the Workshop.
The description of equations are "You honestly don't know where to start. The writing starts at the left and get increasing complex as you move to the right, but,  quite frankly, it's all Greek to you (you never had much of a head for Hellenic Indo-European languages, you're a Latin man)."

The diagrams are a thing.
The diagrams are scenery in the Workshop.
The description of the diagrams are "It looks like the preliminary sketches on the blackboard are the first inklings of the mechanical device in the center of the room."
Understand "sketch" or "sketches" as diagrams.

The chalk is a thing.
The chalk is scenery in the Workshop.
The description of the chalk is "It is white and chalky."

The eraser is a thing.
The eraser is scenery in the Workshop.
The description of eraser is "Rectangular and covered in chalk dust you could erase the blackboard if you dared."

The lights are a thing.
The lights are scenery in the Workshop.
The description of the lights is "You see nothing special about the lights except [if light switch is switched off]they are turned off (perhaps there's a switch here somewhere)[otherwise]they are turned on[end if]."

The light switch is a device.
The light switch is scenery in the Workshop.
The light switch is switched off.
	
Section 1 - The Blueprints

The blueprints are a thing.
The blueprints are on the workbench.
The blueprints are undescribed.
Understand "plans" or "sheets" as blueprints.

examined-blueprints is a truth state that varies.
examined-blueprints is false.

Instead of examining the blueprints:
	if the player does not have the fuse:
		say "Spreading out the individual sheets you see that these plans are a one-to-one match for Wells' time machine in the center of the room. While you can identify each actual assemblage to its blueprint counterpart, the names associated with them on the blueprints—plattnerite rods, chronometric dials—make no sense. In fact, the only object you can identify with any surety is the bicycle saddle in the center of the machine where the operator sits. ";
	if the player has the fuse:
		say "Spreading out the individual sheets you see the plans mirror Wells' time machine in the center of the room. While you cannot fathom the function of some of the components—chronometric dials, plattnerite rods—one item stands out, the fuse you took from the orrery.";
	now examined-blueprints is true; [see Section 2 - The Time Machine 3.1.8.2-A]
	rule succeeds. [see Section 2 - The Time Machine 3.1.8.2-B]


Section 2 - The Time Machine
	
The time machine is a thing.
The time machine is undescribed in the Workshop.
The time machine is fixed in place.
The time machine is enterable. 
The description of time machine is "TBD-Time Machine."
Understand "mechanism" or "device" or "temporal" as time machine.

The control panel is a device.
The control panel is in the time machine.
The control panel is switched off.
The control panel is undescribed.
Understand "controls" as control panel.

Instead of examining the control panel:
	if the player is in the time machine:
		say "A cursory glance at the two sets of chronometric dials shows them configured for two dates, one today and one far in the future. From the status of the various lights it looks like the control panel is ready to be activated.";
	otherwise:
		say "From the outside you can see the control panel is composed of various dials, switches, and lights but you can't make out any greater detail.";
	rule succeeds.

[> activate control panel
 > activate time machine]

Activating is an action applying to one touchable thing.
Understand "activate [something]" as activating.

Instead of activating the time machine:
	try activating the control panel.

Instead of activating the control panel:
	if the player is in the time machine:
		say "Saying a brief prayer and holding your breath, you press the single lit button on the control panel.";
	otherwise:
		say "Reaching into the time machine you press the single lit button on the control panel to see what happens. To your horror, the machine shimmers briefly and disappears from the room.";
		now the time machine is nowhere;
		now humboldt-should-return is true;
	now the control panel is switched on.

The saddle is a thing.
The saddle is in the time machine.
The saddle is undescribed.
Understand "bicycle" and "seat" as saddle.

[Two different ways to implement. See See https://bit.ly/320owaO]

[3.1.8.2-A - Using a boolean examined-blueprints to determine if blueprint has been examined.] 
[See Section 1 - Blueprints to see where boolean is set.]

Instead of examining the time machine:
	if the fuse is in the time machine, say "EVERYTHING LOOKS GOOD TO GO.";
	otherwise:
		if the player has the fuse:
			if examined-blueprints is true:
				say "With what you now know you can see exactly where the fuse needs to go in Wells' time machine.";
			otherwise:
				say "Looking at the fuse you can't help but deduce that it should go somewhere in the time machine but you don't have the first clue where that would be.";
		otherwise:
			if examined-blueprints is true:
				say "According to the blueprints there's one missing component required. You can see where it should go but have no idea what it is.";
			otherwise:
				say "According to the blueprints and Wells' statements this must be his 'time machine.' You reach inside it and flip a few switches back and forth but nothing happens, you have no clue about how to activate it or what the next steps might be.".

[Writing §9.13. The past and perfect tenses]

[3.1.8.2-B - Using whether or not an object has been examined instead of setting a boolean value true or false.]
[See Section 1 - Blueprints to see where the blueprint examining is handled.]

[Instead of examining the time machine:
	if the player has the fuse:
		if we have examined the blueprints:
			say "HAS FUSE; HAS EXAMINED BLUEPRINTS.";
		otherwise:
			say "HAS FUSE; HAS NOT EXAMINED BLUEPRINTS.";
	otherwise:
		if we have examined the blueprints:
			say "DOES NOT HAVE FUSE; HAS EXAMINED BLUEPRINTS.";
		otherwise:
			say "DOES NOT HAVE FUSE; HAS NOT EXAMINED BLUEPRINTS.";]
			
Instead of inserting the fuse into the time machine:
	if the player has the fuse:
		if examined-blueprints is true:
			say "You snap the fuse into its appointed slot. With an imperceptable hum the time machine powers up. Lights appear on the control panel, probably indicating that it is ready to activate.";
			now the fuse is in the time machine;
		otherwise:
			say "Despite your best efforts you don't know where the fuse belongs.";
				
Part 2 - Characters

A person can be either fixed or mobile. 

Chapter 1 - Watchett

Watchett is a person. 
Watchett is a female. 
Watchett is fixed.
[Watchett is in the Entryway.] [Put her in Kitchen at start. Will use movement after Humboldt returns.]
Watchett is in the Kitchen.
The description of Watchett is "Wells[apostrophe] steadfast aged housekeeper, she has been managing his household affairs and cooking his meals for years. If you could steal here away from Wells you would in a heartbeat, but she would never leave him in a million years."

The printed name of Watchett is "Mrs. Watchett". 
[See Recipe §7.1. Getting Acquainted -> led to reading source of extension "Punctuation Removal" which lead to "printed name of" command.]

[INFO One line doesn't seem to work]
[Understand "mrs/watchett/cook/maid/housekeeper/old lady" as Mrs Watchett.]

[INFO On separate lines seem to work]
[Understand "mrs/watchett/old lady" as Mrs Watchett.
Understand "maid" as Mrs Watchett.
Understand "housekeeper" as Mrs Watchett.
Understand "cook" as Mrs Watchett.]

[INFO This seems to work]
Understand "mrs" or "watchett" or "watchet" or "cook" or "maid" or "housekeeper" or "old lady" as Watchett.
[See §17.3. Overriding existing commands - New tokens for ^]

Section 1 - Conversation

[See Writing §7.6. Reading and talking]
Instead of asking Watchett about "wells": say "Working too hard on his experiments, he is. Did the doctor say he would be all right."
Instead of asking Watchett about "experiments": say "'Everything that was done was behind that door.' She points to the workshop door."
Instead of asking Watchett about "workshop door": say "Locked. Always locked. Only Mr. Wells has the key."
Instead of asking Watchett about "front door": say "Much too cold to be outside the way you're dressed. Best you warm up by the fire first."
Instead of asking Watchett about "door": say "A puzzled look on her face, Mrs. Watchett looks at both the front door and the workshop door, trying to understand which door you're asking about."

[See Writing §11.5. Conditions and question ]
watchett-key is a truth state that varies.
watchett-key is false.

Instead of asking Watchett about "key": 
	say "Always kept it on his person. That's where it still must be.";
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
The description of Humboldt is "A reputable physician and alienist, he has known Wells for years. You are confident that his methodical nature and his diagnostic ability will get to the bottom of what ails Wells."

The printed name of Humboldt is "Dr. Humboldt"

Understand "doctor" or "physician" or "dr" or "psychologist" or "alienist" as Humboldt.

humboldt-should-return is a truth state that varies.
humboldt-should-return is false.

humboldt-endgame-begins is a truth state that varies.
humboldt-endgame-begins is false.

Section 1 - Conversation

Instead of asking Humboldt about "wells/madman/patient/lunatic": say "'I don't know enough to make a proper diagnosis right now. I'll know more after we get him to the hospital, calm him down, and do a proper examination.'"

Instead of asking Humboldt about "diagnosis": say "'Too early to tell.'"

Instead of asking Humboldt about "examination": say "'First thing to do is get him to my hospital. Get him admitted and sedated. Probably won't be able to do a proper examination until he's calmed down.'"

Instead of asking Humboldt about "workshop/shop": say "'Never seen the inside of it. I don't think anyone has. Best to ask Mrs. Watchett. She might have a key.'"

Instead of asking Humboldt about "time machine": say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'"

Chapter 3 - Gernsback 
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
	say "The workshop goes hazy and dark. Mrs. Watchett comes in, followed by Dr. Humboldt. They talk briefly and then walk towards the workshop windows. While it normally takes a minute to traverse the room, they both shoot across the space like rockets, talk briefly again while looking out at the garden and then, just as quickly, leave the same way they came at the same speed, turning off the lights and shutting the door, leaving you in darkness.[paragraph break]Night becomes day like turning on a lamp. The workshop becomes faint and hazy, then fainter and ever fainter. Tomorrow night comes black, then day again, night again, day again, faster and faster still as the machine picks up speed. An eddying murmur fills your ears and a strange, dumb confusedness descends on your mind.[paragraph break]The pecurliar sensations of time traveling fade into the background as you hurtle headlong into the future. The dim suggestion of the workshop, the entire house, the entire neighborhood falls away. The sun hops swiftly across the sky, leaping it every minute, with every minute marking a day. The moon spins swiftly through her quarters from new to full, surrounded by faint glimpses of circling stars. Eventually, the night and day merges into one continuous greyness and the sky takes on a wonderful deepness of twilight blue split by a brilliant arch that is the sun.[paragraph break]After an indeterminate amount of time, as the dials approach your ultimate destination, the machine shifts gears somewhere in its interior and your progress begins to slow gradually and the landscape, first misty and vague, begins reappearing. You're on a hillside, trees growing and changing like puffs of vapor, now brown, now green; they grow, spread, shiver, and pass away. Huge buildings rise up faint and fair and then pass like dreams. The whole surface of the earth seems to change as it melts and flows under your eyes. The white snows of winter flash across the world to be followed by a bright, brief green of spring.  Great architectures shimmer in the distance. Eventually even the winter disappears, replace by what appears to be an eternal spring as the machine slows even more. 'The earth seems very fair' is the first conscious thought that your remember thinking as the machine slows down further and comes to a stop.[paragraph break]You have arrived.";
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
	say "TRAVEL TO 1895 BEGINS.";
	say "The clearing becomes hazy and dark and the rapidly alternating cycle of night and day becomes a continuous greyness as the machine hurtles back in time. The murmer in your ears and the confusedness in your mind are not as bad as the last time. The dials spin backwards, years melting away in seconds as the machine's operation reaches a crescendo and slows down as you approach your starting point.[paragraph break]You are back.";
	now the time machine is in the Workshop;
	now the control panel is switched off.

Travel To 1895 ends when the time machine is in the Workshop.

[When Travel To 1895 ends:
	say "TRAVEL TO 1895 ENDS.";]



Book 5 - 802,701

Part 1 - Settings

Chapter 1 - Clearing

[TBD Figure out how to move the time machine with player from workshop to this room (as part of scene?) ]
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
	say "You attempt to find a way out of the clearing by going [noun] but one false path after another leads you right back to where you started.".		
						
Before going southeast in the Clearing:
	if can-go-clearing-to-river is false:
		say "You attempt to find a way out of the clearing by going [noun] but one false path after another leads you right back to where you started.";
		stop the action.

Chapter 2 - Sphinx Steps

The Sphinx Steps are a room.
The Sphinx Steps are up from the Clearing.
The description of the Sphinx Steps is "The set of stone steps winds its way around the [ziggurat] until you are above the treetops, plateauing  in front of a two large closed [stone doors] set into a [pedestal]. On the pedestal is a carved [statue] of a sphinx, its impassive face surveying a countryside you cannot see, its outstreatched wings poised to take flight against some unknown prey.[paragraph break]In the distance you can see a domed building to the east and, beyond it, other gagantuan buildings of stone. Also at this height, you can see a path down below winding its way southeast to a river in the distance."

The printed name of Sphinx Steps are "Top of Sphinx Steps"

The ziggurat is a thing.
The ziggurat is scenery in the Sphinx Steps.
The description of the ziggurat is "A rectangular stepped tower built in successive stages with an outside staircase that winds its way around the sides to forest below. First seeen in ancient Mesopotamia, they usually have some shrine at the top."
Understand "pyramid" as ziggurat.

The stone doors are a thing.
The stone doors are scenery in the Sphinx Steps.
The description of the stone doors are "Closed right now. Set into the pedestal, it looks like they're opened from the inside so it is unlikely you would be able to open them from this side. The door themselves are carved with line after line of mechanical cuneiform and bas relief mongoloid figures marching down a successive set of ramps to an unpictured subterranean destination."

[The sacrificial alter is a thing.
The sacrificial alter is scenery in the Sphinx Steps.
The sacrificial alter is a supporter.]

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
The description of Top Shaft is "You're perched at the the top of the shaft on the ladder leading down. Exiting the shaft will put you back in the Clearing. The faint sound of machinery rises from the darkness below."

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
The description of Bottom Shaft is "A small amount of light from above filters down, allowing you to see tunnels sloping down in every direction. The sound of machinery is louder now and seems to come from everywhere."

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

[Pantheon
https://bit.ly/3bQq6jS (wikipedia) 
https://bit.ly/2NLr9tv (google images)
https://bit.ly/37WsJPZ
https://bit.ly/3q3aAq6
]

Chapter 6 - Inside Dome

The Inside Dome is a room.
The Inside Dome is north of the Balcony.

The description of Inside Dome is "Sunlight streams through the dome's [oculus], illuminating the room below. Low stone [tables] are arranged symmetrically throughout the room, surround a central [well] underneath the dome's apex. Mosaic [murals] cover the walls. Sunlight streams through an archway to the south and the exit of the building is to the west."
	
The printed name of Inside Dome is "Inside the Domed Building"

The oculus is a thing.
The oculus is scenery in the Inside Dome.
The description of oculus is "A circular opening at the apex of the dome, it allows sunlight and rain to enter. From this distance it looks small but given the size of the dome it is probably thirty or forty feet in diameter."
Understand "apex" as oculus.

The tables are a thing.
The tables are scenery in the Inside Dome.
The description of the tables are "The low-slung metal tables are arranged in a circular pattern around the well, designed for kneeling or sitting. It looks like each circular table can seat eight or twelve people. A slight circular depresssion in the center of each table about four feet in diameter looks like it serves as a container for something."
Understand "circular" or "container" or "depression" as tables.

The well is a thing.
The well is scenery in the Inside Dome.
The description of the well is "Mirroring the oculus diameter, this circular pool of water ripples, reflecting a slightly distorted image of the room around you."

The water is a thing.
The water is scenery in the Inside Dome.
The water is edible.
The description of the water is "The water seems fresh, replenished and circulated by some unseen mechanism far below. [first time] (Undoubtably, Wells would be able to elucidate the engineering behind such a feat but you can only wonder at its execution.)[only]."

Instead of eating the water:
	say "You cup some water in your hand and take a quick drink.";
	stop the action.

[Writing §10.2. Liquids]
Instead of drinking the water, say "You cup some water in your hand and take a quick drink."

The murals are a thing.
The murals are scenery in the Inside Dome.
The description of the murals are "Circling the entire dome wall except for the entrances and exists, the pictorial cyclorama displays a day-to-night series of idealized pastoral scenes of a leisurely life. In the various [mosaics], tunicked figures gather fruit, bath in the river, pick flowers, wander the countryside, and eat, dance, and play in the sunlight. In the dusk scenes you can make out shadowy figures in the background spying on the childish figures in the foreground, hidden in the undergrowth and shadow. Each mural has a title, written in a strange Arabic script that you cannot decipher."
Understand "cyclorama" or "mural" as murals.

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

The Eloi have spread themselves all along this side of the river and are involved in a variety of activities. Some are swimming in the shallows, others are playing on the banks or gathering flowers or fruit.  You can even see, to your horror, a few couples of both genders in the bushes involved in purient matters."

["As you move among them, your clothes and your height bring attention to yourself..."]

[
The Eloi notice you standing there in your drag nineteenth century clothing. In small groups they approach and circle you, cooing softly in their singsong language that Wells described earlier. They're don't appear afraid, merely curious, 
]

Instead of asking the Eloi about something:
	say "Try as you might you can't make the the Eloi understand what you are asking about. Some of them laugh at your strange pronunciations while others coo and chatter among themselves quietly. Others become bored and drift off into other pursuits while still others walk over to see the new oddity." 
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
	[say "SHOWING WATCH TO ELOI. ONE OF THEM GRABS IT FROM YOU";]
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
The description of the flower is "Unlike any vegetation you've ever seen, the petal the Humboldt gave you matches those on this flower's blossom exactly. If this won't convince the doctor of Wells[apostrophe] sanity then nothing will."

Section 2 - Introduction Of Weena

Introduction Of Weena is a scene.

Introduction Of Weena begins when the Eloi is carrying the pocket watch. [or the player gives the Eloi the pocket watch.]

When Introduction Of Weena begins:
	[say "INTRODUCTION TO WEENA BEGINS.";]
	say "Suddenly a young girl appears, differing from the other Eloi in demanor. She seems older though she looks to be the same age as the others and carries herself with a bit more bearing. This must be Wells[apostrophe] Weena.[paragraph break]She gently takes the pocket watch from the Eloi who has it and turns it over slowly in her hands, remembering.";
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
	say "Suddenly, Weena presses the watch's fob and the cover springs open, revealing the hands within. She stares at the second hand making its way arond the dial and taps at the crystal with her finger. Looking up, she smiles. She remembers.[paragraph break]Snapping the watch shut she hands it back to you and nods her head. She looks at the petal in your hand and, reaching up into her hair she removes a single flower and hands it to you before running off. The rest of the Eloi follow her and soon you are alone again.";
	now the Eloi are nowhere;
	now Weena is nowhere;
	now the player is carrying the pocket watch;
	now the player is carrying the flower.

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
	say "HUMBOLDT'S RETURN BEGINS.";
	now Humboldt is in the Workshop.

Humboldt's Return ends when Humboldt is in the Workshop.

When Humboldt's Return ends:
	say "HUMBOLDT APPEARS IN THE WORKSHOP.";
	now humboldt-endgame-begins is true;
	say "HUMBOLDT'S RETURN ENDS."

Chapter 3 - Humbolt Endgame

Humboldt Endgame is a scene.

Humboldt Endgame begins when humboldt-endgame-begins is true.

When Humboldt Endgame begins:
	say "HUMBOLDT ENDGAME BEGINS."

[Humboldt Endgame ends when ABC.]

When Humboldt Endgame ends:
	say "HUMBOLDT ENDGAME ENDS."


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




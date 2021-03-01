"The Time Machine" by Billy Tenenbaum

Table 0.1 - Word Count
Words	
6004

Table 0.2 - To Dos
topic	todo
--  	"Conditional text if Watchett in Kitchen"
--	"Humboldt description"
--	"Watchett description"
--	"Result of using gnomon - Mrs. Watchett opens door? Carriage drives away?"
--	"Woking Street - Working on Dr Humboldt's responses to your Asking About"
--	"Woking Street - Getting Humboldt into the ambulence and having the ambulence travel away" [Maybe happens when you enter house.]

Part 1 - Beginning The Story

[The player is in Woking Street.]
The player is in the Clearing.

The watch is a thing. [This is just a temporary object to test supporters and containers. Or maybe not (see 'Weena' entry in design notebook).]
The watch is carried.

[TBD Describe yourself when you "x self"]

When play begins: say "'Let me go!'

Wells struggles against the orderlies attempting to drag him into the horse-drawn ambulence parked in the street before the door. With strength born of desperation he breaks free and falls to the ground, thrown off balance by the straightjacket that binds his arms to his sides. You kneel down and help Wells up off the snow-covered bitumen. As Wells struggles to his feet your eyes meeting.

'Save her,' he says, voice ragged and hoarse, eyes hopeful and pleading. 'Save Weena for me, my old friend'

Dr. Humbolt intervenes, placing himself between you and Wells. 'There, there Wells. First thing to do is get you the help you need. Then we can help this 'Wanna' you're going on about.'

'Weena, you fool! Weena! I'm not crazy. He twists towards you. 'Filby, the Morlocks are going to kill her...' The rest of Wells' sentence is cut off as the orderlies gag him and roughhouse him into the ambulence."

After printing the banner text, say "[line break][italic type]First time players should type 'about' or 'help' and then hit the Enter/Return key."

Part 2 - Mechanics

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

Chapter 3 - Tests

Test goto-kitchen with "north / west/ north / north / north." [from Woking Street]
Test house-look with "x other houses / x residences". [from Woking Street]

Part 3 - Settings - 1895

Chapter 1 - Outside on the Street

[You start on the street. The hospital ambulence has left, the disturbed snow the only evidence that it's been here. You go inside. Mrs. Watcheet gives you backstory. ['Is Mr. Well's going to be alright?] Has Dr. Humbolt told you anything? Is Mr. Well's going to be alright?' "]

Section 1 - Woking Street

Woking Street is a room. The description is "You're standing halfway down the street. Snow gently wafts down in large amounts, covering what fell minutes before, undisturbed except for the [area of the street] directly in front of you.[first time][paragraph break]To the west, the flickering [gaslights] in the square seem much further away than fifty paces. Fifty paces to the east the street dead-ends into a small [cul-de-sac].[only]"

	The area of the street is scenery in Woking Street.
	The description of the area of the street is "Directly in front of you the falling snow is rapidly covering the footsteps and carriage tracks from the scuffle between Wells and the hospital attendants that happened minutes ago."
	Understand "footsteps" or "carriage tracks" or "area" or "street area" as area of the street.
	[TBD There needs to be a key here. Should it be hinted at in the description - "a slight glint in the snow catches your eye but you're not sure if it's actually something or a reflection off the falling snow." and found if you search the area.]

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

	The initial appearance of the front door is "[if location is Woking Street]The front door to 68 Woking Street is to the north.[first time] The light escaping from the drawn curtains to one side looks invitingly warm.[only][otherwise]The door to the street outside is to the south."
	
	The address is a thing.
	The address is scenery in Woking Street.
	The address is fixed in place.
	The description of address is "Two brass numbers, a 6 and an 8, fastened to the door underneath the door knocker." 
	Understand "68" or "street address" or "numbers" or "door address" as address.

	[TBD Would like to make text conditional? - "...[if knocker examined]sundial[otherwise]knocker."]
	[TBD How do you make a door a supporter, i.e. The address is on the front door. "If a supporter were a kind of a door or vice versa there'd be no problem, but they aren't." See Writing 3.5]
	
	The knocker is scenery in Woking Street.
	The description of the knocker is "Made of brass, this door knocker is in the shape of a sundial. By virtue of its unique design is stands out among all the unexceptional, cast iron lions heads, faces, or simple rings that adorn every other door on the street. It is unique, custom made, the only one of its kind in the entire city, probably the world, and always brings a smile to your face since it reflects the temporal obsessions of your friend who lives at this address."
	
	The sundial is scenery in Woking Street.
	The sundial is a supporter.
	The description of the sundial is "Octogon shaped, this custom-made timekeeper is attached vertically to the door. While it has all of the components of it’s horizontal cousins, these componens are arranged in a slightly different configuration to account for its vertical nature and the surrounding buildings.[paragraph break]Roman [numerals] from one to twelve surround a stylized [sun] at the center. A hinged gnomon, which would normally cast a shadow during daylight hours, serves as the knocker. Underneath the sun and gnomon is the [motto] 'Sine Umbra Nihil'. Lightly etched complementary [Babylonian] and [Italian] hour lines cross the sundial's face."
	
	Understand "timekeeper" or "timepiece" or "watch" as sundial.
	
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
The ambulence is fixed in place.
The ambulence is undescribed.

Instead of taking the ambulence: say "What delusions of grandeur. Perhaps they should break out another straightjacket."
	
Table 3.1.1.a - Sundial Links
topic	link
"victorian"	"https://bit.ly/3tP1ssg"
"image"	"https://bit.ly/371QTYW"
"mottos"	"https://bit.ly/2Z7bRS4"
"parts-of"	"https://bit.ly/3p83dwZ"
	
Chapter 2 - Inside

Section 1 - Entryway

The Entryway is a room. 
The description is "From here you can reach all other parts of the house. To your right, an ornately carved [banister] parallels the [staircase] that leads up to the second floor landing. Through an open door to the west you can see shelves of books and hear low sounds of conversation under a crackling fire. Down a short hallway to the north is the [if workshop door is open]open[otherwise]closed[end if] door of Wells[apostrophe] workshop."
	
	The staircase is fixed in place in the Entryway. 
	The description of the staircase is "Stairs going up to the second floor. You have to admit, you haven't ever been up there."
	Understand "stairs" or "steps" as staircase.
	
	The banister is fixed in place in the Entryway.
	The description of the banister is "Just a normal handhold for going up and down the steps."
	
	Understand "handrail" or "rail" or "railing" or "balustrade" or "guardrail" or "handhold" as banister.
	
The Workshop Door is north of the Entryway and south of the Workshop. 
The Workshop Door is a door. 
The Workshop Door is lockable. [It is locked.] 
The Workshop Door is scenery. [Not "undescribed." Couldn't walk through it if it was "undescribed."]
Understand "workshop" or "door" as Workshop Door. 

Instead of examining the workshop door: say "No one you know has ever been inside, not even Mrs. Watchett."

Section 2 - Library

The Library is a room. 
The Library is west of the Entryway. 
The description is "Hundreds of books on a variety of subjects fill the floor-to-ceiling [book shelves] on the north, east, and, west walls. The remaining free space not devoted to [books], [journals], and [encyclopaedia] is monopolized by a few pieces of [furniture].

Against one wall is a small [desk] for notetaking, correspondence, and reconciling household accounts. A small leather [chair] is positioned near the drawn floor-to-ceiling [curtains] for more comtemplative research and relaxation."

The book shelves are a thing.
The book shelves are scenery in the Library.
The book shelves are a supporter.

The books are a thing. [What if some of the books are from the future?]
The books are scenery on the shelves.

The journals are a thing.
The journals are scenery on the shelves.

The encyclopaedia are a thing.
The encyclopaedia are scenery on the shelves.
Understand "encyclopedia" as encyclopaedia.

The furniture is a thing.
The furniture is scenery in the Library.

The desk is a thing.
The desk is scenery in the LIbrary.
The desk is a supporter.

The chair is a thing.
The chair is scenery in the Library.
The chair is a supporter.

The curtains are a thing.
The curtains are scenery in the Library.

Section 3 - Parlor

The Parlor is a room. 
The Parlor is north of the Library.
The description is "A large [fireplace] is set into the west wall and a coal [fire] is blazing away in it to ward off the cold. On the [mantle] above sits a small mechanical [clock]. Centered above the mantle is a framed [painting]. Directly in front of the hearth is a [small table] with two leather [armchairs] flanking it on either side, positioned advantageously to view the coal flames while conversing, drinking, or smoking. On the table is a brandy [decanter] and two [snifters]. A [newspaper] sits on one of the armchairs. A set of glass doors leads outside to the garden."

The Garden Door is east of the Parlor and west of the Garden. 
The Garden Door is a door. 
The Garden Door is openable and lockable.
The Garden Door is scenery.
The description of Garden Door is "[if location is Parlor]A set of glass doors and stone steps lead down into a snow-covered garden.[otherwise]A set up stone steps lead up to glass doors and the inside of the house."

Understand "glass" or "glass door" or "glass doors" as Garden Door.

The fireplace is a thing.
The fireplace is scenery in the Parlor.

The fire is a thing.
The fire is scenery in the Parlor.

The fire iron is a thing. [https://bit.ly/3sczKUx]
The fire iron is scenery in the Parlor.

The mantle is a thing.
The mantle is scenery in the Parlor.
The mantle is a supporter.

The clock is a thing. [https://bit.ly/37AqP7s]
The clock is scenery on the mantle.

The painting is a thing. [Casper David Friedrich's "Wanderer above the Sea of Fog" - https://bit.ly/3aEJKQo]
The painting is scenery in the Parlor.

The armchairs are things.
The armchairs are scenery in the Parlor.
The armchairs are supporters.

The newspaper is a thing.
The newspaper is scenery on the armchairs.

The small table is a thing.
The small table is scenery in the Parlor.
The small table is a supporter.

The decanter is a thing.
The decanter is scenery on the table.

The snifters are things.
The snifters are scenery on the table.

Section 4 - Dining Room

The Dining Room is a room. 
The Dining Room is north of the Parlor.
The description is "The house's centerpiece for dining and entertainment, dominated by a dark walnut [dining table] that seats eight comfortably. The table currently has four [place settings] at one end for an upcoming meal. At the other end of the table is a clockwork [orrery]. Above the table hangs an electric [chandelier], probably the first of it's kind in the entire city, fills the room and bathes the wainscotted and wallpapered [walls] in what you feel is a harsh, yellowish light.[paragraph break]To the north, to the right of the kitchen door is a [sideboard] used to hold [tableware] and place settings between meals."

[Is there a better way to do this?]
Every turn:
	if the location of the player is the Dining Room:
		if the location of Watchett is the Kitchen:
			say "[bold type]If Mrs. Watchett in Kitchen, you should hear Kitchen sounds-cutting, stirring, mixing, etc. through the kitchen door to north"

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

The orrery is a thing. [https://bit.ly/3s8YLzS]
The orrery is scenery on the dining table.
The orrery is a device.
The description is "A clockwork of brass, gears, and polish reflecting and lensflaring the chandelier light..."

The fuse is a thing.
[The fuse is hidden.] [How do you hide something until you search for it?]
The fuse is scenery in the Dining Room.

Section 5 - Kitchen

The Kitchen is a room. 
The Kitchen is north of the Kitchen Door.
The description is "[first time]The large room where Mrs. Watchett prepares all those [meals] that you enjoy so much. [only]With enough space for several cooks, the entire room is organized around exterior lines, dominated by a large, sturdy wooden [work table] in the center of the room. Surrounding this table are numerous free-standing [cabinets] and [shelves] for storage. The cooking [stove] and copper [sink] are against the north wall, separated by another small [work area]."

[+ conditional text to description if Watchett in room]

The meals are a thing.
The meals are scenery in the Kitchen.

The work table is a thing.
The work table is scenery in the Kitchen.
The work table is a supporter.

The cabinets are a thing.
The cabinets are scenery in the Kitchen.
The cabinets are a container.

The kitchen shelves are a thing.
The kitchen shelves are scenery in the Kitchen.
The kitchen shelves are a supporter.

The stove is a thing.
The stove is scenery in the Kitchen.
The stove is a supporter.
[The stove is a device.] [Can't be container and device]

The sink is a thing.
The sink is scenery in the Kitchen.
The sink is a container.
[The sink is a device.] [Can't be container and device]

The work area is a thing.
The work area is scenery in the Kitchen.
The work area is a supporter.

[Instead [object] description - "There’s nothing special about the [object] except that it has been extensively modified by Wells’ along ‘scientific’ best practices and the source of several of his patents." OR "You know nothing about kitchen work so all you can tell about the [object] is that it has been extensively modified by Wells according to his 'scientific' best practices. Tinkerer that he is, you know that some of these modifications are the genesis of several of his patents" / "...as his attorney, you know that several of these modifications are the genesis of several of the patents he holds."]

Chapter 3 - Outside

Section 1 - Garden

The Garden is a room.
The Garden is east of the Garden Door.
The description is "Set below the level of the road and shielded from the city outside by second floor [walls] to the north and east, what Wells calls his ‘sunken urban wilderness’ is currently hidden underneath a thick blanket of undisturbed [snow] that continues to fall from the sky.

From past visits you know which white hillock is the hollyhocks, which is the larkspurs, and which is the snapdragons, but it is much too cold now to do any additional exploration. The hibernating dunes of vegetation continue to the north.

To the north, a [gate] set into that wall looks out onto the snow-covered street beyond. To the south, the dark panes of Wells' [workshop windows] stare silently down on the snow-covered [bench] nestled among some ornamental rhododendron [bushes]. The parlor doors are to the west."

Understand "parlor" or "parlor doors" or "parlor door" as Garden Door.

The garden walls are a thing.
The garden walls are scenery in the Garden.
Understand "walls" as garden walls.

The snow is a thing.
The snow is scenery in the Garden.

The gate is a thing.
The gate is scenery in the Garden.

The workshop windows are a thing.
The workshop windows are scenery in the Garden.
[DESC - [if in Garden] description from in Garden [otherwise] description from in Workshop]

The bench is a thing.
The bench is scenery in the Garden.
The bench is a supporter.

The garden bushes are a thing.
The garden bushes are scenery in the Garden.
Understand "wilderness" or "hollyhocks" or "larkspurs" or "snapdragons" or "rhododendrons" or "tree" or "trees" or "vegetation" as bushes.

Chapter 4 - Inside the Workshop

Section 1 - Workshop  

The workshop is a room. 
The Workshop is north of the Workshop Door. 
The description is "Twice as long as it is wide, the workshop ends thirty feet away in a several [windows] that look out over the garden. A long [workbench] runs down the entire east side of the room, covered in [tools], [papers], and [materials]. The entire west wall is covered by a large [blackboard], covered in [chalk] [equations] and [diagrams].

Midway down the room, closer to the west wall, is a mechanical device that resembles nothing you have ever seen before anywhere in your entire life."

The workbench is a thing.
The workbench is scenery in the Workshop.

The tools are a thing.
The tools are scenery in the Workshop.

The papers are a thing.
The papers are scenery in the Workshop.

The materials are a thing.
The materials are scenery in the Workshop.

The blackboard is a thing.
The blackboard is scenery in the Workshop.

The equations are a thing.
The equations are scenery in the Workshop.

The diagrams are a thing.
The diagrams are scenery in the Workshop.

The chalk is a thing.
The chalk is scenery in the Workshop.

The eraser is a thing.
The eraser is scenery in the Workshop.

The lights are a thing.
The lights are scenery in the Workshop.

The light switch is a device.
The light switch is scenery in the Workshop.

The time machine is a device.
The time machine is scenery in the Workshop.
[The time machine is a container.]

The blueprints are a thing.
The blueprints are scenery on the workbench.

Part 4 - Setting - 802,701

Chapter 1

Section 1 - Clearing

[TBD Figure out how to move the time machine with player from workshop to this room (as part of scene?) ]
[TBD Substituting different article in clearing description first time or when player in time machine - The time macine has 'arrived' in a/A mid-sized, man-made clearing... or rewrite description ]

The Clearing is a room. 
The description is "A mid-sized, man-made clearing surrounded by overgrown rhododendrum [bushes]. Paths lead off in all directions but your not sure where they end up. In the distance, almost totally obscured by the [treetops], is a large white domed structure to the east. A set of stone steps in the tangled [undergrowth] to the north lead up.[paragraph break]In the exact center of the clearing is a [circular shaft] set into the earth, projecting about three feet above the ground."

Inside from the Clearing is Top Shaft.

The clearing bushes are a thing.
The clearing bushes are scenery in the Clearing.

The treetops are a thing.
The treetops are backdrop. They are in the Clearing and the Sphinx Steps and the Balcony.

The undergrowth is a thing.
The undergrowth is scenery in the Clearing.

The circular shaft is a thing.
The circular shaft is scenery in the Clearing.
The circular shaft is a supporter.

The circular grate is a thing.
The circular grate is scenery on the circular shaft.
The circular grate is a supporter.

Section 2 - Sphinx Steps

The Sphinx Steps are a room.
The Sphinx Steps are up from the Clearing.
The description is "The set of stone steps winds its way around the [ziggurat] and through the treetops, ending at the top of a [plateau] in front of a set of large closed [stone doors] set into a [pedestal]. There is an [sacrificial alter] in the center of the plateau. On the pedestal is a carved [statue] of a sphinx, its impassive face surveying a countryside you cannot see, its outstreached wings poised to take flight against some unknown prey.[paragraph break] At this height, you can see a path down below winding its way southeast from the clearing to some water in the distance."

The printed name of Sphinx Steps are "Top of Sphinx Steps"

The ziggurat is a thing.
The ziggurat is scenery in the Sphinx Steps.

The plateau is a thing.
The plateau is scenery in the Sphinx Steps.

The stone doors are a thing.
The stone doors are scenery in the Sphinx Steps.

The sacrificial alter is a thing.
The sacrificial alter is scenery in the Sphinx Steps.
The sacrificial alter is a supporter.

The pedestal is a thing.
The pedestal is scenery in the Sphinx Steps.

The statue is a thing.
The statue is scenery in the Sphinx Steps.
Understand "sphinx" or "carved figure" or "face" or "wings" as the sphinx.


Section 3 - Top Shaft

The Top Shaft is a room.
Down from Top Shaft is the Bottom Shaft.

The printed name of Top Shaft is "Top of the Shaft"

Section 4 - Bottom Shaft

The Bottom Shaft is a room.
Up from the Bottom Shaft is the Top Shaft.
The printed name of Bottom Shaft is "Bottom of the Shaft"

Section 5 - Domed Building

The Domed Building is a room.
The Domed Building is east of the Clearing.
The Domed Building is west of the Inside Dome.
Inside from the Domed Building is Inside Dome.

Understand "concrete" or "pantheon" or "columned" or "columns" or "portico" or "entrance" as Domed Building.

The description is "Before you is a weathered concrete building built along the lines of the Pantheon in Rome. A columned portico to the east provides entrance to the inside of the domed building behind it."

[Pantheon
https://bit.ly/3bQq6jS (wikipedia) 
https://bit.ly/2NLr9tv (google images)
https://bit.ly/37WsJPZ
https://bit.ly/3q3aAq6
]

Section 6 - Inside Dome

The Inside Dome is a room.
The Inside Dome is north of the Balcony.

The description is "Sunlight streams through the dome's [oculus] illuminating the room below. Low stone [tables] are scattered throughout the room, surrounding a central [well] that bubbles up fresh [water] from an unknown source[first time] (Wells would undoubtable know the engineering behind such a feat)[only]. Mosaic [murals] surround the walls."
	
The printed name of Inside Dome is "Inside the Domed Building"

The oculus is a thing.
The oculus is scenery in the Inside Dome.

The tables are a thing.
The tables are scenery in the Inside Dome.

The well is a thing.
The well is scenery in the Inside Dome.

The water is a thing.
The water is scenery in the Inside Dome.

The murals are a thing.
The murals are scenery in the Inside Dome.

Section 7 - Balcony

The Balcony is a room.
The Balcony is south of Inside Dome.
The description of the Balcony is "A small concrete balcony looks down on the treetops below. In the distance, through a break in the foliage, you can see a river to the sourth. To the northwest you can see the head and wings of the sphinx poking through the treetops."

Section 8 - River

The River is a room.
The River is southeast of the Clearing.

Part 5 - Characters - 1895

A person can be either fixed or mobile. 

Chapter 1 - Mrs Watchett

Watchett is a person. 
Watchett is a female. 
Watchett is fixed.
[Watchett is in the Entryway.]
Watchett is in the Kitchen.

The printed name of Watchett is "Mrs. Watchett" 
[INFO Reading Recipe 7.1 - Getting Acquainted led to reading source of extension "Punctuation Removal" which lead to "printed name of" command.]

Instead of examining Watchett: say "Gort Klaatu Barada Nikto TBD"

[INFO One line doesn't seem to work]
[Understand "mrs/watchett/cook/maid/housekeeper/old lady" as Mrs Watchett.]

[INFO On separate lines seem to work]
[Understand "mrs/watchett/old lady" as Mrs Watchett.
Understand "maid" as Mrs Watchett.
Understand "housekeeper" as Mrs Watchett.
Understand "cook" as Mrs Watchett.]

[INFO This seems to work]
Understand "mrs" or "watchett" or "watchet" or "cook" or "maid" or "housekeeper" or "old lady" as Watchett.

[INFO See Writing 17.13 New tokens for ^]

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

[TODO Mrs Watchett should linger in rooms along the way to the Kitchen. Give her table of things to do.]
[? Maybe make it a task table for each room (so I can choose a random column).]

Table of Watchett's Room Tasks
room			task
Library			"reshelves some books"
Library			"rearranges the chairs"
Library			"looks out the windows"
Library			"draws the curtains closed"


[After asking Watchett about the "front door": say "TBD."]

After asking Watchett about "workshop door": say "Locked. Always locked. Only Mr. Wells has the key."

After asking Watchett about "wells": say "Working too hard on his experiments, he is."	

[See Chapter 7.6 - Reading and Talking]

Chapter 2 - Dr Humboldt 

Humboldt is a person.
Humboldt is a male.
Humboldt is fixed.
Humboldt is in Woking Street.

The printed name of Humboldt is "Dr. Humboldt"

Understand "doctor" or "physician" or "dr" as Humboldt.

Instead of examining Humboldt: say "Dr Gort Kaatu Barada Nikto TBD"

Instead of asking Humboldt about "wells/madman/patient/lunatic": say "I don't know enought to make a proper diagnosis right now. I'll know more after a proper examination."
Instead of asking Humboldt about "exam/examination": say "First thing to do is get him to my hospital. Get him admitted and sedated. Probably won't be able to do a proper examination until he's calmed down."
Instead of asking Humboldt about "sedation": say "TBD - Just a seven percent solution. Something to calm him down and clear his mind."
Instead of asking Humboldt about "morning/tomorrow": say "I'll be back in a few hours after some observation. Maybe then we can get into that workshop of his and see what brought him to this state."
Instead of asking Humboldt about "workshop/shop": say "I know you've never been inside. None of us has." 
Instead of asking Humboldt about "self/myself/me": say "But you're his soliciter, closest thing to a friend he has. If anyone can find a way in you can."
Instead of asking Humboldt about "next steps": say "I'll be back in a few hours. If you haven't figured a way in by then we'll have to break the door down. Mrs. Watchett won't be pleased with that."

[Humboldt will give you flower petal and backstory about before he leaves]

Chapter 3 - Gernsback 
[https://bit.ly/3rYUPl8]

Gernsback is a person.
Gernsback is a male.
Gernsback is fixed.
Gernsback is in the Entryway.

[The printed name of Gernsback is "TBD."]

Part 6 - Characters - 802,701

Chapter 1 - Eloi

Chapter 2 - Weena


Part 7 - Objects - 1895

Chapter 1 - Workshop Key

Chapter 2 - Blueprints

Chapter 3 - Orrery

Chapter 4 - Fuse
[The Fuse makes the Orrery move. Same type as used in Time Machine.]

Chapter 5 - Time Machine

Chapter 6 - Flower Petal

Part 8 - Objects - 802,701

Chapter 1 - Flower

Part 9 - Help

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




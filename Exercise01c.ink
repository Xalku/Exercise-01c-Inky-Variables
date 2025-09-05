
VAR species = ""
VAR speciesN = 0
VAR id = 0
VAR money = 5
-> character_creation
== character_creation==
Welcome to the world of the Elyndar Verge. This world is full of many magics and planets. And thanks to the magic storing capabilities of Coaxus crystals, spelljamming and starfaring between planets is now possible. But, before you can jump into the world, we must first find out who you are.
*continue
-> race
==race==
This galaxy is home to many different races, what one will you choose to become?
*A human 
~ species = "Human"
~ speciesN = 1
-> gender
*An elf
~ species = "Elf"
~ speciesN = 2
-> gender
*A dwarf 
~species = "Dwarf"
~ speciesN = 3
-> gender
*A half elf 
~ species = "Half Elf"
~ speciesN = 4
-> gender
*A halfling
~ species = "Halfling"
~ speciesN = 5
-> gender
*A dragonborn 
~ species = "Dragonborn"
~ speciesN = 6
-> gender
*A gnome
~ species = "Gnome"
~ speciesN = 7
-> gender
*A half orc
~ species = "Half Orc"
~ speciesN = 8
-> gender
*A tiefling 
~ species = "Tiefling"
~ speciesN = 9
-> gender
*A goblin
~ species = "Goblin"
~ speciesN = 10
-> gender
*A tortle 
~ species = "Tortle"
~ speciesN = 11
-> gender
*An aasimar
~ species = "Aasimar"
~ speciesN = 12
-> gender
*A centaur 
~ species = "Centaur"
~ speciesN = 13
-> gender
*An aarakocra
~ species = "Aarakocra"
~ speciesN = 14
-> gender
*A warforged
~ species = "Warforged"
~ speciesN = 15
-> gender
== gender ==
A fine choice. How will you be identified?
*Male
~ id = 0
-> finalize
*Female
~ id = 1
-> finalize
*Nonbinary
~ id = 2
-> finalize
== finalize ==
Your {species} shall now be reffered to as {id==0:He|}{id==1:She|}{id==2:They|} is this alright?
*No, I want to make changes
-> race
*Yes, I am ready to start {id==0: his|}{id==1:her|}{id==2:their|} journey.
-> city_streets
== city_streets ==
Putrid rain falls on Vandros, heavy, thick. The streets, littered with trash, are illuminated by many Coaxus-powered neon signs, all about. The slum planet looks as wretched as it always has.
{pay_beggar: {id==0:He|}{id==1:She|}{id==2:They|} feel{id <2 :s|} {id==0: him|}{id==1:her|}{id==2:their|}self filled with a new sense of guidance.|{id==0:He|}{id==1:She|}{id==2:They|} walk{id < 2:s|} down the street, past beggars and mobsters, looking for something, a rundown bar named "The Final Frontier".}
*Look Around 
-> waiting

+Wander Through the City 
-> continue

*{get_map} Locate The Final Frontier
-> locate_bar
== waiting ==
{id==0:He|}{id==1:She|}{id==2:They|} scan{id < 2:s|} the surrounding area for the bar. {id==0:He|}{id==1:She|}{id==2:They|} do{id < 2:es|} not see it, but while waiting, a beggar shambles over, asking {id==0: Him|}{id==1:Her|}{id==2:Them|} for spare change.
"{speciesN > 9:I have not seen one of your kind in this place before {id==0: sir|}{id==1:madam|}. |Are you perchance a kind soul {id==0: sir|}{id==1:madam|}? }Please, anything helps."
*Provide Some Spare Change
-> pay_beggar
*Ignore
-> ignore
== continue ==
{id==0:He|}{id==1:She|}{id==2:They|} continue{id < 2:s|} winding through the streets of Vandros, the pungent smell all around {id==0: Him|}{id==1:Her|}{id==2:Them|} assaulting {id==0: him|}{id==1:her|}{id==2:their|} senses as you do. {id==0:He|}{id==1:She|}{id==2:They|} {id < 2:is|are} now lost in a new, equally disgusting part of town.
+Go Back
-> city_streets

=== pay_beggar ===
{id==0:He|}{id==1:She|}{id==2:They|} fork{id < 2:s|} up {id==0: his|}{id==1:her|}{id==2:their|} last 5 gold coins from {id==0: his|}{id==1:her|}{id==2:their|} pocket and hand{id < 2:s|} them to the beggar who takes them greatfully.
~ money = 0
"Thank you, it isn't often we find one as kind as you in these parts. You look lost. Here, take my map of the surrounding area, hopefully you can find your way."
*Take Map
-> get_map
=== get_map ===
{id==0:He|}{id==1:She|}{id==2:They|} got [Map]! May it guide {id==0: his|}{id==1:her|}{id==2:their|} way.
-> city_streets

=== ignore ===
{id==0:He|}{id==1:She|}{id==2:They|} kick{id < 2:s|} the beggar away and continue to wander through the streets. It takes hours, but {id==0:He|}{id==1:She|}{id==2:They|} eventually find{id < 2:s|} a flameless lantern lighting a sign that shows a mug held sideways with a space galleon flying towards it. Below it in faded text reads, "The Final Frontier". But it is too late, {id==0:He|}{id==1:She|}{id==2:They|} spent too much time wandering through the city and now those {id==0:He|}{id==1:She|}{id==2:They|} planned to meet here have already left.

If YOU had made different choices, maybe {id==0:He|}{id==1:She|}{id==2:They|} could have made it here on time.
-> END

=== locate_bar ===
{id==0:He|}{id==1:She|}{id==2:They|} make{id < 2:s|} {id==0: his|}{id==1:her|}{id==2:their|} way effortlessly through the city to {id==0: his|}{id==1:her|}{id==2:their|} destination. {id==0:He|}{id==1:She|}{id==2:They|} see{id < 2:s|} a flameless lantern lighting a sign that shows a mug held sideways with a space galleon flying towards it. Below it in faded text reads, "The Final Frontier". A creaking door swings slowly on its hinges as {id==0:He|}{id==1:She|}{id==2:They|} hear{id < 2:s|} voices inside.
*Enter
{id==0:He|}{id==1:She|}{id==2:They|} enter{id < 2:s|} into the bar and...

That's all for now, thanks for playing!
-> END
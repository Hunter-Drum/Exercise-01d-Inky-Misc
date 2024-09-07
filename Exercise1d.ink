/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
 
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Evening, 3 Night



-> seashore

== seashore ==
You are sitting on the beach. 
It is {advance_time()}
{time == 0: The sky is just starting to show the first light of sunrise. Just as it does every morning.} 
{time == 1: The sun is high in the sky making it hard to keep your eyes open. You have to squint to see. But what is there new to see, anyway?}
{time == 2: In the horizon you watch the sun set, colors dance in your vision and you contemplate the fleeting yet repetitive nature of existance.}
{time == 3: It is dark now. Stars twinkle above you. Their distant brilliance lost on your overactive mind.}
{&You wonder how many times you'll see this.|You wish you could see the beauty in this place like you used to.|You stopped keeping track of the days.|You stopped keeping track of the years.|It never ends, does it?| They say don't wish away time but time has never been your friend.}

+ [Wait] -> seashore
+ [Stroll down the beach.] -> beach2
-> DONE

== beach2 ==
This is further down the beach.
It is {advance_time()}
{time == 0: Why are you awake? You're up and walking so early. What's the point of it?} 
{time == 1: Do you think the sun will burn out? You heard that somewhere once.}
{time == 2: Another day gone by. Always the same. Always.}
{time == 3: They say things wait in the dark. There's creatures there. Maybe you're one of them.}
{&Don't. Don't stray past the beach. Don't go deeper. There's too many memories that way.|The wind laughs at you. Don't mind that, you deserve it anyway.|The eyes look away out of respect and fear. They know what you can do to them. Don't follow them. You know what you can become.|The ocean whispers your story to you. Ignore it. It hurts too much otherwise.}

+ [Move back up the beach] -> seashore

* {time == 0} [The tide is out. You can walk wade to get into the cave. You know you shouldn't. Or maybe you should. Perhaps a painful reminder is all you deserve.] -> cave


== cave ==
You're in the cave now. 
Why did you have to come this way? 
You can hear the cheers of the past. Swords clashing echos through the cavern right along your footsteps. 
You see the open ocean in the dark path ahead of you. You see ships on fire. Ghosts swirl in your mind, weighing on your conscience. 
* [These things aren't here. You have to face what is.]
You continue down the path. It's familar. The buzz of magic rings in your ears, no- no the magic is gone now. You made sure of that. 
Then maybe its the memory of adrenaline.
-> cont

== cont ==
*You see its corpse now. 
The deteriating frame of a once mighty and fearsome ship. 
-> ship

== ship ==
*[You traveled so far. You saw so much, the whole world was open to you.] -> world
*You became a monster. 
-> monster

== monster ==
How many lives did you ruin? 
How many lives did you end? 
The scourge of the seas. 
*The Demon pirate king. -> demon
-> END

== demon ==
You didn't start as a pirate. But the world changes. Years pass. When you live forever time finds other ways to catch up to you. 
You smuggeled dangerous magic. You sunk ships. Hell, you sunk navies. Your power went to your head. 
The worst part?
*If you could go back, you would've still made that deal. Then you would have been powerless to watch yourself become that monster all over again. 
You lost youself. But now here stranded on your island for a dacade you've come back to your senses. 
This is where you're meant to be. 
The ocean isn't yours anymore. 
You will be here until the sun burns out. -> over

-> END

== over ==
*[Go back to the beach.]
You have to swim to get out of the cave. That's fine. Not like you need to breathe anyway. 
You get to the beach. 
It is {advance_time()}

-> up

== up ==
+ [Move back up the beach] -> seashore2
-> END

== seashore2 ==
You are sitting on the beach. 
It is {advance_time()}
{time == 0: The sky is just starting to show the first light of sunrise. Just as it does every morning.} 
{time == 1: There's an overcast. Odd.}
{time == 2: In the horizon you watch the sun set, colors dance in your vision and you contemplate the fleeting yet repetitive nature of existance.}
{time == 3: It is dark now. Stars twinkle above you. Their distant brilliance lost on your overactive mind.}
{&You wonder how many times you'll see this.|You wish you could see the beauty in this place like you used to.|You stopped keeping track of the days| That's different.}

+ {time != 1} [Wait] -> seashore2
* {time == 1} [There's a storm brewing out over the ocean. You miss the storms. The sky is always clear here...]
Unless some unlucky sailer has gotten too close. 

-> END


== world ==
You remember a time before the ocean. When there was one land. One land you had only seen one small part of. 
The farm you were born on. The farm you worked on. You were just some human kid with dreams of being so much more. Of seeing so much more. 
You were nothing.  
Life had no meaning.
But then the lands divided and you were the first to take to the seas. 
And you became so much more. You went everwhere. You weren't some landlocked human kid destined to be a farmer forever anymore. 
You were a merchant, an adventurer. You did good... at the start. 
*The world was so big back then. 
Now your world is so small. 
You have never felt so trapped. 
But you deserve it, don't you? 

-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 3:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Evening"
            
        - time == 3:
            ~ return "Night"
            
    
    
    }
    
    
        
    ~ return time
    
    
    

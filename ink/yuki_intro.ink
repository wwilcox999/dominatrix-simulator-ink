=== yuki_intro ===
{ web: -> select_gender -> }

/scene foyer
/character yuki
/equip feather_duster

{ web:
    <blockquote><i>You are disoriented for a moment as everything turns black and the scene around you changes.</i></blockquote>

    <blockquote><i>You stand inside a large Victorian foyer with a sweeping staircase and several sets of doors leading off of it. The room is fairly well lit, but all of the doors are shrouded in shadows. Before you stands a lithe, young woman dressed in a maid's uniform. Beaming a bright smile, she greets you...</i></blockquote>

    + [Start]
}

VAR obedience = 0

- (start) Oh! There you are!

/perform bounces

I’ve been waiting for you.
I'm  Mistress Yuki-Onna.

/perform serious

It’s my job to make sure all new arrivals are processed 
and taught the basics of how to behave 
while you’re a guest in Goddess’s home.

/wait

- (new_guest)
Do you know why you're here?

 + [yes]
  ~ obedience++
    I don't see how you'd know that already.
    Someone must have told you.
   
    /perform sighs
    
    Well, let's go through the basics anyways, 
    to make sure you have the right information. 
    
    /wait
    
+ [no]
~ obedience--
    Well, duh!
    You're not supposed to know.
    That's the fun part!
    
    /perform clasp_hands
    
+ [timeout]
    Hello-o
    Anybody home?
    /perform cocks_head_to_left
    -> new_guest
    
+ [distracted] -> PayAttention -> new_guest

- (house_rules)
You are a guest of Threshold House.
Well, we call it a house, but it's not really one...

/perform thoughtful
/perform serious

All guests must follow the rules
or they will not be allowed to stay.

- (learn_rules)
Would you like to know what the rules are?

+ [yes]
~ obedience++
    /perform excited
    Oh goody! I love telling people the house rules!

+ [no]
~ obedience--
    /perform disappointed
    Don't be a pouty baby.
    You have to learn the rules or you can't be a good {player_name}!

+ [timeout]
    /perform confused
    You aren't listening very well.
    -> learn_rules
    
+ [distracted] -> PayAttention -> learn_rules
    
- (two_rules)

[wait]

/perform bounces
The rules are simple!
And there are only two of them!

/perform one_finger

Answer questions when you're asked.

/perform two_fingers

Follow directions when they're given.

/perform open_arms_shrug

Disobey and be punished.
Obey and be rewarded.

/perform clasp_hands

- (easy_rules)
Easy, right?

+ [yes]
~ obedience++
    I know! Our Goddess is so kind!

+ [no]
~ obedience--
    Oh! Don't worry. You'll learn fast!

+ [timeout]
    Are you still listening?
    -> easy_rules
    
+ [distracted] -> PayAttention -> easy_rules

- /perform squirm
You are a cute one! I really hope you do well here!
I'm only allowed to enjoy the good ones!

- (good_yuki)
Do you want to be a good {player_name}?

+ [yes]
~ obedience++
    /perform bounces
    Yay! We'll have so much fun together!

+ [no]
~ obedience--
    /perform pouty
    Oh darn. I really hope you'll change your mind.

+ [timeout]
    Hello? Anybody home?
    -> good_yuki

+ [distracted] -> PayAttention -> good_yuki

- (nega_interruption)

/character nega saunter
Oh please! You're always such a good girl, Yuki,
never having any fun.
Don't you want to live a little?
Bend the rules once in a while and really let loose?

/character Yuki scoff
Ugh.

/character nega approach_yuki
//use whisper voice
I know you do. 
I know you're deepest, darkest secrets.
Remember?

+ [wait 5]
 
- /character Yuki
You just stop that right now, Nega-Yuki!
I want my own room someday. 
There's no way I'm breaking the rules!
I really want the Goddess to be pleased with me.

/character nega scoffs
Ugh.. You're such a goody two-shoes.
It's so much more fun when you bend the rules once in a while.

-(new_one)
/perform curious
So. You're the new one, huh?

+ [yes]
~ obedience++
    /perform inspect
    Not too bad. You have potential.
    Though, I'm not too picky.

+ [no]
~ obedience--
    /perform laugh
    Not new, huh?
    This one is more confused than most.

+ [timeout]
    /perform confused
    Are you stupid, or something?
    I asked you if you're new here.
    -> new_one
    
+ [distracted] -> PayAttention -> new_one

- /perform sneer
I bet Yuki's been having so much fun
explaining the rules to you 
and telling you how to be a good {player_name},
hasn't she?

+ [yes]
~ obedience++
    /perform bored
    Boring.

+ [no]
~ obedience--
    /perform pleased
    A little liar. 
    We're going to get along just fine.

+ [timeout]

- /perform scoff
Don't let her fool you. 
She's not as sweet and innocent as she lets on.
Have you figured out what's going on here yet?

- (going_on)

+ [yes]
~ obedience--
    /perform curious
    Hmmm. You might just be smarter than you look, {player_name}.
    We'll find out soon enough.
    /perform sassy
    Although, honestly, the dumb ones make better fuck toys.

+ [no]
~ obedience++
    /perform rolls_eyes
    Typical. <I>She</I> always wants them to learn the hard way.
    
    /perform amused
    I think I should tell {player_him}.
    /character Yuki frustrated
    Don't you dare!
    The Goddess will be so angry with you!
    /character nega interested
    Oh fine, party pooper!
    I guess I'll just make {player_him} my fuck toy instead.
    
+ [timeout]
    /perform confused
    Are you stupid, or something?
    I asked you if you're new here?
    -> going_on
    

- /perform breast_squeeze
I bet that {isBoy:cock|cunt} of yours works just fine.
Let's find out. Shall we?

-(genitals)

+ [yes]
~ obedience--
    /perform amused
    Ooo. I'm going to like this one. {player_he} likes to be naughty.

+ [no]
~ obedience++
    /perform bored
    Oh great. Another spoil-sport, just like you Yuki.

+ [timeout]
    Should we find out how well your {isBoy:dick|pussy} works?
    -> genitals
    
+ [distracted] -> PayAttention -> genitals

- /character Yuki flustered
Behave, Nega! 

/character nega caress_genitals

That's it...
Let me feel your {isBoy:cock swell|pussy dampen}.

Mmmm. Just as I thought.
You want to be a little fuck toy, don't you?

- (caress_genitals)
+ [yes]
~ obedience--
    /perform chuckle
    What a naughty {player_name}.
    I feel how {isBoy:hard|wet} you are.
    Do you want to be my fuck toy?
    
    ++ [yes]
   ~ obedience--
        Too bad. I only use fuck toys that have something to give me first.
        And you have nothing I want.
        /perform straighten_up
    
    ++ [no]
    ~ obedience++
        No? You don't like me?
        Awww. But I'm way more fun that that uptight bitch.
        /perform head_toss
    
    ++ [timeout]
        I must be boring you.
    
+ [no] 
~ obedience++
    /perform head_toss
    What a prude. You'll change your mind soon enough.
    They always do.

+ [timeout]
    Well, do you want to be used and abused?
    -> caress_genitals

- The Mistresses here are going to have fun 
tearing up that little ass of yours.

/perform approach
//nega whispers
<I>Tick tock little mouse.
<I>You might want to run.
<I>You're trapped in this house.
<I>And we own your cum.</I>
/perform laugh

+ [wait 5]

{obedience > 0:
    - -> Yuki_finish
    - else: -> Nega_finish
}
= Yuki_finish
/character Yuki foot_stomp
That's enough, Nega!
No more fun and games for you.
I'll be reporting you to the Headmistress straight away.

/character nega laugh
I'll see you again soon, little mouse.
Come find me when you've earned a reward.
/perform nega_exit

+ [wait 5]

-/character Yuki angry
I just hate her.

+[wait 3]

- /perform thoughtful
Now... where was I?
Right! The house!

/perform bounces
Don't listen to her, by the way.
This is a great house. 
And you're going to learn a lot!
Goddess has invited lots of Mistresses and Dominas to live here.

/perform serious
Would you like me to tell you more about the House?

+[yes]
Good. I'm glad Nega-Yuki didn't distract you too much.
Your poor {isBoy:penis|pussy} must be aching after that.

+[no]
/perform frown
Don't let that Nega-Yuki make you naughty.
You have to know how the House works.

+[timeout]

-
/perform serious
If you work real hard and be the best {player_name} you can be,
you might be lucky enough to earn a reward from your favorite Mistress!
    
If you misbehave or struggle too much with instructions,
you might earn a punishment.

/perform sad
The worst part is you can't collect any rewards 
until you've paid off all your punishment marks.

/perform idle
Do you understand that you will earn both
rewards and punishments for your service here?

+ [yes]
    /perform nod 
    Good listening!

+ [no]
    Tsk tsk. It's not good to make a Mistress repeat herself.
    Ahem. When you visit a Mistress and are required to serve,
    you will be evaluated for your performance.
    You will earn a mark for good behavior or bad behavior.
    All bad marks earn you punishments.
    You will have to serve all your punishments before
    you can receive your reward.

- + [wait 5]
//somehow make clipboard appear or other visual aid for feeding back to player how they are doing
- /perform check_clipboard
And I see you already have one of each mark on your record.

One punishment for sneaking into the Goddess's room.
Naughty {player_name}.

And one reward for catching the Goddess's interest.
Well done!

+ [wait 5]

- /perform approach
Watch out for that awful Nega-Yuki. She's a bad seed!
All the naughty parts of me I tossed aside.

/perform serious
She'll try to tempt you to give her your rewards for her own use
in exchange for a good time.

/perform annoyed
But it's just a trick!
She won't always reward you and if you get caught,
you'll be punished!

+ [wait 5]

- /perform check_clipboard

Great! That's everything I have to cover in my notes!
Time for for you to go see Headmistress Sonia.
She will teach you how to properly take a punishment.

/perform bounces
Hurry up now!
She doesn't like to be kept waiting.

//need to know how player gets to next room
-> END

= Nega_finish
/character Yuki foot_stomp
That's enough, Nega!
You are interfering with my role too much!
I'm reporting you to the Headmistress straight away.
/perform yuki_exit

/character nega laugh
You go run off, little Yuki, 
and tell the Headmistress all about 
how naughty I've been.

/perform sassy
Now we can really have some fun!

/perform Nega_skirt_lift
Though I suppose I should at least
tell you about rewards and punishments.
I do want you to give me your rewards, after all.
-
/perform thoughtful
Shall I rub your poor aching {isBoy: cock|cunt} again
while I do?

+[yes]
/perform caress_genitals
Mmmm. That's it. 
We're going to find out just how naughty 
you like to be.

+[no]
/perform frown
Don't tell me I've made a mistake in 
paying attention to you.

- 
/perform dance_tease
Be a good {player_name}, do what you're told, and 
that little {isBoy: cock|cunt} of yours is going to
throb with the excitement of earning a reward.
    
But, if you decide to be a little {isBoy: prick|bitch},
or take too much time following directions, 
you'll be a sad little slut when you get a punishment.

/perform laugh
The best part is you can't collect any rewards 
until you've paid off all your punishment marks.

/perform idle
Get it, bitch? You're going to earn both punishments
and rewards during your time here.

+ [yes]
    /perform nod 
    That's a good slut.

+ [no]
    You're wasting my fucking time.
    You're going to be used 
    by a lot of bitches better than you.
    Behave and earn a reward.
    Fuck up and earn a punishment.
    And all punishments are going to be extracted
    from you before you ever get a chance
    to see a reward.

//somehow make clipboard appear or other visual aid for feeding back to player how they are doing
- /perform check_clipboard
//sarcastic voice
Oh. Goody. Time to tell you how you're doing.

//mocking Yuki
You've earned one punishment and one reward.

/perform sassy
You've been a very bad {isBoy: dog|bitch}.
You snuck into the Goddess's room
and now you're going to get punished!
Nicely done.

Looks like that tight little ass of yours
is already getting you out of trouble.
You're being rewarded for getting her attention.

+ [wait 5]

- /perform approach
I suggest you ignore that annoying little Yuki 
when she tells you to behave.
She thought she could shove down all her dirty thoughts 
by casting me aside...
But here I am!

/perform sassy
I want something from you.
When you've groveled your way to a reward,
come find me.

/perform breast_squeeze
I might make it worth your while.
Either way... 
one of us will have a good time.
- + [wait 5]

- /perform inspection

I'm bored with you. 
Time to get a taste of your first punishment.
Better get your ass to the Headmistress.
She doesn't like to be kept waiting.

//need to know how player gets to next room
-> END


= PayAttention

{ cycle:
    - You're not very good at this yet, are you?
    You're supposed to look at me when I'm talking.
    - Bad {player_name}! You should look at me when I speak to you.
    - Oh gee. You need a lot of training. Look at me.
    - Didn't anyone ever teach you to look at people 
    when they're speaking to you?
    - It's very rude not to look at me when I'm speaking to you.
}

+ [paying_attention]
    { cycle:
        - Now... what was I saying? Oh right...
        - Much better. Ahem.
        - Good {player_name}. You might be teachable after all.
        - Now back to your instructions.
    }
    ->->

+ [timeout] -> PayAttention


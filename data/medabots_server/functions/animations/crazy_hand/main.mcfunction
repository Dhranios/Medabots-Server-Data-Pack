execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["dying"]} run scoreboard players set @s[tag=!dying] AnimationProg 0
execute unless data storage medabots_server:data crazy_hand{tags:["appeared"]} run tag @s add appearing
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["catch"]} run scoreboard players set @s[tag=!catch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["applaud"]} run scoreboard players set @s[tag=!applaud] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["double_punch"]} run scoreboard players set @s[tag=!double_punch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["grab"]} run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["grab_success"]} run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["jet"]} run scoreboard players set @s[tag=!jet] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["ram"]} run scoreboard players set @s[tag=!ram] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["punch"]} run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["fake_out"]} run scoreboard players set @s[tag=!fake_out] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["drill"]} run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["slap"]} run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["sweep"]} run scoreboard players set @s[tag=!sweep] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["crush"]} run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["poke"]} run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["lasers"]} run scoreboard players set @s[tag=!lasers] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["crawl"]} run scoreboard players set @s[tag=!crawl] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["crawl_stop"]} run scoreboard players set @s[tag=!crawl_stop] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["bombs"]} run scoreboard players set @s[tag=!bombs] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data crazy_hand{tags:["spasm"]} run scoreboard players set @s[tag=!spasm] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:data crazy_hand.tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=hand,tag=!dying] run function medabots_server:animations/crazy_hand/hand
execute if entity @s[tag=thumb,tag=!dying] run function medabots_server:animations/crazy_hand/thumb
execute if entity @s[tag=index_finger,tag=!dying] run function medabots_server:animations/crazy_hand/index_finger
execute if entity @s[tag=middle_finger,tag=!dying] run function medabots_server:animations/crazy_hand/middle_finger
execute if entity @s[tag=ring_finger,tag=!dying] run function medabots_server:animations/crazy_hand/ring_finger
execute if entity @s[tag=pinkie,tag=!dying] run function medabots_server:animations/crazy_hand/pinkie
execute if entity @s[tag=hand,tag=dying] run function medabots_server:animations/crazy_hand/death/hand
execute if entity @s[tag=thumb,tag=dying] run function medabots_server:animations/crazy_hand/death/thumb
execute if entity @s[tag=index_finger,tag=dying] run function medabots_server:animations/crazy_hand/death/index_finger
execute if entity @s[tag=middle_finger,tag=dying] run function medabots_server:animations/crazy_hand/death/middle_finger
execute if entity @s[tag=ring_finger,tag=dying] run function medabots_server:animations/crazy_hand/death/ring_finger
execute if entity @s[tag=pinkie,tag=dying] run function medabots_server:animations/crazy_hand/death/pinkie
tag @s remove crazy_hand
tag @s add found_owner
tag @s add found_owner_2
tag @s[tag=!appearing] remove was_appearing
tag @s[tag=appearing] add was_appearing
tag @s[tag=appearing] remove appearing
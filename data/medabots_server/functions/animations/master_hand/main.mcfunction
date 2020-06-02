data modify storage medabots_server:master_hand Tags set from entity @e[type=minecraft:ghast,tag=this_master_hand,limit=1] Tags
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["dying"]} run scoreboard players set @s[tag=!dying] AnimationProg 0
execute unless data storage medabots_server:master_hand {Tags:["appeared"]} run tag @s add appearing
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["catch"]} run scoreboard players set @s[tag=!catch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["applaud"]} run scoreboard players set @s[tag=!applaud] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["double_punch"]} run scoreboard players set @s[tag=!double_punch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["fast_idle"]} run scoreboard players set @s[tag=!fast_idle] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["grab"]} run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["grab_success"]} run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["jet"]} run scoreboard players set @s[tag=!jet] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["ram"]} run scoreboard players set @s[tag=!ram] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["punch"]} run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["fake_out"]} run scoreboard players set @s[tag=!fake_out] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["drill"]} run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["walk_start"]} run scoreboard players set @s[tag=!walk_start] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["walk"]} run scoreboard players set @s[tag=!walk] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["walk_stop"]} run scoreboard players set @s[tag=!walk_stop] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["walk_kick"]} run scoreboard players set @s[tag=!walk_kick] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["slap"]} run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["sweep"]} run scoreboard players set @s[tag=!sweep] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["crush"]} run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["poke"]} run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["gun_1"]} run scoreboard players set @s[tag=!gun_1] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["gun_3"]} run scoreboard players set @s[tag=!gun_3] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["dash"]} run scoreboard players set @s[tag=!dash] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:master_hand {Tags:["lasers"]} run scoreboard players set @s[tag=!lasers] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:master_hand Tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=hand,tag=!dying] run function medabots_server:animations/master_hand/hand
execute if entity @s[tag=thumb,tag=!dying] run function medabots_server:animations/master_hand/thumb
execute if entity @s[tag=index_finger,tag=!dying] run function medabots_server:animations/master_hand/index_finger
execute if entity @s[tag=middle_finger,tag=!dying] run function medabots_server:animations/master_hand/middle_finger
execute if entity @s[tag=ring_finger,tag=!dying] run function medabots_server:animations/master_hand/ring_finger
execute if entity @s[tag=pinkie,tag=!dying] run function medabots_server:animations/master_hand/pinkie
execute if entity @s[tag=hand,tag=dying] run function medabots_server:animations/master_hand/death/hand
execute if entity @s[tag=thumb,tag=dying] run function medabots_server:animations/master_hand/death/thumb
execute if entity @s[tag=index_finger,tag=dying] run function medabots_server:animations/master_hand/death/index_finger
execute if entity @s[tag=middle_finger,tag=dying] run function medabots_server:animations/master_hand/death/middle_finger
execute if entity @s[tag=ring_finger,tag=dying] run function medabots_server:animations/master_hand/death/ring_finger
execute if entity @s[tag=pinkie,tag=dying] run function medabots_server:animations/master_hand/death/pinkie
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2
tag @s[tag=!appearing] remove was_appearing
tag @s[tag=appearing] add was_appearing
tag @s[tag=appearing] remove appearing
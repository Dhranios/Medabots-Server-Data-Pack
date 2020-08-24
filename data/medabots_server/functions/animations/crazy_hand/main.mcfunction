data modify storage medabots_server:crazy_hand Tags set from entity @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] Tags
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["dying"]} run scoreboard players set @s[tag=!dying] AnimationProg 0
execute unless data storage medabots_server:crazy_hand {Tags:["appeared"]} run tag @s add appearing
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["catch"]} run scoreboard players set @s[tag=!catch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["applaud"]} run scoreboard players set @s[tag=!applaud] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["double_punch"]} run scoreboard players set @s[tag=!double_punch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["grab"]} run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["grab_success"]} run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["jet"]} run scoreboard players set @s[tag=!jet] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["ram"]} run scoreboard players set @s[tag=!ram] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["punch"]} run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["fake_out"]} run scoreboard players set @s[tag=!fake_out] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["drill"]} run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["slap"]} run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["sweep"]} run scoreboard players set @s[tag=!sweep] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["crush"]} run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["poke"]} run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["lasers"]} run scoreboard players set @s[tag=!lasers] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["crawl"]} run scoreboard players set @s[tag=!crawl] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["crawl_stop"]} run scoreboard players set @s[tag=!crawl_stop] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["bombs"]} run scoreboard players set @s[tag=!bombs] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:crazy_hand {Tags:["spasm"]} run scoreboard players set @s[tag=!spasm] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:crazy_hand Tags[]
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
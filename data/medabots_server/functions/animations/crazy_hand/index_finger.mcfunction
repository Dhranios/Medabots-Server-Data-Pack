# Move with
execute at @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.4 ^0.5

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=!appeared,limit=1] run tag @s add appearing
execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/index_finger
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[tag=!appearing] remove was_appearing
tag @s[tag=appearing] add was_appearing
tag @s[tag=appearing] remove appearing

execute if entity @s[tag=!was_appearing,tag=!grab,tag=!grab_success,tag=!ram,tag=!punch,tag=!drill,tag=!slap,tag=!crush,tag=!poke] run function medabots_server:animations/crazy_hand/idle/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab,limit=1] run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab,limit=1] run tag @s add grab
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab_success,limit=1] run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=grab_success,limit=1] run tag @s add grab_success
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=ram,limit=1] run scoreboard players set @s[tag=!ram] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=ram,limit=1] run tag @s add ram
execute if entity @s[tag=ram] run function medabots_server:animations/crazy_hand/ram/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=punch,limit=1] run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=punch,limit=1] run tag @s add punch
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=drill,limit=1] run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=drill,limit=1] run tag @s add drill
execute if entity @s[tag=drill] run function medabots_server:animations/crazy_hand/drill/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=slap,limit=1] run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=slap,limit=1] run tag @s add slap
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crush,limit=1] run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=crush,limit=1] run tag @s add crush
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=poke,limit=1] run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_crazy_hand,tag=poke,limit=1] run tag @s add poke
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/index_finger


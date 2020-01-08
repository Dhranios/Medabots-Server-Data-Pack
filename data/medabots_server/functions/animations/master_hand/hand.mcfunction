# Move with
execute at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^ ^

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab,limit=1] run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab,limit=1] run tag @s add grab
execute if entity @s[tag=grab] run function medabots_server:animations/master_hand/grab/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab_success,limit=1] run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab_success,limit=1] run tag @s add grab_success
execute if entity @s[tag=grab_success] run function medabots_server:animations/master_hand/grab_success/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=punch,limit=1] run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=punch,limit=1] run tag @s add punch
execute if entity @s[tag=punch] run function medabots_server:animations/master_hand/punch/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=drill,limit=1] run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=drill,limit=1] run tag @s add drill
execute if entity @s[tag=drill] run function medabots_server:animations/master_hand/drill/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_start,limit=1] run scoreboard players set @s[tag=!walk_start] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_start,limit=1] run tag @s add walk_start
execute if entity @s[tag=walk_start] run function medabots_server:animations/master_hand/walk_start/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_stop,limit=1] run scoreboard players set @s[tag=!walk_stop] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_stop,limit=1] run tag @s add walk_stop
execute if entity @s[tag=walk_stop] run function medabots_server:animations/master_hand/walk_stop/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_kick,limit=1] run scoreboard players set @s[tag=!walk_kick] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_kick,limit=1] run tag @s add walk_kick
execute if entity @s[tag=walk_kick] run function medabots_server:animations/master_hand/walk_kick/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=slap,limit=1] run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=slap,limit=1] run tag @s add slap
execute if entity @s[tag=slap] run function medabots_server:animations/master_hand/slap/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=crush,limit=1] run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=crush,limit=1] run tag @s add crush
execute if entity @s[tag=crush] run function medabots_server:animations/master_hand/crush/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=poke,limit=1] run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=poke,limit=1] run tag @s add poke
execute if entity @s[tag=poke] run function medabots_server:animations/master_hand/poke/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_1,limit=1] run scoreboard players set @s[tag=!gun_1] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_1,limit=1] run tag @s add gun_1
execute if entity @s[tag=gun_1] run function medabots_server:animations/master_hand/gun_1/hand

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_3,limit=1] run scoreboard players set @s[tag=!gun_3] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_3,limit=1] run tag @s add gun_3
execute if entity @s[tag=gun_3] run function medabots_server:animations/master_hand/gun_3/hand
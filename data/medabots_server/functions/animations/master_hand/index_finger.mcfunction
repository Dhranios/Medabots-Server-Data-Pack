# Move with
execute at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.4 ^0.5

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=!appeared,limit=1] run tag @s add appearing
execute if entity @s[tag=appearing] run function medabots_server:animations/master_hand/appearing/index_finger
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[tag=!appearing] remove was_appearing
tag @s[tag=appearing] add was_appearing
tag @s[tag=appearing] remove appearing

execute if entity @s[tag=!was_appearing,tag=!fast_idle,tag=!grab,tag=!grab_success,tag=!ram,tag=!punch,tag=!drill,tag=!walk_start,tag=!walk,tag=!walk_stop,tag=!walk_kick,tag=!slap,tag=!crush,tag=!poke,tag=!gun_1,tag=!gun_3,tag=!dash] run function medabots_server:animations/master_hand/idle/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=fast_idle,limit=1] run scoreboard players set @s[tag=!fast_idle] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=fast_idle,limit=1] run tag @s add fast_idle
execute if entity @s[tag=fast_idle] run function medabots_server:animations/master_hand/fast_idle/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab,limit=1] run scoreboard players set @s[tag=!grab] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab,limit=1] run tag @s add grab
execute if entity @s[tag=grab] run function medabots_server:animations/master_hand/grab/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab_success,limit=1] run scoreboard players set @s[tag=!grab_success] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab_success,limit=1] run tag @s add grab_success
execute if entity @s[tag=grab_success] run function medabots_server:animations/master_hand/grab_success/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=ram,limit=1] run scoreboard players set @s[tag=!ram] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=ram,limit=1] run tag @s add ram
execute if entity @s[tag=ram] run function medabots_server:animations/master_hand/ram/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=punch,limit=1] run scoreboard players set @s[tag=!punch] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=punch,limit=1] run tag @s add punch
execute if entity @s[tag=punch] run function medabots_server:animations/master_hand/punch/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=drill,limit=1] run scoreboard players set @s[tag=!drill] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=drill,limit=1] run tag @s add drill
execute if entity @s[tag=drill] run function medabots_server:animations/master_hand/drill/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_start,limit=1] run scoreboard players set @s[tag=!walk_start] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_start,limit=1] run tag @s add walk_start
execute if entity @s[tag=walk_start] run function medabots_server:animations/master_hand/walk_start/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk,limit=1] run scoreboard players set @s[tag=!walk] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk,limit=1] run tag @s add walk
execute if entity @s[tag=walk] run function medabots_server:animations/master_hand/walk/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_stop,limit=1] run scoreboard players set @s[tag=!walk_stop] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_stop,limit=1] run tag @s add walk_stop
execute if entity @s[tag=walk_stop] run function medabots_server:animations/master_hand/walk_stop/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_kick,limit=1] run scoreboard players set @s[tag=!walk_kick] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=walk_kick,limit=1] run tag @s add walk_kick
execute if entity @s[tag=walk_kick] run function medabots_server:animations/master_hand/walk_kick/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=slap,limit=1] run scoreboard players set @s[tag=!slap] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=slap,limit=1] run tag @s add slap
execute if entity @s[tag=slap] run function medabots_server:animations/master_hand/slap/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=crush,limit=1] run scoreboard players set @s[tag=!crush] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=crush,limit=1] run tag @s add crush
execute if entity @s[tag=crush] run function medabots_server:animations/master_hand/crush/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=poke,limit=1] run scoreboard players set @s[tag=!poke] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=poke,limit=1] run tag @s add poke
execute if entity @s[tag=poke] run function medabots_server:animations/master_hand/poke/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_1,limit=1] run scoreboard players set @s[tag=!gun_1] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_1,limit=1] run tag @s add gun_1
execute if entity @s[tag=gun_1] run function medabots_server:animations/master_hand/gun_1/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_3,limit=1] run scoreboard players set @s[tag=!gun_3] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=gun_3,limit=1] run tag @s add gun_3
execute if entity @s[tag=gun_3] run function medabots_server:animations/master_hand/gun_3/index_finger

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=dash,limit=1] run scoreboard players set @s[tag=!dash] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=dash,limit=1] run tag @s add dash
execute if entity @s[tag=dash] run function medabots_server:animations/master_hand/dash/index_finger
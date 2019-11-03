# Move with
execute at @e[type=minecraft:ghast,tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^0.4 ^0.5

# Look left/right
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[type=minecraft:ghast,tag=this_master_hand,limit=1] Rotation[0] 100
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=!appeared,limit=1] run tag @s add appearing
execute if entity @s[tag=appearing] run function medabots_server:animations/master_hand/appearing/ring_finger
scoreboard players set @s[tag=!appearing,tag=was_appearing] AnimationProg 0
data merge entity @s[tag=!appearing,tag=was_appearing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[tag=!appearing] remove was_appearing
tag @s[tag=appearing] add was_appearing
tag @s[tag=appearing] remove appearing

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=idle,limit=1] run tag @s add idle
execute if entity @s[tag=idle] run function medabots_server:animations/master_hand/idle/ring_finger
scoreboard players set @s[tag=!idle,tag=was_idle] AnimationProg 0
data merge entity @s[tag=!idle,tag=was_idle] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[tag=!idle] remove was_idle
tag @s[tag=idle] add was_idle
tag @s[tag=idle] remove idle

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=fast_idle,limit=1] run tag @s add fast_idle
execute if entity @s[tag=fast_idle] run function medabots_server:animations/master_hand/fast_idle/ring_finger
scoreboard players set @s[tag=!fast_idle,tag=was_fast_idle] AnimationProg 0
tag @s[tag=!fast_idle] remove was_fast_idle
tag @s[tag=fast_idle] add was_fast_idle
tag @s[tag=fast_idle] remove fast_idle

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab,limit=1] run tag @s add grab
execute if entity @s[tag=grab] run function medabots_server:animations/master_hand/grab/ring_finger
scoreboard players set @s[tag=!grab,tag=was_grab] AnimationProg 0
tag @s[tag=!grab] remove was_grab
tag @s[tag=grab] add was_grab
tag @s[tag=grab] remove grab

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=grab_success,limit=1] run tag @s add grab_success
execute if entity @s[tag=grab_success] run function medabots_server:animations/master_hand/grab_success/ring_finger
scoreboard players set @s[tag=!grab_success,tag=was_grab_success] AnimationProg 0
tag @s[tag=!grab_success] remove was_grab_success
tag @s[tag=grab_success] add was_grab_success
tag @s[tag=grab_success] remove grab_success

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=ram,limit=1] run tag @s add ram
execute if entity @s[tag=ram] run function medabots_server:animations/master_hand/ram/ring_finger
scoreboard players set @s[tag=!ram,tag=was_ram] AnimationProg 0
tag @s[tag=!ram] remove was_ram
tag @s[tag=ram] add was_ram
tag @s[tag=ram] remove ram

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=punch,limit=1] run tag @s add punch
execute if entity @s[tag=punch] run function medabots_server:animations/master_hand/punch/ring_finger
scoreboard players set @s[tag=!punch,tag=was_punch] AnimationProg 0
tag @s[tag=!punch] remove was_punch
tag @s[tag=punch] add was_punch
tag @s[tag=punch] remove punch

execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=drill,limit=1] run tag @s add drill
execute if entity @s[tag=drill] run function medabots_server:animations/master_hand/drill/ring_finger
scoreboard players set @s[tag=!drill,tag=was_drill] AnimationProg 0
tag @s[tag=!drill] remove was_drill
tag @s[tag=drill] add was_drill
tag @s[tag=drill] remove drill
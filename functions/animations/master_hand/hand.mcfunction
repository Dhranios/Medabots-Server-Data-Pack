# Move with
#execute at @e[tag=this_master_hand,limit=1] rotated ~ 0 run teleport @s ^ ^ ^

# Look left/right
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_master_hand,limit=1] Rotation[0] 100
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

execute if entity @e[tag=this_master_hand,tag=grab,limit=1] run tag @s add grab
execute if entity @s[tag=grab] run function medabots_server:animations/master_hand/grab/hand
scoreboard players set @s[tag=!grab,tag=was_grab] AnimationProg 0
tag @s[tag=!grab] remove was_grab
tag @s[tag=grab] add was_grab
tag @s[tag=grab] remove grab

execute if entity @e[tag=this_master_hand,tag=grab_success,limit=1] run tag @s add grab_success
execute if entity @s[tag=grab_success] run function medabots_server:animations/master_hand/grab_success/hand
scoreboard players set @s[tag=!grab_success,tag=was_grab_success] AnimationProg 0
tag @s[tag=!grab_success] remove was_grab_success
tag @s[tag=grab_success] add was_grab_success
tag @s[tag=grab_success] remove grab_success

execute if entity @e[tag=this_master_hand,tag=punch,limit=1] run tag @s add punch
execute if entity @s[tag=punch] run function medabots_server:animations/master_hand/punch/hand
scoreboard players set @s[tag=!punch,tag=was_punch] AnimationProg 0
tag @s[tag=!punch] remove was_punch
tag @s[tag=punch] add was_punch
tag @s[tag=punch] remove punch

execute if entity @e[tag=this_master_hand,tag=drill,limit=1] run tag @s add drill
execute if entity @s[tag=drill] run function medabots_server:animations/master_hand/drill/hand
scoreboard players set @s[tag=!drill,tag=was_drill] AnimationProg 0
tag @s[tag=!drill] remove was_drill
tag @s[tag=drill] add was_drill
tag @s[tag=drill] remove drill
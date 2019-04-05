# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute rotated ~ 0 run teleport @s[tag=!sneak_pos] ^-.25 ^-.35 ^-.3
execute rotated ~ 0 run teleport @s[tag=sneak_pos] ^-.25 ^-.45 ^-.3
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,limit=1] Rotation[0] 100

# Look up/down
execute if entity @s[tag=selected] unless entity @s[nbt={Pose:{Head:[0.0f]}}] run data merge entity @s {Pose:{Head:[0.0f,0.001f,0.0f]}}
execute if entity @s[tag=selected] store result score #temp Time run data get entity @e[tag=this_medabot,limit=1] Rotation[1] 1
execute if entity @s[tag=selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= #70 Constants
scoreboard players reset #temp Time

# Equipped arms
execute if entity @a[nbt={SelectedItemSlot:2},tag=this_medabot,limit=1] run tag @s add selected
execute if entity @e[type=!minecraft:player,tag=right_arm_selected,tag=this_medabot,limit=1] run tag @s add selected
execute if entity @s[tag=selected] unless entity @a[tag=this_medabot,limit=1,nbt={SelectedItemSlot:2}] unless entity @e[tag=this_medabot,limit=1,type=!minecraft:player,tag=right_arm_selected] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute if entity @s[tag=selected] unless entity @a[tag=this_medabot,limit=1,nbt={SelectedItemSlot:2}] unless entity @e[tag=this_medabot,limit=1,type=!minecraft:player,tag=right_arm_selected] run tag @s remove selected

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute if entity @a[tag=walking,tag=this_medabot,limit=1] run tag @s add walking
execute if entity @a[tag=running,tag=this_medabot,limit=1] run tag @s add running
execute if entity @a[tag=sneaking,tag=this_medabot,limit=1] run tag @s add sneaking
execute if entity @e[nbt={OnGround:0b},tag=this_medabot,limit=1] run tag @s add in_air
data merge entity @s[tag=!selected,tag=!walking,tag=!running,tag=!sneaking] {Pose:{Head:[0.0f,0.0f,0.001f]}}
execute at @e[tag=medabot_model,tag=legs,nbt={ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] if score @e[tag=medabot_model,tag=legs,limit=1,distance=..0.1,sort=nearest] MedabotNr = @s MedabotNr run tag @s add two_legged
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[tag=!selected,tag=two_legged] run function medabots_server:animations/medabot/walking/two_legged/arms
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[tag=!selected,tag=!two_legged] run function medabots_server:animations/medabot/walking/other/right_arm
tag @s[tag=two_legged] remove two_legged
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=!in_air,tag=sneaking] remove sneaking
tag @s[tag=!in_air,tag=walking] remove walking
tag @s[tag=!in_air,tag=running] remove running
tag @s[tag=in_air] remove in_air
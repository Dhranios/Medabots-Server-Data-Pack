# Move with
execute rotated ~ 0 run teleport @s ^ ^-.75 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,limit=1] Rotation[0] 100

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.0f,0.0f]}}
execute if entity @e[tag=walking,tag=this_medabot,limit=1] run tag @s add walking
data merge entity @s[tag=!walking] {Pose:{Head:[0.001f,0.0f,0.0f]}}
execute unless entity @s[tag=!walking] if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] run function medabots_server:animations/medabot/walking/two_legged/legs
execute unless entity @s[tag=!walking] if entity @s[nbt=!{ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] run function medabots_server:animations/medabot/walking/other/legs
tag @s[tag=walking] remove walking
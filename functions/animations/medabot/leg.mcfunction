# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute rotated ~ 0 run teleport @s[tag=!sneak_pos] ^ ^-.75 ^-.25
execute rotated ~ 0 run teleport @s[tag=sneak_pos] ^ ^-.80 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,limit=1] Rotation[0] 100

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @e[tag=walking,tag=this_medabot,limit=1] run tag @s add walking
execute if entity @e[tag=running,tag=this_medabot,limit=1] run tag @s add running
execute if entity @e[tag=sneaking,tag=this_medabot,limit=1] run tag @s add sneaking
execute if entity @e[nbt={OnGround:0b},tag=this_medabot,limit=1] run tag @s[tag=!fly,tag=!float] add in_air
data merge entity @s[tag=!walking,tag=!running,tag=!sneak_pos] {Pose:{Head:[0.001f,0.001f,0.001f]}}
data merge entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=sneak_pos] {Pose:{Head:[-10.0f,0.001f,0.001f]}}
tag @s[tag=walk_animation_other_way,tag=!walking,tag=!running,tag=!sneaking] remove walk_animation_other_way
execute unless entity @s[nbt=!{ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]},nbt=!{ArmorItems:[{tag:{medabots_server:{move:"multi_legged"}}}]}] run data modify entity @s[tag=sneak_pos,tag=!sneaking] Pose.Head[0] set value -10f
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt=!{ArmorItems:[{tag:{medabots_server:{move:"multi_legged"}}}]},nbt=!{ArmorItems:[{tag:{medabots_server:{leg_data:{leg_count:0}}}}]}] run function medabots_server:animations/medabot/walking/two_legged_legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{move:"multi_legged"}}}]}] run function medabots_server:animations/medabot/walking/multi_legged_legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{leg_data:{leg_count:0}}}}]}] run function medabots_server:animations/medabot/walking/legs
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=!in_air,tag=sneaking] remove sneaking
tag @s[tag=!in_air,tag=walking] remove walking
tag @s[tag=!in_air,tag=running] remove running
tag @s[tag=in_air] remove in_air
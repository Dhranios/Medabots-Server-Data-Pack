# Move with
execute if entity @a[distance=..0.1,tag=hostile,tag=sneak_pos] run tag @s add sneak_pos
execute rotated ~ 0 run teleport @s[tag=!sneak_pos] ^ ^-.75 ^-.25
execute rotated ~ 0 run teleport @s[tag=sneak_pos] ^ ^-.80 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[distance=..0.1,tag=hostile,limit=1] Rotation[0] 100

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.001f,0.0f,0.0f]}}
execute if entity @a[distance=..0.1,tag=hostile,tag=walking] run tag @s add walking
execute if entity @a[distance=..0.1,tag=hostile,tag=running] run tag @s add running
execute if entity @a[distance=..0.1,tag=hostile,tag=sneaking] run tag @s add sneaking
execute if entity @e[distance=..0.1,tag=hostile,nbt={OnGround:0b}] run tag @s add in_air
data merge entity @s[tag=!walking,tag=!running,tag=!sneak_pos] {Pose:{Head:[0.001f,0.0f,0.0f]}}
data merge entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=sneak_pos] {Pose:{Head:[-10.0f,0.0f,0.0f]}}
data modify entity @s[tag=sneak_pos] Pose.Head[0] set value -10f
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] run function medabots_server:animations/medabot/walking/two_legged/legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt=!{ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] run function medabots_server:animations/medabot/walking/other/legs
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=!in_air,tag=sneaking] remove sneaking
tag @s[tag=!in_air,tag=walking] remove walking
tag @s[tag=!in_air,tag=running] remove running
tag @s[tag=in_air] remove in_air
# Move with
teleport @s ^ ^ ^ ~ ~
execute unless entity @s[scores={LeftAmount=0}] run function medabots_server:animations/medabot/offset/left
execute unless entity @s[scores={UpAmount=0}] run function medabots_server:animations/medabot/offset/up
execute unless entity @s[scores={ForwardAmount=0}] run function medabots_server:animations/medabot/offset/forward

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.001f,0.001f,0.001f]}}
data merge entity @s[tag=!walking,tag=!running,tag=!sneak_pos,tag=!dancing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
data merge entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=sneak_pos] {Pose:{Head:[-10.0f,0.001f,0.001f]}}
data merge entity @s[tag=was_sneak_posing,tag=sneaking,tag=!was_sneaking] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[tag=walk_animation_other_way,tag=!walking,tag=!running,tag=!sneaking] remove walk_animation_other_way
execute unless entity @s[nbt=!{ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]},nbt=!{ArmorItems:[{tag:{medabots_server:{move:"multi_legged"}}}]}] run data modify entity @s[tag=sneak_pos,tag=!sneaking] Pose.Head[0] set value -10f
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt=!{ArmorItems:[{tag:{medabots_server:{move:"multi_legged"}}}]},nbt=!{ArmorItems:[{tag:{medabots_server:{model_data:{legs:[]}}}}]},tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/two_legged_legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{move:"multi_legged"}}}]},tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/multi_legged_legs
execute unless entity @s[tag=!walking,tag=!running,tag=!sneaking] if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{model_data:{legs:[]}}}}]},tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/legs
execute if entity @s[tag=dancing,nbt={ArmorItems:[{tag:{medabots_server:{move:"two_legged"}}}]}] run function medabots_server:animations/medabot/dancing/two_legged_legs

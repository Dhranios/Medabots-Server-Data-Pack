scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_model

# Set which part is activated
execute if entity @s[tag=left_arm_selected] if entity @e[tag=this_model,tag=left_arm,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_arm"}}}]}] run scoreboard players set @s TransformLID 1
execute if entity @s[tag=right_arm_selected] if entity @e[tag=this_model,tag=right_arm,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_hand"}}}]}] run scoreboard players set @s TransformRID 1
execute if entity @s[tag=head_selected] if entity @e[tag=this_model,tag=chest,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{id:"medabots_server:flame_tisala_sala_head"}}}]}] run scoreboard players set @s TransformHID 1
execute if entity @s[tag=head_selected] if entity @e[tag=this_model,tag=chest,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{id:"medabots_server:potato_insect_changedress"}}}]}] run scoreboard players set @s TransformHID 2

scoreboard players reset #temp MedabotNr
tag @e[tag=this_model] remove this_model
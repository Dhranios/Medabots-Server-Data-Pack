execute store result score #temp Time run data get entity @s ArmorItems[3].tag.medabots_server.model_data.leg_offset
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["hips","medabot_model","model_piece","new","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3] merge from entity @s ArmorItems[3]
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].id set value "minecraft:carrot_on_a_stick"
scoreboard players operation @e[tag=model_piece,tag=new,limit=1] MedabotNr = @s MedabotNr
execute store result score @e[tag=model_piece,tag=new,limit=1] UpAmount run data get entity @s ArmorItems[3].tag.medabots_server.model_data.height
execute if entity @s[tag=tinpet_editing] run tag @e[tag=model_piece,tag=new,limit=1] add tinpet_editing
execute if entity @s[tag=cutscene] run tag @e[tag=model_piece,tag=new,limit=1] add cutscene
execute if entity @s[tag=male_tinpet] run tag @e[tag=model_piece,tag=new,limit=1] add male_tinpet
execute if entity @s[tag=female_tinpet] run tag @e[tag=model_piece,tag=new,limit=1] add female_tinpet
execute if entity @s[tag=neutral_tinpet] run tag @e[tag=model_piece,tag=new,limit=1] add neutral_tinpet
execute if entity @s[tag=cutscene] run scoreboard players operation @e[tag=model_piece,tag=new,limit=1] DialogNr = @s DialogNr
tag @e[tag=model_piece,tag=new,limit=1] remove new

execute if score #temp Time matches 1.. run function medabots_server:animations/medabot/separate_leg
execute if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{model_data:{has_tail:1b}}}}]}] run function medabots_server:animations/medabot/separate_tail
execute if entity @s[nbt={ArmorItems:[{tag:{medabots_server:{model_data:{has_wormtail:1b}}}}]}] run function medabots_server:animations/medabot/separate_wormtail

scoreboard players reset #temp_2 Time
scoreboard players reset #temp Time
kill @s
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["wormtail","medabot_model","model_piece","this_medabot","new","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3] merge from entity @s ArmorItems[3]
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].id set value "minecraft:carrot_on_a_stick"
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].tag.Damage set value 25
execute as @e[tag=model_piece,tag=new,limit=1] store result score @s LeftAmount run data get entity @s ArmorItems[3].tag.medabots_server.model_data.tail.l
execute as @e[tag=model_piece,tag=new,limit=1] store result score @s UpAmount run data get entity @s ArmorItems[3].tag.medabots_server.model_data.tail.u
execute as @e[tag=model_piece,tag=new,limit=1] store result score @s ForwardAmount run data get entity @s ArmorItems[3].tag.medabots_server.model_data.tail.f
scoreboard players operation @e[tag=model_piece,tag=new,limit=1] MedabotNr = @s MedabotNr
execute if entity @s[tag=tinpet_editing] run tag @e[tag=model_piece,tag=new,limit=1] add tinpet_editing
execute if entity @s[tag=cutscene] run tag @e[tag=model_piece,tag=new,limit=1] add cutscene
execute if entity @s[tag=male_tinpet] run tag @e[tag=model_piece,tag=new,limit=1] add male_tinpet
execute if entity @s[tag=female_tinpet] run tag @e[tag=model_piece,tag=new,limit=1] add female_tinpet
execute if entity @s[tag=neutral_tinpet] run tag @e[tag=model_piece,tag=new,limit=1] add neutral_tinpet
execute if entity @s[tag=cutscene] run scoreboard players operation @e[tag=model_piece,tag=new,limit=1] DialogNr = @s DialogNr
tag @e[tag=model_piece,tag=new,limit=1] remove new
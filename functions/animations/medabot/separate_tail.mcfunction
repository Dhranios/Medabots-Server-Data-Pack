summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["tail","medabot_model","model_piece","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3] merge from entity @s ArmorItems[3]
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].id set value "minecraft:carrot_on_a_stick"
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].tag.Damage set value 25
scoreboard players operation @e[tag=medabot_model,tag=new,limit=1] MedabotNr = @s MedabotNr
execute if entity @s[tag=cutscene] run tag @e[tag=medabot_model,tag=new,limit=1] add cutscene
execute if entity @s[tag=male_tinpet] run tag @e[tag=medabot_model,tag=new,limit=1] add male_tinpet
execute if entity @s[tag=female_tinpet] run tag @e[tag=medabot_model,tag=new,limit=1] add female_tinpet
execute if entity @s[tag=neutral_tinpet] run tag @e[tag=medabot_model,tag=new,limit=1] add neutral_tinpet
execute if entity @s[tag=cutscene] run scoreboard players operation @e[tag=medabot_model,tag=new,limit=1] DialogNr = @s DialogNr
tag @e[tag=medabot_model,tag=new,limit=1] remove new
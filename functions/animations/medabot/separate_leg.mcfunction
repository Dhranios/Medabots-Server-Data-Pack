summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["leg","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3] merge from entity @s ArmorItems[3]
data modify entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].id set value "minecraft:carrot_on_a_stick"
scoreboard players operation @e[distance=..0.7,tag=new,limit=1] FloorSwitchTime = #temp Time
execute store result entity @e[distance=..0.7,tag=new,limit=1] ArmorItems[3].tag.Damage int 1 run scoreboard players add @e[distance=..0.7,tag=new,limit=1] FloorSwitchTime 1
scoreboard players operation @e[distance=..0.7,tag=new,limit=1] FloorSwitchTime = #temp Time
scoreboard players operation @e[distance=..0.7,tag=new,limit=1] FloorSwitchTime %= #2 Constants
scoreboard players operation @e[tag=medabot_model,tag=new,limit=1] MedabotNr = @s MedabotNr
execute if entity @s[tag=cutscene] run tag @e[tag=medabot_model,tag=new,limit=1] add cutscene
execute if entity @s[tag=male_tinpet] run tag @e[tag=medabot_model,tag=new,limit=1] add male_tinpet
execute if entity @s[tag=female_tinpet] run tag @e[tag=medabot_model,tag=new,limit=1] add female_tinpet
execute if entity @s[tag=neutral_tinpet] run tag @e[tag=medabot_model,tag=new,limit=1] add neutral_tinpet
execute if entity @s[tag=cutscene] run scoreboard players operation @e[tag=medabot_model,tag=new,limit=1] DialogNr = @s DialogNr
tag @e[tag=medabot_model,tag=new,limit=1] remove new

scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function medabots_server:animations/medabot/separate_leg
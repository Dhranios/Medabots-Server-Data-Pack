# Give slowness 3 and resistance 3 to equipped users
tag @s[tag=tank] remove tank
tag @s[tag=hostile,scores={LegsArmor=1..},tag=tank_legs,type=!minecraft:player] add tank
tag @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"tank"}}}]}] add tank
effect give @s[tag=tank] minecraft:slowness 1 2 true
effect give @s[tag=tank] minecraft:resistance 1 1 true
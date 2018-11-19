# Give speed 2 and slowness 5 to equipped users
tag @s[tag=multi_legged] remove multi_legged
tag @s[tag=hostile,scores={LegsArmor=1..},type=!minecraft:player,tag=multi_legged_legs] add multi_legged
tag @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"multi_legged"}}}]}] add multi_legged
effect give @s[tag=multi_legged] minecraft:slowness 1 1 true
effect give @s[tag=multi_legged] minecraft:speed 1 4 true
# Give jump boost 2 to equipped users
tag @s[tag=two_legged] remove two_legged
tag @s[tag=hostile,scores={LegsArmor=1..},tag=two_legged_legs,type=!minecraft:player] add two_legged
tag @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{activated:1b,move:"two_legged"}}}]}] add two_legged
effect give @s[tag=two_legged] minecraft:jump_boost 1 1 true
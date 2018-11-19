# Give speed 3 to equipped users
tag @s[tag=wheel] remove wheel
tag @s[tag=hostile,scores={LegsArmor=1..},tag=wheel_legs,type=!minecraft:player] add wheel
tag @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{activated:1b,move:"wheel"}}}]}] add wheel
effect give @s[tag=wheel] minecraft:speed 1 2 true
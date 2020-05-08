# Break legs
execute if entity @s[scores={LegsArmor=0}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50
execute if entity @s[scores={LegsArmor=0}] run playsound medabots_server:entity.medabot.broken_part player @a ~ ~ ~ .2
scoreboard players set @s[scores={LegsArmor=0}] LegsArmor -1

# Break left arm
execute if entity @s[scores={LeftArmArmor=0}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50
execute if entity @s[scores={LeftArmArmor=0}] run playsound medabots_server:entity.medabot.broken_part player @a ~ ~ ~ .2
scoreboard players set @s[scores={LeftArmArmor=0}] LeftArmArmor -1

# Break right arm
execute if entity @s[scores={RightArmArmor=0}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50
execute if entity @s[scores={RightArmArmor=0}] run playsound medabots_server:entity.medabot.broken_part player @a ~ ~ ~ .2
scoreboard players set @s[scores={RightArmArmor=0}] RightArmArmor -1

# Break head
execute if entity @s[scores={HeadArmor=0}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 50
execute if entity @s[tag=hit_by_melee_trap] run function medabots_server:other/death/melee_trap
execute if entity @s[tag=hit_by_shooting_trap] run function medabots_server:other/death/melee_trap
execute if entity @s[tag=hit_by_anti_tank] run function medabots_server:other/death/melee_trap
tag @s[scores={HeadArmor=0}] add dying
scoreboard players set @s[scores={HeadArmor=0}] HeadArmor -1
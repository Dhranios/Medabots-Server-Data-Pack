# Remove effects
scoreboard players set @s Time 950
scoreboard players set @s[scores={TransformLTime=2..}] TransformLTime 2
scoreboard players set @s[scores={TransformRTime=2..}] TransformRTime 2
scoreboard players set @s[scores={TransformHTime=2..}] TransformHTime 2
scoreboard players set @s[scores={Fly=1..}] Fly 0
function medabots_server:effects/clear

# Reset medaforce
execute if entity @s[scores={Medaforce=-2}] run function medabots_server:items/medapart/spiral_bolt
execute if entity @s[scores={Medaforce=-3}] run function medabots_server:items/medapart/ultra_shot
execute if entity @s[scores={Medaforce=-4}] run function medabots_server:items/medapart/total_recovery
execute if entity @s[scores={Medaforce=-5}] run function medabots_server:items/medapart/chaos
execute if entity @s[scores={Medaforce=-6}] run function medabots_server:items/medapart/full_body_up
execute if entity @s[scores={Medaforce=-7}] run function medabots_server:items/medapart/attack_trap
execute if entity @s[scores={Medaforce=-8}] run function medabots_server:items/medapart/question
execute if entity @s[scores={Medaforce=-9}] run function medabots_server:items/medapart/damage_ball
execute if entity @s[scores={Medaforce=-10}] run function medabots_server:items/medapart/iron_wall
execute if entity @s[scores={Medaforce=-11}] run function medabots_server:items/medapart/life_drain
execute if entity @s[scores={Medaforce=-12}] run function medabots_server:items/medapart/destroyer
scoreboard players set @s[scores={MedaforceTimer=1..}] MedaforceTimer 0
scoreboard players set @s[scores={Medaforce=1..}] Medaforce 0
scoreboard players set @s[scores={Charge=1..}] Charge 0

# Un-set combat
execute as @e[tag=medabot_model] if score @s MedabotNr = @a[distance=..0.1,limit=1] MedabotNr run kill @s
execute as @e[scores={MedabotNr=1..}] if score @s MedabotNr > @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset @s MedabotNr
effect clear @s minecraft:invisibility
clear @s minecraft:tipped_arrow
tag @s remove hostile

# Remove medabot indexing
tag @s remove medabot
tag @s remove enemy_medabot
tag @s remove ally_medabot
tag @s remove male_tinpet
tag @s remove female_tinpet
tag @s remove neutral_tinpet
tag @s remove fly_legs
tag @s remove float_legs
tag @s remove multi_legged_legs
tag @s remove two_legged_legs
tag @s remove wheel_legs
tag @s remove tank_legs
tag @s remove swim_legs
tag @s remove 1
tag @s remove 2
tag @s remove 3
tag @s remove 4
tag @s remove 5
tag @s remove 6
tag @s remove 7
tag @s remove 8
tag @s remove 9

# Remove stage version
scoreboard players reset @s StageVersion

# Prevent health from ever dropping to the default 20, which'll cause severe issues
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true

# Re-give items who have stage_item:1b
clear @s minecraft:diamond_pickaxe{medabots_server:{id:"medabots_server:help"}}
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:purple_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/purple_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:blue_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/blue_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:light_blue_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/light_blue_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:green_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/green_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:yellow_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/yellow_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:orange_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/orange_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:red_plant",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/red_plant
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:stage_build_item",stage_item:1b}}}]}] run function medabots_server:items/obtained_special_item/stage_build_item
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar",stage_item:1b}}}]}] run function medabots_server:items/put_medallars_on_bank
execute at @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b}}}]}] run function medabots_server:items/give_obtained_item

# Restore inventory
function medabots_server:gamemodes/default/load_old_inventory

# Remove dropped Medapart
data modify entity @s[tag=drop_head] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.head set value {}
data modify entity @s[tag=drop_head] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[1] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
tag @s remove drop_head
data modify entity @s[tag=drop_right_arm] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.right_arm set value {}
data modify entity @s[tag=drop_right_arm] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[2] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
tag @s remove drop_right_arm
data modify entity @s[tag=drop_left_arm] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.left_arm set value {}
data modify entity @s[tag=drop_left_arm] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[3] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
tag @s remove drop_left_arm
data modify entity @s[tag=drop_legs] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.legs set value {}
data modify entity @s[tag=drop_legs] Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[4] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
tag @s remove drop_legs
data remove entity @s Inventory[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.activated

# Remove scores
scoreboard players reset @s LegsArmor
scoreboard players reset @s LeftArmArmor
scoreboard players reset @s RightArmArmor
scoreboard players reset @s HeadArmor
scoreboard players reset @s HeadUses
scoreboard players reset @s MaxLegsArmor
scoreboard players reset @s MaxLeftArmArmor
scoreboard players reset @s MaxRightArmArmor
scoreboard players reset @s MaxHeadArmor
scoreboard players reset @s MaxHeadUses
scoreboard players reset @s LegsDefense
scoreboard players reset @s LegsPer
scoreboard players reset @s LeftArmPer
scoreboard players reset @s RightArmPer
scoreboard players reset @s HeadPer
scoreboard players reset @s HeadUsesPer
scoreboard players reset @s Medabot
scoreboard players reset @s Battle
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
scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
execute as @e[scores={MedabotNr=1..}] if score @s MedabotNr > #temp MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset @s MedabotNr
scoreboard players reset #temp MedabotNr
effect clear @s minecraft:invisibility
clear @s minecraft:tipped_arrow

# Remove medabot indexing
gamemode adventure @s[tag=dying]
tag @s remove hostile
tag @s remove practice_robattle
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
tag @s remove dying
tag @s remove had_death
tag @s remove retry
scoreboard players reset @s StageIndex
scoreboard players reset @s StageVersion
scoreboard players reset @s NeededPlayers
tag @s remove spawned_pass

# Prevent health from ever dropping to the default 20, which'll cause severe issues
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true

# Re-give items
clear @s minecraft:diamond_pickaxe{medabots_server:{id:"medabots_server:help"}}
execute unless entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:loot_container",medallars:0d}}}]}] at @s run function medabots_server:items/give_obtained_item
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:loot_container",items:[{}]}}}]}] at @s run function medabots_server:items/give_obtained_item

# Restore inventory
function medabots_server:gamemodes/default/load_old_inventory

# Remove dropped Medapart
setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:1b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:2b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:3b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:4b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:5b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:6b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:7b,id:"minecraft:stone",Count:1b,tag:{remove:1b}},{Slot:8b,id:"minecraft:stone",Count:1b,tag:{remove:1b}}]}
data modify block -286 0 -52 Items[0] set from entity @s Inventory[{Slot:0b}]
data modify block -286 0 -52 Items[1] set from entity @s Inventory[{Slot:1b}]
data modify block -286 0 -52 Items[2] set from entity @s Inventory[{Slot:2b}]
data modify block -286 0 -52 Items[3] set from entity @s Inventory[{Slot:3b}]
data modify block -286 0 -52 Items[4] set from entity @s Inventory[{Slot:4b}]
data modify block -286 0 -52 Items[5] set from entity @s Inventory[{Slot:5b}]
data modify block -286 0 -52 Items[6] set from entity @s Inventory[{Slot:6b}]
data modify block -286 0 -52 Items[7] set from entity @s Inventory[{Slot:7b}]
data modify block -286 0 -52 Items[8] set from entity @s Inventory[{Slot:8b}]
execute if entity @s[tag=drop_head] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.head set value {}
execute if entity @s[tag=drop_head] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[1] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
execute if entity @s[tag=drop_right_arm] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.right_arm set value {}
execute if entity @s[tag=drop_right_arm] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[2] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
execute if entity @s[tag=drop_left_arm] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.left_arm set value {}
execute if entity @s[tag=drop_left_arm] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[3] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
execute if entity @s[tag=drop_legs] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.items.legs set value {}
execute if entity @s[tag=drop_legs] run data modify block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.display.Lore[4] set value '{"italic":true,"color":"gray","translate":"medabots_server:item.tinpet.unequipped"}'
data remove block -286 0 -52 Items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.activated
loot replace entity @s hotbar.0 9 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
clear @s minecraft:stone{remove:1b}
tag @s remove drop_head
tag @s remove drop_right_arm
tag @s remove drop_left_arm
tag @s remove drop_legs

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
scoreboard players reset @s State
scoreboard players reset @s Gamemode
scoreboard players reset @s DeathTime
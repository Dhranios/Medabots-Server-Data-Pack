execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing

# Tag with the tinpet type
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] add male_tinpet
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] add female_tinpet
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] add neutral_tinpet

execute in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute in minecraft:overworld run data modify block -286 0 -52 Items[0] merge from entity @s SelectedItem
execute in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.medabots_server merge value {activated:1b}
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run setblock -286 0 -52 minecraft:bedrock

function medabots_server:gamemodes/default/load_medabot_inventory

# Set to in-battle and set the killer score
tag @s add hostile
tag @s add medabot
scoreboard players set @s State 3
scoreboard players set @s Gamemode 0
scoreboard players set @s TotalDamage 0
scoreboard players set @s TotalKills 0
scoreboard players set @s TotalTime 0
scoreboard players operation @s MedabotLevel = @s Level
function medabots_server:other/killer/score

# Set the stats' max values
# power is unused for now
execute store result score @s MaxHeadUses run data get entity @s Inventory[{Slot:3b}].tag.medabots_server.uses
execute store result score @s MaxHeadArmor run data get entity @s Inventory[{Slot:3b}].tag.medabots_server.armor
execute store result score @s MaxRightArmArmor run data get entity @s Inventory[{Slot:2b}].tag.medabots_server.armor
execute store result score @s MaxLeftArmArmor run data get entity @s Inventory[{Slot:1b}].tag.medabots_server.armor
execute store result score @s MaxLegsArmor run data get entity @s Inventory[{Slot:0b}].tag.medabots_server.armor
execute store result score @s HeadPower run data get entity @s Inventory[{Slot:3b}].tag.medabots_server.power
execute store result score @s RightArmPower run data get entity @s Inventory[{Slot:2b}].tag.medabots_server.power
execute store result score @s LeftArmPower run data get entity @s Inventory[{Slot:1b}].tag.medabots_server.power
execute store result score @s LegsDefense run data get entity @s Inventory[{Slot:0b}].tag.medabots_server.defense
scoreboard players operation @s HeadUses = @s MaxHeadUses
scoreboard players operation @s HeadArmor = @s MaxHeadArmor
scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Activate parts
function medabots_server:items/enable_medaparts

# Model
function medabots_server:entities/medabot/spawn_model/gamemode
effect give @s minecraft:invisibility 1000000 0 true

execute unless entity @s[scores={HeadArmor=1..}] run tellraw @s {"text":"Something went wrong changing gamemode.","color":"red"}
execute unless entity @s[scores={HeadArmor=1..}] run function medabots_server:gamemodes/default/reset
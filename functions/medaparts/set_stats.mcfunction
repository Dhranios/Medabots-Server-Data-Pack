# Give 50 medals for timer
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kuwagata_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kuwagata_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kuwagata.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kabuto_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.kabuto_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.kabuto.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:mermaid_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.mermaid_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.mermaid\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.mermaid.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:ghost_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.ghost_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.ghost.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:monkey_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.monkey_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.monkey\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.monkey.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:spider_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.spider_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.spider\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.spider.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:spidar_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:alien_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.alien_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.alien\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.alien.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:question_medal",activated:0b}}}]}] hotbar.4 minecraft:nether_star{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.question_medal\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.question\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:move.question.description\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.part.wave\",\"with\":[{\"text\":\"1\"}]}"]},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Set to in-battle and set the killer score
tag @s add hostile
function medabots_server:medaparts/killer_score
scoreboard players set @s[tag=!full_medapart_set] Battle 0

# Set the stats' max values
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
execute if entity @s[tag=!murder_mystery] run function medabots_server:medaparts/enable_medaparts
execute if entity @s[tag=murder_mystery,tag=!inocent] run function medabots_server:medaparts/enable_medaparts

# Model
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}"}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}"}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}"}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model"],CustomName:"{\"translate\":\"medabots_server:entity.medabot_model\"}"}
scoreboard players operation @s MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @s MedabotNr 1
execute as @e[tag=medabot_model,distance=..0.1] run scoreboard players operation @s MedabotNr = @a[distance=..0.1,limit=1] MedabotNr
execute as @e[tag=legs] unless entity @s[nbt={ArmorItems:[{tag:{medabots_server:{}}}]}] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[0]
execute as @e[tag=left_arm] unless entity @s[nbt={ArmorItems:[{tag:{medabots_server:{}}}]}] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute as @e[tag=right_arm] unless entity @s[nbt={ArmorItems:[{tag:{medabots_server:{}}}]}] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute as @e[tag=head] unless entity @s[nbt={ArmorItems:[{tag:{medabots_server:{}}}]}] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
effect give @s minecraft:invisibility 1000000 0 true

# Save headgear
tag @s[nbt={Inventory:[{Slot:103b,tag:{medabots_server:{id:"medabots_server:sunglasses"}}}]}] add had_sunglasses_equipped
replaceitem entity @s[tag=had_sunglasses_equipped] armor.head minecraft:air
tag @s[nbt={Inventory:[{Slot:103b,tag:{medabots_server:{id:"medabots_server:master_crown"}}}]}] add had_master_crown_equipped
replaceitem entity @s[tag=had_master_crown_equipped] armor.head minecraft:air

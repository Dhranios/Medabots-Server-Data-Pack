# Tag with the tinpet type
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] add male_tinpet
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] add female_tinpet
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] add neutral_tinpet

############################## To do ##############################
# Save inventory
# Load inventory from SelectedItem NBT, remove all other items (including SelectedItem)
# Slot:0b = SelectedItem.tag.medabots_server.items.legs
# Slot:1b = SelectedItem.tag.medabots_server.items.left_arm
# Slot:2b = SelectedItem.tag.medabots_server.items.right_arm
# Slot:3b = SelectedItem.tag.medabots_server.items.head
# Slot:4b = SelectedItem.tag.medabots_server.items.medal
###################################################################

# Give 50 medals for timer
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kuwagata_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kabuto_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:mermaid_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:ghost_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ghost_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:monkey_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:spider_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:spidar_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:alien_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:question_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.question_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.question_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.question_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:chameleon_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:chameleon_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:knight_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:knight_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:unicorn_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unicorn_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:unicorn_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:devil_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.devil_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:devil_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}

# Set to in-battle and set the killer score
tag @s add hostile
tag @s add medabot
scoreboard players set @s Battle 3
function medabots_server:other/killer/score

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
execute if entity @s[tag=!murder_mystery] run function medabots_server:items/enable_medaparts
execute if entity @s[tag=murder_mystery,tag=!innocent] run function medabots_server:items/enable_medaparts

# Model
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["legs","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["left_arm","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["right_arm","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["head","medabot_model","new"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}'}
scoreboard players operation @s MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @s MedabotNr 1
execute at @s as @e[tag=medabot_model,tag=new] run scoreboard players operation @s MedabotNr = @a[distance=..0.1,limit=1] MedabotNr
execute as @e[tag=legs,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[0]
execute as @e[tag=left_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[1]
execute as @e[tag=right_arm,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[2]
execute as @e[tag=head,tag=new] run data modify entity @s ArmorItems[3] merge from entity @a[distance=..0.1,limit=1] Inventory[3]
execute if entity @s[tag=male_tinpet] run tag @e[tag=medabot_model,tag=new] add male_tinpet
execute if entity @s[tag=female_tinpet] run tag @e[tag=medabot_model,tag=new] add female_tinpet
execute if entity @s[tag=neutral_tinpet] run tag @e[tag=medabot_model,tag=new] add neutral_tinpet
tag @e[tag=medabot_model,tag=new] remove new
effect give @s minecraft:invisibility 1000000 0 true

# Save headgear
tag @s[nbt={Inventory:[{Slot:103b,tag:{medabots_server:{id:"medabots_server:sunglasses"}}}]}] add had_sunglasses_equipped
replaceitem entity @s[tag=had_sunglasses_equipped] armor.head minecraft:air
tag @s[nbt={Inventory:[{Slot:103b,tag:{medabots_server:{id:"medabots_server:master_crown"}}}]}] add had_master_crown_equipped
replaceitem entity @s[tag=had_master_crown_equipped] armor.head minecraft:air

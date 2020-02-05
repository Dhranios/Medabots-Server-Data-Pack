execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing

# Tag with the tinpet type
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] add male_tinpet
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] add female_tinpet
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] add neutral_tinpet

setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block -286 0 -52 Items[0] merge from entity @s SelectedItem
data modify block -286 0 -52 Items[0].tag.medabots_server merge value {activated:1b}
loot replace entity @s weapon.mainhand 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock

function medabots_server:gamemodes/default/load_medabot_inventory

# Give 50 medals for timer
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kuwagata_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kabuto_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:mermaid_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:3,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:ghost_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ghost_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:monkey_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:spider_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:6,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:alien_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:question_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:8,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.question_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.question_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.question_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:chameleon_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:chameleon_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:knight_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:knight_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:unicorn_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unicorn_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:unicorn_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:devil_medal",activated:0b}}}]}] hotbar.4 minecraft:gold_ingot{CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.devil_medaforce"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:devil_medaforce",move:"medaforce_charge",part:"medal",activated:1b,version:1}}

# Set to in-battle and set the killer score
tag @s add hostile
tag @s add medabot
scoreboard players set @s State 3
scoreboard players set @s Gamemode 0
scoreboard players set @s TotalDamage 0
scoreboard players set @s TotalKills 0
scoreboard players set @s TotalTime 0
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
function medabots_server:entities/medabot/spawn_model
effect give @s minecraft:invisibility 1000000 0 true
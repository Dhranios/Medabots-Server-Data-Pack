# Remove effects
scoreboard players set @s Time 950
scoreboard players set @s TransformLTime 2
scoreboard players set @s TransformRTime 2
scoreboard players set @s TransformHTime 2
scoreboard players set @s[scores={Fly=1..}] Fly 0
tag @s[tag=float] remove float
tag @s[tag=multi_legged] remove multi_legged
tag @s[tag=swim] remove swim
tag @s[tag=tank] remove tank
tag @s[tag=two_legged] remove two_legged
tag @s[tag=wheel] remove wheel
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
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kuwagata_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kabuto_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:mermaid_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:ghost_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:3,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ghost_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:monkey_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:spider_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:alien_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:6,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:question_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:7,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.question_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.question_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.question_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:chameleon_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:chameleon_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:knight_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:unicorn_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:10,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unicorn_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:unicorn_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:devil_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:11,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.devil_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:devil_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_kuwagata_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_kabuto_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_mermaid_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_ghost_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:3,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ghost_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_monkey_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:4,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.monkey_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.monkey_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:monkey_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_spider_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_alien_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:6,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_question_medaforce",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:7,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.question_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.question_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.question_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:question_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_chameleon_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:chameleon_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_knight_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_unicorn_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:10,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unicorn_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:unicorn_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
replaceitem entity @s[nbt={Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_devil_medal",activated:1b}}}]}] hotbar.4 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:6,CustomModelData:11,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.devil_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:devil_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}
scoreboard players set @s[scores={Medaforce=1..}] Medaforce 0
scoreboard players set @s[scores={Charge=1..}] Charge 0

# Deactivate parts
execute store result entity @s Inventory[{tag:{medabots_server:{activated:1b}}}].tag.medabots_server.activated byte 1 run scoreboard players get #0 Constants

# Un-set combat
execute at @e[tag=medabot_model] if score @s MedabotNr = @e[distance=..0.1,tag=medabot_model,limit=1] MedabotNr run kill @e[distance=..0.1,tag=medabot_model,limit=1]
execute as @e[scores={MedabotNr=1..}] if score @s MedabotNr > @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset @s MedabotNr
effect clear @s minecraft:invisibility
clear @s minecraft:tipped_arrow
tag @s remove hostile
scoreboard players reset @s[scores={Death=0}] Stage
scoreboard players set @s[scores={Death=1..}] LeaveStage 1

# Remove medabot indexing
tag @s remove enemy_medabot
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
tag @s remove first_go
tag @s remove second_go
tag @s remove rubberobo
tag @s remove special
tag @s remove object_test
tag @s remove custom
tag @s remove wave_1
tag @s remove player
tag @s remove accelerators
tag @s remove action_floors
tag @s remove action_floors_1
tag @s remove action_floors_2
tag @s remove balloon_bombs
tag @s remove cannons
tag @s remove cannons_1
tag @s remove cannons_2
tag @s remove darkness
tag @s remove empty
tag @s remove hammer_punches
tag @s remove ice_blocks
tag @s remove lasers
tag @s remove locked_in
tag @s remove locked_out
tag @s remove mirrors
tag @s remove spring_walls
tag @s remove stones
tag @s remove walls
tag @s remove wind
tag @s remove wind_1
tag @s remove wind_2

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
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar_cent",stage_item:1b}}}]}] run function medabots_server:items/put_medallar_cents_on_bank
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{id:"medabots_server:medallar",stage_item:1b}}}]}] run function medabots_server:items/put_medallars_on_bank
execute at @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b}}}]}] run function medabots_server:items/give_obtained_item

# Re-equip headgear
replaceitem entity @s[tag=had_sunglasses_equipped] armor.head minecraft:chainmail_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sunglasses"}'},AttributeModifiers:[],medabots_server:{id:"medabots_server:sunglasses"}}
tag @s[tag=had_sunglasses_equipped] remove had_sunglasses_equipped
replaceitem entity @s[tag=had_master_crown_equipped] armor.head minecraft:golden_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.master_crown"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.master_crown.description"}']},AttributeModifiers:[],medabots_server:{id:"medabots_server:master_crown"}}
tag @s[tag=had_master_crown_equipped] remove had_sunglasses_equipped
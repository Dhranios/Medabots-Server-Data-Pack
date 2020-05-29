# Spawn base Medabot
summon minecraft:skeleton ~ ~ ~ {Silent:1b,CustomNameVisisble:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}],HandItems:[{},{}],Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.attackDamage",Base:0.0d}],Health:100.0f,DeathLootTable:"medabots_server:entities/medabot",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],PersistenceRequired:1b,Tags:["new_medabot","medabot","killerable","hostile"],AbsorptionAmount:100.0f,ActiveEffects:[{Id:14b,Duration:1000000,Ambient:1b,ShowParticles:0b,Amplifier:0b}]}
scoreboard players set @e[tag=new_medabot,limit=1] Killer 0
scoreboard players set @e[tag=new_medabot,limit=1] Charge 0
scoreboard players set @e[tag=new_medabot,limit=1] Dialog 0
scoreboard players set @e[tag=new_medabot,limit=1] Time 0
scoreboard players set @e[tag=new_medabot,limit=1] ReactionTime 0
scoreboard players set @e[tag=new_medabot,limit=1] Sound 0
scoreboard players set @e[tag=new_medabot,limit=1] State 2
scoreboard players set @e[tag=new_medabot,limit=1] Money 5
data modify entity @e[tag=new_medabot,limit=1] Rotation set from entity @s Rotation

# Spawn model parts
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["new_model","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["new_model","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["new_model","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["new_model","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["new_model","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
scoreboard players operation @e[tag=new_medabot,limit=1] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
scoreboard players add @e[tag=new_medabot,limit=1] MedabotNr 1
execute as @e[tag=new_model] run scoreboard players operation @s MedabotNr = @e[tag=new_medabot,limit=1] MedabotNr

# Get Equipment
data modify entity @e[tag=new_model,tag=head,limit=1] ArmorItems[3] merge from entity @s Item.tag.medabots_server.items.head
data modify entity @e[tag=new_model,tag=right_arm,limit=1] ArmorItems[3] merge from entity @s Item.tag.medabots_server.items.right_arm
data modify entity @e[tag=new_model,tag=left_arm,limit=1] ArmorItems[3] merge from entity @s Item.tag.medabots_server.items.left_arm
data modify entity @e[tag=new_model,tag=legs,limit=1] ArmorItems[3] merge from entity @s Item.tag.medabots_server.items.legs

# Set Medabot set
scoreboard players set @e[tag=new_medabot,limit=1] Medabot 0
execute store result score #head Medabot run data get entity @s Item.tag.medabots_server.items.head.tag.CustomModelData
execute store result score #right_arm Medabot run data get entity @s Item.tag.medabots_server.items.right_arm.tag.CustomModelData
execute store result score #left_arm Medabot run data get entity @s Item.tag.medabots_server.items.left_arm.tag.CustomModelData
execute store result score #legs Medabot run data get entity @s Item.tag.medabots_server.items.legs.tag.CustomModelData
execute if score #head Medabot = #right_arm Medabot if score #head Medabot = #left_arm Medabot if score #head Medabot = #legs Medabot run scoreboard players operation @e[tag=new_medabot,limit=1] Medabot = #head Medabot
scoreboard players reset #head Medabot
scoreboard players reset #right_arm Medabot
scoreboard players reset #left_arm Medabot
scoreboard players reset #legs Medabot

# Set name
data modify entity @e[tag=new_medabot,limit=1] CustomName set from entity @s Item.tag.medabots_server.items.head.tag.display.Lore[5]
execute if data entity @s Item.tag.medabots_server.cpu_data.medabot_name run data modify entity @e[tag=new_medabot,limit=1] CustomName set from entity @s Item.tag.medabots_server.cpu_data.medabot_name
execute if data entity @s Item.tag.medabots_server.cpu_data.medabot_name run tag @e[tag=new_medabot,limit=1] add try_special_message

# Enemy, ally or neutral
execute unless entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"enemy"}}}}}] unless entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"ally"}}}}}] run tag @e[tag=new_medabot,limit=1] add neutral_medabot
execute if entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"enemy"}}}}}] run tag @e[tag=new_medabot,limit=1] add enemy_medabot
execute if entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"ally"}}}}}] run tag @e[tag=new_medabot,limit=1] add ally_medabot
execute unless entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"enemy"}}}}}] unless entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"ally"}}}}}] run team join NeutralMedabot @e[tag=new_medabot,limit=1]
execute if entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"enemy"}}}}}] run team join EnemyMedabot @e[tag=new_medabot,limit=1]
execute if entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{team:"ally"}}}}}] run team join AllyMedabot @e[tag=new_medabot,limit=1]

# Set tinpet type
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] run tag @e[tag=new_medabot,limit=1] add male_tinpet
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] run tag @e[tag=new_medabot,limit=1] add female_tinpet
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] run tag @e[tag=new_medabot,limit=1] add neutral_tinpet
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:male_tinpet"}}}}] run tag @e[tag=new_model] add male_tinpet
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:female_tinpet"}}}}] run tag @e[tag=new_model] add female_tinpet
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:neutral_tinpet"}}}}] run tag @e[tag=new_model] add neutral_tinpet

# Set leg type
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add fly_legs
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"float"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add float_legs
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"multi_legged"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add multi_legged_legs
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"two_legged"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add two_legged_legs
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"wheel"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add wheel_legs
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"tank"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add tank_legs
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{legs:{tag:{medabots_server:{move:"swim"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add swim_legs

# Set medal type
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:kuwagata_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add kuwagata_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add kabuto_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:mermaid_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add mermaid_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:ghost_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add ghost_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:monkey_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add monkey_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:spider_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add spider_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:alien_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add alien_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:question_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add question_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:chameleon_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add chameleon_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:knight_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add knight_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:unicorn_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add unicorn_medal
execute if entity @s[nbt={Item:{tag:{medabots_server:{items:{medal:{tag:{medabots_server:{id:"medabots_server:devil_medal"}}}}}}}}] run tag @e[tag=new_medabot,limit=1] add devil_medal

execute store result score @e[tag=new_medabot,limit=1] MedabotLevel run data get entity @s Item.tag.medabots_server.cpu_data.level

# Set stats
execute store result score @e[tag=new_medabot,limit=1] MaxHeadUses run data get entity @s Item.tag.medabots_server.items.head.tag.medabots_server.uses
execute store result score @e[tag=new_medabot,limit=1] MaxHeadArmor run data get entity @s Item.tag.medabots_server.items.head.tag.medabots_server.armor
execute store result score @e[tag=new_medabot,limit=1] MaxRightArmArmor run data get entity @s Item.tag.medabots_server.items.right_arm.tag.medabots_server.armor
execute store result score @e[tag=new_medabot,limit=1] MaxLeftArmArmor run data get entity @s Item.tag.medabots_server.items.left_arm.tag.medabots_server.armor
execute store result score @e[tag=new_medabot,limit=1] MaxLegsArmor run data get entity @s Item.tag.medabots_server.items.legs.tag.medabots_server.armor
execute store result score @e[tag=new_medabot,limit=1] HeadPower run data get entity @s Item.tag.medabots_server.items.head.tag.medabots_server.power
execute store result score @e[tag=new_medabot,limit=1] RightArmPower run data get entity @s Item.tag.medabots_server.items.right_arm.tag.medabots_server.power
execute store result score @e[tag=new_medabot,limit=1] LeftArmPower run data get entity @s Item.tag.medabots_server.items.left_arm.tag.medabots_server.power
execute store result score @e[tag=new_medabot,limit=1] LegsDefense run data get entity @s Item.tag.medabots_server.items.legs.tag.medabots_server.defense
execute as @e[tag=new_medabot,limit=1] run scoreboard players operation @s HeadUses = @s MaxHeadUses
execute as @e[tag=new_medabot,limit=1] run scoreboard players operation @s HeadArmor = @s MaxHeadArmor
execute as @e[tag=new_medabot,limit=1] run scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
execute as @e[tag=new_medabot,limit=1] run scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
execute as @e[tag=new_medabot,limit=1] run scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Set settings
execute if entity @s[nbt={Item:{tag:{medabots_server:{cpu_data:{practice_battle:1b}}}}}] run tag @e[tag=new_medabot,limit=1] add practice_battle
execute if data entity @s Item.tag.medabots_server.cpu_data.overwrite_robattle_music run tag @e[tag=new_medabot,limit=1] add overwrite_robattle_music
execute if data entity @s Item.tag.medabots_server.cpu_data.overwrite_robattle_music store result score @e[tag=new_medabot,limit=1] MusicType run data get entity @s Item.tag.medabots_server.cpu_data.overwrite_robattle_music

# Done
tag @e[tag=new_medabot,limit=1] remove new_medabot
tag @e[tag=new_model] remove new_model
kill @s
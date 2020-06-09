execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity neutranurse_helps
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -369 55 -67 run function medabots_server:spawn_entities/cutscene/neutranurse
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -366 55 -65 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","dragonbeetle"],Rotation:[125.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-366,y=55,z=-65,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-366,y=55,z=-65,distance=..1,tag=dragonbeetle] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -65 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -65 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -65 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_veryweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_veryweighter",gender:0b,move:"press",part:"left_arm",armor:70,charge:60,power:24,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -65 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_heavyweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_heavyweighter",gender:0b,move:"press",part:"right_arm",armor:70,charge:60,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -65 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,charge:60,power:25,uses:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -366 55 -65 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr
execute at @s as @e[x=-366,y=55,z=-65,tag=dragonbeetle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -365 55 -67 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","dragonbeetle"],Rotation:[90.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-365,y=55,z=-67,distance=..1,tag=dragonbeetle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-365,y=55,z=-67,distance=..1,tag=dragonbeetle] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -365 55 -67 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -365 55 -67 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_flyfly.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_flyfly",gender:0b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{height:0,legs:[]},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -365 55 -67 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,charge:60,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -365 55 -67 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,charge:60,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -365 55 -67 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","dragonbeetle","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:31,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"105"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dragonbeetle","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dragonbeetle_hardweighter.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dragonbeetle_hardweighter",gender:0b,move:"press",part:"head",armor:105,charge:60,power:25,uses:15,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -365 55 -67 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=dragonbeetle] MedabotNr
execute at @s as @e[x=-365,y=55,z=-67,tag=dragonbeetle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -366 55 -69 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","hellphoenix"],Rotation:[55.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-366,y=55,z=-69,distance=..1,tag=hellphoenix] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-366,y=55,z=-69,distance=..1,tag=hellphoenix] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -69 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","hellphoenix","source","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}'}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -69 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","hellphoenix","legs","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_red_tail.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_red_tail",gender:0b,move:"fly",part:"legs",armor:35,defense:36,activated:0b,model_data:{height:0,legs:[],tail:{l:0,u:0,f:0}},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -69 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","hellphoenix","left_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,charge:60,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -69 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","hellphoenix","right_arm","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_fire_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_fire_gun",gender:0b,move:"melt",part:"right_arm",armor:45,charge:60,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -366 55 -69 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","hellphoenix","head","medabot_model","model_piece","found_owner","found_owner_2"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","color":"green"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_blast_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_blast_gun",gender:0b,move:"melt",part:"head",armor:65,charge:60,power:23,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -366 55 -69 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=hellphoenix] MedabotNr
execute at @s as @e[x=-366,y=55,z=-69,tag=hellphoenix,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.dragonbeetle","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.1"}]}
tellraw @s[scores={Dialog=20}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.dragonbeetle","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.2"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.hellphoenix","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.4"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.6"}]}
execute if entity @s[scores={Dialog=200..453}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.7"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.8"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.9"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.10"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.11"}]}
execute if entity @s[scores={Dialog=454..}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.12"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.13"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse","color":"green"},{"translate":"medabots_server:dialog.infinity.neutranurse_helps.14"}]}
tag @s[scores={Dialog=536}] remove dialog_infinity_neutranurse_helps
scoreboard players reset @s[scores={Dialog=536}] DialogNr
scoreboard players set @s[scores={Dialog=536}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
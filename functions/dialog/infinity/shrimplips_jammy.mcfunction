execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity shrimplips_jammy
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -565 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -569 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1944 51 -570 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","baroncastle"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1944,y=51,z=-570,distance=..1,tag=baroncastle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1944,y=51,z=-570,distance=..1,tag=baroncastle] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1944 51 -570 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_tyrantower.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_tyrantower",gender:0b,move:"float",part:"legs",armor:60,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1944 51 -570 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_gatemonarch"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_gatemonarch.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_gatemonarch",gender:0b,move:"falling",part:"left_arm",armor:40,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1944 51 -570 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_sentineldy.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_sentineldy",gender:0b,move:"rifle",part:"right_arm",armor:45,power:16,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1944 51 -570 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_king_balcony",gender:0b,move:"falling",part:"head",armor:55,power:28,uses:8,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1944 51 -570 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=baroncastle] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1944,y=51,z=-570,tag=baroncastle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1945 51 -568 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","magicalcard"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1945,y=51,z=-568,distance=..1,tag=magicalcard] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1945,y=51,z=-568,distance=..1,tag=magicalcard] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magicalcard","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"24"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_wandrack",gender:0b,move:"float",part:"legs",armor:65,defense:24,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magicalcard","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_lookme.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_lookme",gender:0b,move:"no_defend",part:"left_arm",armor:65,power:16,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magicalcard","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_onetwothree.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_onetwothree",gender:0b,move:"falling",part:"right_arm",armor:40,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -568 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","magicalcard","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.confuse"}','{"italic":false,"color":"white","translate":"medabots_server:move.confuse.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_magitech.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_magitech",gender:0b,move:"confuse",part:"head",armor:80,power:20,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1945 51 -568 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=magicalcard] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1945,y=51,z=-568,tag=magicalcard,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1945 51 -572 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","baroncastle"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1945,y=51,z=-572,distance=..1,tag=baroncastle] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1945,y=51,z=-572,distance=..1,tag=baroncastle] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -572 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:10,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.float"}','{"italic":false,"color":"white","translate":"medabots_server:move.float.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"24"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.magicalcard"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.magicalcard_wandrack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:magicalcard_wandrack",gender:0b,move:"float",part:"legs",armor:65,defense:24,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -572 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_sword.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_ninja_sword",gender:0b,move:"sword",part:"left_arm",armor:40,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -572 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:69,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:move.sword.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nin_ninja"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nin_ninja_ninja_dagger.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nin_ninja_ninja_dagger",gender:0b,move:"sword",part:"right_arm",armor:40,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1945 51 -572 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","baroncastle","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:11,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.baroncastle"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.baroncastle_king_balcony.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:baroncastle_king_balcony",gender:0b,move:"falling",part:"head",armor:55,power:28,uses:8,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1945 51 -572 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=baroncastle] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-1945,y=51,z=-572,tag=baroncastle,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..1101}] as @e[tag=baroncastle,tag=!medabot_model,tag=this_dialog] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] run tag @e[tag=baroncastle,tag=!medabot_model,tag=this_dialog] add dancing
execute if entity @s[scores={Dialog=1..1101}] as @e[tag=magicalcard,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] run tag @e[tag=magicalcard,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
execute if entity @s[scores={Dialog=1..1071}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..327}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s facing entity @e[tag=baroncastle,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.baroncastle"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.baroncastle"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magicalcard"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.6"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.7"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.8"}]}
execute if entity @s[scores={Dialog=328}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -574
execute if entity @s[scores={Dialog=328}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=329..351}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=351}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=352..559}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s facing entity @e[tag=baroncastle,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.9"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.baroncastle"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.10"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.baroncastle"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.11"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.12"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.13"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.14"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.15"}]}
execute if entity @s[scores={Dialog=560..1031}] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.16"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.17"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.18"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.19"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.20"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.21"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.22"}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.23"}]}
tellraw @s[scores={Dialog=880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.24"}]}
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.25"}]}
tellraw @s[scores={Dialog=960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.26"}]}
tellraw @s[scores={Dialog=1008}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.27"}]}
execute if entity @s[scores={Dialog=1032}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -589
execute if entity @s[scores={Dialog=1032}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1033..1102}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1102}] run kill @e[tag=shrimplips,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1072..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1052}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.28"}]}
tellraw @s[scores={Dialog=1068}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.29"}]}
tellraw @s[scores={Dialog=1100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.30"}]}
tellraw @s[scores={Dialog=1116}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.31"}]}
tellraw @s[scores={Dialog=1196}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.32"}]}
tellraw @s[scores={Dialog=1212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.33"}]}
tellraw @s[scores={Dialog=1252}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy.34"}]}
tag @s[scores={Dialog=1284}] remove dialog_infinity_shrimplips_jammy
stopsound @s[scores={Dialog=1284}] music
scoreboard players set @s[scores={Dialog=1284}] MusicType 1
scoreboard players set @s[scores={Dialog=1284}] Music 0
scoreboard players reset @s[scores={Dialog=1284}] DialogNr
scoreboard players set @s[scores={Dialog=1284}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744
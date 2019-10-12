execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity three_colors_defeated
scoreboard players set @s[scores={Dialog=1}] MusicType 46
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -432 55 -52 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -451 55 -41 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -460 55 -69 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] positioned -460 55 -67 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -459 55 -66 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -452 55 -46 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","blue_man"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-452,y=55,z=-46,distance=..1,tag=blue_man] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-452,y=55,z=-46,distance=..1,tag=blue_man] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -452 55 -46 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","blue_man","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_sit_down",gender:0b,move:"tank",part:"legs",armor:110,defense:52,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -452 55 -46 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","blue_man","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -452 55 -46 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","blue_man","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -452 55 -46 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","blue_man","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_grand_bomb",gender:0b,move:"napalm",part:"head",armor:110,power:23,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -452 55 -46 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=blue_man] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-452,y=55,z=-46,tag=blue_man,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -451 55 -50 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","peace_kiss"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-451,y=55,z=-50,distance=..1,tag=peace_kiss] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-451,y=55,z=-50,distance=..1,tag=peace_kiss] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -451 55 -50 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","peace_kiss","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_sit_down",gender:0b,move:"tank",part:"legs",armor:110,defense:52,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -451 55 -50 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","peace_kiss","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -451 55 -50 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","peace_kiss","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -451 55 -50 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","peace_kiss","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_grand_bomb",gender:0b,move:"napalm",part:"head",armor:110,power:23,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -451 55 -50 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=peace_kiss] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-451,y=55,z=-50,tag=peace_kiss,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -450 55 -48 {Duration:1000000,Tags:["cutscene","this_dialog","medabot","red_pepper"],Rotation:[0.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-450,y=55,z=-48,distance=..1,tag=red_pepper] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-450,y=55,z=-48,distance=..1,tag=red_pepper] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -450 55 -48 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","legs","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.tank"}','{"italic":false,"color":"white","translate":"medabots_server:move.tank.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_sit_down.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_sit_down",gender:0b,move:"tank",part:"legs",armor:110,defense:52,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -450 55 -48 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","left_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_dark_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_dark_hall",gender:0b,move:"press",part:"left_arm",armor:80,power:22,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -450 55 -48 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","right_arm","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_black_hall.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_black_hall",gender:0b,move:"press",part:"right_arm",armor:80,power:18,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -450 55 -48 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","red_pepper","head","medabot_model","model_piece"],CustomName:'{"translate":"medabots_server:entity.model_piece"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:33,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"110"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.king_pharaoh"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.king_pharaoh_grand_bomb.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:king_pharaoh_grand_bomb",gender:0b,move:"napalm",part:"head",armor:110,power:23,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -450 55 -48 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=red_pepper] MedabotNr
execute if entity @s[scores={Dialog=1}] as @e[x=-450,y=55,z=-48,tag=red_pepper,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -432 55 -50 80 0
teleport @s[scores={Dialog=2..255}] -432 55 -50
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.2"}]}
execute if entity @s[scores={Dialog=56}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.3"}]}
execute if entity @s[scores={Dialog=120}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=120}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.5"}]}
execute if entity @s[scores={Dialog=225..288}] facing -445 55 -46 run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=224}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -445 55 -48
execute if entity @s[scores={Dialog=224}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=225..288}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=288}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=289}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=256..288}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=256..288}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=256..288}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=256..288}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=288..2283}] -445 55 -46
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.6"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.7"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.8"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.9"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.10"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.11"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.12"}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.13"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.14"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.15"}]}
tellraw @s[scores={Dialog=760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.16"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.17"}]}
execute if entity @s[scores={Dialog=800}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.18"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.19"}]}
tellraw @s[scores={Dialog=880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.20"}]}
execute if entity @s[scores={Dialog=928}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -42
execute if entity @s[scores={Dialog=928}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=929..966}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=966}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-5 ~
execute if entity @s[scores={Dialog=948}] run setblock -457 53 -43 minecraft:redstone_block
execute if entity @s[scores={Dialog=928}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -454 55 -43
execute if entity @s[scores={Dialog=928}] run tag @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=929..945}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=946}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -43
execute if entity @s[scores={Dialog=947..969}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=969}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-5 ~
execute if entity @s[scores={Dialog=928}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -454 55 -43
execute if entity @s[scores={Dialog=928}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=929..958}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=959}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -43
execute if entity @s[scores={Dialog=960..982}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=982}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-5 ~
execute if entity @s[scores={Dialog=928}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -454 55 -43
execute if entity @s[scores={Dialog=928}] run tag @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=929..964}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=965}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -43
execute if entity @s[scores={Dialog=966..988}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=988}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-5 ~
execute if entity @s[scores={Dialog=988}] run setblock -457 53 -43 minecraft:air
tellraw @s[scores={Dialog=988}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.21"}]}
tellraw @s[scores={Dialog=1020}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.22"}]}
execute if entity @s[scores={Dialog=1044}] run setblock -457 53 -43 minecraft:redstone_block
execute if entity @s[scores={Dialog=1044}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~5 ~
execute if entity @s[scores={Dialog=1045}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -43
execute if entity @s[scores={Dialog=1046..1073}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1074}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -453 55 -47
execute if entity @s[scores={Dialog=1075..1094}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1094}] run tag @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1044}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~5 ~
execute if entity @s[scores={Dialog=1045}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -43
execute if entity @s[scores={Dialog=1046..1073}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1074}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -451 55 -46
execute if entity @s[scores={Dialog=1075..1094}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1094}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1044}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~5 ~
execute if entity @s[scores={Dialog=1045}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -43
execute if entity @s[scores={Dialog=1046..1073}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1074}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -449 55 -47
execute if entity @s[scores={Dialog=1075..1104}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1104}] run tag @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1074}] run setblock -457 53 -43 minecraft:air
execute if entity @s[scores={Dialog=1104}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1044}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.23"}]}
tellraw @s[scores={Dialog=1076}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.24"}]}
tellraw @s[scores={Dialog=1108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.25"}]}
execute if entity @s[scores={Dialog=1179}] run setblock -457 53 -43 minecraft:redstone_block
execute if entity @s[scores={Dialog=1179}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~5 ~
execute if entity @s[scores={Dialog=1180}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -456 55 -42
execute if entity @s[scores={Dialog=1181..1218}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1218}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1199}] run setblock -457 53 -43 minecraft:air
execute if entity @s[scores={Dialog=1219}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1219}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1219}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1219}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1218}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.26"}]}
tellraw @s[scores={Dialog=1226}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.27"}]}
tellraw @s[scores={Dialog=1250}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.28"}]}
tellraw @s[scores={Dialog=1282}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.29"}]}
tellraw @s[scores={Dialog=1298}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.30"}]}
tellraw @s[scores={Dialog=1330}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.31"}]}
tellraw @s[scores={Dialog=1402}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.32"}]}
tellraw @s[scores={Dialog=1418}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.33"}]}
tellraw @s[scores={Dialog=1490}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.34"}]}
tellraw @s[scores={Dialog=1522}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.35"}]}
tellraw @s[scores={Dialog=1530}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.36"}]}
tellraw @s[scores={Dialog=1610}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.37"}]}
tellraw @s[scores={Dialog=1658}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.38"}]}
tellraw @s[scores={Dialog=1706}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.39"}]}
tellraw @s[scores={Dialog=1746}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.40"}]}
tellraw @s[scores={Dialog=1786}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.41"}]}
tellraw @s[scores={Dialog=1810}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.42"}]}
tellraw @s[scores={Dialog=1858}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.43"}]}
tellraw @s[scores={Dialog=1906}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.44"}]}
tellraw @s[scores={Dialog=1938}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.45"}]}
tellraw @s[scores={Dialog=1946}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.46"}]}
execute if entity @s[scores={Dialog=1962}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -385 55 -56
execute if entity @s[scores={Dialog=1962}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1963..2283}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2283}] run kill @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=2000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.47"}]}
execute if entity @s[scores={Dialog=2024}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2024}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2024}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.48"}]}
tellraw @s[scores={Dialog=2152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.49"}]}
tellraw @s[scores={Dialog=2192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.50"}]}
tellraw @s[scores={Dialog=2208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.51"}]}
tellraw @s[scores={Dialog=2264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.52"}]}
execute if entity @s[scores={Dialog=2284}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -459 55 -53
execute if entity @s[scores={Dialog=2284}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2285..2344}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2344}] run tag @e[tag=samantha,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2345}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2284}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -460 55 -51
execute if entity @s[scores={Dialog=2284}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2285..2359}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2359}] run tag @e[tag=sloan,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2360}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2284}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -460 55 -55
execute if entity @s[scores={Dialog=2284}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2285..2350}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2350}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=2351}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=2304}] MusicType 35
scoreboard players set @s[scores={Dialog=2304}] Music 0
tellraw @s[scores={Dialog=2344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.53"}]}
tellraw @s[scores={Dialog=2376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.54"}]}
tellraw @s[scores={Dialog=2448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.55"}]}
tellraw @s[scores={Dialog=2504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.56"}]}
tellraw @s[scores={Dialog=2568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.57"}]}
tellraw @s[scores={Dialog=2576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.58"}]}
tellraw @s[scores={Dialog=2592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.59"}]}
tellraw @s[scores={Dialog=2640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.60"}]}
execute if entity @s[scores={Dialog=2688}] positioned -468 55 -122 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=2688}] run teleport @e[tag=samantha,tag=this_dialog,limit=1] -465 55 -119
execute if entity @s[scores={Dialog=2688}] run teleport @e[tag=sloan,tag=this_dialog,limit=1] -463 55 -120
execute if entity @s[scores={Dialog=2688}] run teleport @e[tag=spyke,tag=this_dialog,limit=1] -466 55 -117
execute if entity @s[scores={Dialog=2688}] run teleport @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] -470 55 -119
execute if entity @s[scores={Dialog=2688}] run teleport @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] -470 55 -121
execute if entity @s[scores={Dialog=2688}] run teleport @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] -470 55 -117
execute if entity @s[scores={Dialog=2688}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2688}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2688}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=doctor_haru,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2688}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2688}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2688}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2688}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=2688}] MusicType 44
scoreboard players set @s[scores={Dialog=2688}] Music 0
execute if entity @s[scores={Dialog=2688}] run fill -472 56 -114 -471 59 -113 minecraft:orange_stained_glass
execute if entity @s[scores={Dialog=2688}] run setblock -472 58 -113 minecraft:air
teleport @s[scores={Dialog=2688..4235}] -472 57 -113 facing -465 55 -119
tellraw @s[scores={Dialog=2688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.61"}]}
tellraw @s[scores={Dialog=2696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.62"}]}
tellraw @s[scores={Dialog=2736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.63"}]}
tellraw @s[scores={Dialog=2768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.64"}]}
tellraw @s[scores={Dialog=2792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.65"}]}
tellraw @s[scores={Dialog=2864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.66"}]}
tellraw @s[scores={Dialog=2872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.67"}]}
tellraw @s[scores={Dialog=2944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.68"}]}
tellraw @s[scores={Dialog=2952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.69"}]}
tellraw @s[scores={Dialog=3024}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.70"}]}
tellraw @s[scores={Dialog=3048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.71"}]}
tellraw @s[scores={Dialog=3152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.72"}]}
tellraw @s[scores={Dialog=3240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.73"}]}
tellraw @s[scores={Dialog=3344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.74"}]}
tellraw @s[scores={Dialog=3420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.75"}]}
tellraw @s[scores={Dialog=3452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.76"}]}
tellraw @s[scores={Dialog=3484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.77"}]}
tellraw @s[scores={Dialog=3548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.78"}]}
tellraw @s[scores={Dialog=3588}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.79"}]}
tellraw @s[scores={Dialog=3608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.80","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=3720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.81"}]}
tellraw @s[scores={Dialog=3728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.82","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=3800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.83"}]}
tellraw @s[scores={Dialog=3872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.84"}]}
tellraw @s[scores={Dialog=3912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.85"}]}
tellraw @s[scores={Dialog=3976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.86"}]}
tellraw @s[scores={Dialog=3992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.87"}]}
tellraw @s[scores={Dialog=4040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.88"}]}
tellraw @s[scores={Dialog=4072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.89"}]}
tellraw @s[scores={Dialog=4080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.90"}]}
execute if entity @s[scores={Dialog=4088}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=4088}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4089..4235}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4236}] run tag @e[tag=samantha,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4088}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=4088}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4089..4235}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4236}] run tag @e[tag=sloan,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4088}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=4088}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4089..4235}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4236}] run tag @e[tag=spyke,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4088}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=4088}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4089..4235}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4236}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4088}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=4088}] run tag @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4089..4235}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4236}] run tag @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=4088}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=4088}] run tag @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4089..4235}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4236}] run tag @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
tellraw @s[scores={Dialog=4148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.doctor_haru"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.91"}]}
execute if entity @s[scores={Dialog=4236}] run teleport @e[tag=samantha,tag=this_dialog,limit=1] -459 55 -53
execute if entity @s[scores={Dialog=4236}] run teleport @e[tag=sloan,tag=this_dialog,limit=1] -460 55 -51
execute if entity @s[scores={Dialog=4236}] run teleport @e[tag=spyke,tag=this_dialog,limit=1] -460 55 -55
execute if entity @s[scores={Dialog=4236}] run teleport @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] -451 55 -46
execute if entity @s[scores={Dialog=4236}] run teleport @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] -449 55 -47
execute if entity @s[scores={Dialog=4236}] run teleport @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] -453 55 -47
execute if entity @s[scores={Dialog=4236}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4236}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4236}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4236}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4236}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4236}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=4236}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=4236}] MusicType 35
scoreboard players set @s[scores={Dialog=4236}] Music 0
execute if entity @s[scores={Dialog=4236}] run fill -472 56 -114 -471 59 -113 minecraft:air
teleport @s[scores={Dialog=4236}] -445 55 -46 facing -459 55 -53
teleport @s[scores={Dialog=4237..}] -445 55 -46 
tellraw @s[scores={Dialog=4236}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.92"}]}
tellraw @s[scores={Dialog=4284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.93"}]}
tellraw @s[scores={Dialog=4300}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.94"}]}
tellraw @s[scores={Dialog=4308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.red_pepper"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.95"}]}
tellraw @s[scores={Dialog=4324}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.blue_man"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.96"}]}
tellraw @s[scores={Dialog=4340}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peace_kiss"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.97"}]}
execute if entity @s[scores={Dialog=4364}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -394 55 -53
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4364}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -394 55 -53
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4364}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -394 55 -53
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4364}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -394 55 -53
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=red_pepper,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4364}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -394 55 -53
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=peace_kiss,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4364}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -394 55 -53
execute if entity @s[scores={Dialog=4364}] run tag @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4365..}] as @e[tag=blue_man,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=4404}] MusicType 1
scoreboard players set @s[scores={Dialog=4404}] Music 0
tellraw @s[scores={Dialog=4404}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.98"}]}
execute if entity @s[scores={Dialog=4444}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.99"}]}
tellraw @s[scores={Dialog=4468}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.100"}]}
tellraw @s[scores={Dialog=4524}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.101"}]}
tellraw @s[scores={Dialog=4612}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.102"}]}
tellraw @s[scores={Dialog=4668}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.three_colors_defeated.103"}]}
tag @s[scores={Dialog=4724}] remove dialog_infinity_three_colors_defeated
scoreboard players reset @s[scores={Dialog=4724}] DialogNr
scoreboard players set @s[scores={Dialog=4724}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
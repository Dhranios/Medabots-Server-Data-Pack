scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression kuwagata_medal
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1622 51 -215 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[-65.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1622,y=51,z=-215,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1622,y=51,z=-215,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1622 51 -215 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,model_data:{leg_count:2},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1622 51 -215 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1622 51 -215 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1622 51 -215 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1622 51 -215 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-1622,y=51,z=-215,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1618 51 -213 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["director_tune","cutscene"],Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,display:{color:13684944}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,display:{color:3642822}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,display:{color:3642822}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"DirectorTune",Properties:{textures:[{Signature:"iQAUpPT2nqBp1XrnU50M0X/hZZFyIhOOqkbnIGOwvBR8p/WpIsvYXNjviB8I8CSi8Yk1Aw7dieFz8RlqvQx3958kZAZ1EOrmm6xq/d00VHkDR0rsLgB1OTrYAs7PpF+2Ri5iJfP8LDOGfNhswlBX2H2CrLy5Qz0h9weuo5XHtfy+xzw6WjklBjAk+Zp06akXSpFx5QTDh28YuihYn3CT5C6L2mk2nUeNsU7YAbf6iN0Ml4pJSuw6PrJcUc1Hzy5FGh74PNIA8kWS3RhAtmQKe/qLQjYOhX2ml4WM8gJsYqRpl3+fQCfMxapO782FSaAEJr+76o0K/S1Ml/3vsXZpZOyc+moKy5Ktz5PQscJiNPzkphWdVMGH49E0mMeJRcj3fYQGYOPl7Egtr60EFgcxecny2Yz0g2w9i+1plnE6ssGy3Edvw7mJeDCfcOsAOJioVtae6bT8JIsGIWKBqMxP2YfbIqkRhMlSHMnJaTH2XDmznlBOQBbggTxGd0mQQ+7i9eWQLT7gbn/a8tLuc1yYGHtZqeadWrjE7OpI/ecQ9P+vEV5Al8z0EkTGbxxJk0/J16FQZGoa1YJQVUux/vp04glBPoUAG0bJZTDnSajzupWJWTc4gGTGtXJFWbGPk6nrshpzCCNQ/aDXxQl7DMoEuDv2dA2kv/7OG61qeWuGuI4=",Value:"eyJ0aW1lc3RhbXAiOjE1MjIxNzI5MDQ4OTksInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTZlN2NjYWExMDg4YzJjMzlmOTI3NWUxMGJhYTkyZTIzODI0OWEwYzdiYmU3YThlODY5OTdjODQ3MDQ3ZWMifSwiQ0FQRSI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2Y4YjU1Y2EzMjJlNjRhMzgxYjY0ODRkYWMyZDhhYTQyYzc4YzYxMjkzMzZlYTNlZjQ1OTZmMWQzMWIyN2VmIn19fQ=="}]},Name:"DirectorTune"}}}]}
execute at @s as @e[x=-1618,y=51,z=-213,tag=director_tune,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -1625 51 -241 {Duration:1000000,Tags:["cutscene","max"],Rotation:[-15.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-1625,y=51,z=-241,distance=..1,tag=max] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-1625,y=51,z=-241,distance=..1,tag=max] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1625 51 -241 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_carrybag.model"}']},medabots_server:{id:"medabots_server:aimflash_carrybag",gender:0b,move:"wheel",part:"legs",armor:50,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1625 51 -241 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_tripod.model"}']},medabots_server:{id:"medabots_server:aimflash_tripod",gender:0b,move:"gatling",part:"left_arm",armor:45,power:20,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1625 51 -241 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.laser"}','{"italic":false,"color":"white","translate":"medabots_server:move.laser.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_zoom.model"}']},medabots_server:{id:"medabots_server:aimflash_zoom",gender:0b,move:"laser",part:"right_arm",armor:20,power:27,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1625 51 -241 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","max","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:26,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:move.falling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"8"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.aimflash"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.aimflash_strobe.model"}']},medabots_server:{id:"medabots_server:aimflash_strobe",gender:0b,move:"falling",part:"head",armor:65,power:20,uses:8,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -1625 51 -241 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=max] MedabotNr
execute at @s as @e[x=-1625,y=51,z=-241,tag=max,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1620 51 -216 -30 0
execute if entity @s[scores={Dialog=1..1460}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.5"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.6"}]}
tellraw @s[scores={Dialog=182}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.7"}]}
tellraw @s[scores={Dialog=206}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.8"}]}
tellraw @s[scores={Dialog=230}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.9"}]}
tellraw @s[scores={Dialog=254}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.10"}]}
tellraw @s[scores={Dialog=286}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.11"}]}
tellraw @s[scores={Dialog=318}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.12"}]}
tellraw @s[scores={Dialog=390}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.13"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.14"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.15","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.16","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.17","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.18"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.19"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.20"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.21"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.22"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.23"}]}
execute if entity @s[scores={Dialog=920},tag=!already_gave_items] run function medabots_server:give_items/tinpet/female
execute if entity @s[scores={Dialog=920},tag=!already_gave_items] run function medabots_server:give_items/medal/kuwagata
tag @s[scores={Dialog=920}] add already_gave_items
tellraw @s[scores={Dialog=940}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.24"}]}
tellraw @s[scores={Dialog=980}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.25"}]}
tellraw @s[scores={Dialog=1036}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.26"}]}
tellraw @s[scores={Dialog=1052}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.27"}]}
tellraw @s[scores={Dialog=1076}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.28"}]}
tellraw @s[scores={Dialog=1116}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.29"}]}
tellraw @s[scores={Dialog=1124}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.30"}]}
tellraw @s[scores={Dialog=1164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.31"}]}
tellraw @s[scores={Dialog=1180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.32"}]}
tellraw @s[scores={Dialog=1236}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.33"}]}
tellraw @s[scores={Dialog=1268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.34"}]}
tellraw @s[scores={Dialog=1348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.35"}]}
tellraw @s[scores={Dialog=1380}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.36"}]}
tellraw @s[scores={Dialog=1436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.37"}]}
execute if entity @s[scores={Dialog=1460}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1620 51 -184
execute if entity @s[scores={Dialog=1461..1592}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1540..1738}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.38"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.39"}]}
execute if entity @s[scores={Dialog=1593}] as @e[tag=director_tune,tag=this_dialog,limit=1] run kill @s
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.40"}]}
tellraw @s[scores={Dialog=1652}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.41"}]}
tellraw @s[scores={Dialog=1682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.42"}]}
tellraw @s[scores={Dialog=1730}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.43"}]}
playsound medabots_server:entity.max.photo neutral @s[scores={Dialog=1738}] ~ ~ ~ 1000
stopsound @s[scores={Dialog=1738}] music
scoreboard players set @s[scores={Dialog=1738}] Music 0
execute if entity @s[scores={Dialog=1638}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1623 51 -211
execute if entity @s[scores={Dialog=1639}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=1639..1780}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1780}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=1780..2753}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1738..}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.44"}]}
tellraw @s[scores={Dialog=1816}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.45"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.46"}]}
tellraw @s[scores={Dialog=1952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.47"}]}
tellraw @s[scores={Dialog=1984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.48"}]}
tellraw @s[scores={Dialog=2048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.49"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.50"}]}
tellraw @s[scores={Dialog=2120}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.51"}]}
tellraw @s[scores={Dialog=2152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.52"}]}
tellraw @s[scores={Dialog=2216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.53"}]}
tellraw @s[scores={Dialog=2240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.54"}]}
tellraw @s[scores={Dialog=2306}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.55"}]}
tellraw @s[scores={Dialog=2410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.56"}]}
tellraw @s[scores={Dialog=2458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.57"}]}
tellraw @s[scores={Dialog=2474}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.58"}]}
tellraw @s[scores={Dialog=2506}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.59"}]}
tellraw @s[scores={Dialog=2626}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.60"}]}
tellraw @s[scores={Dialog=2642}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.61"}]}
tellraw @s[scores={Dialog=2650}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.62"}]}
tellraw @s[scores={Dialog=2682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.63"}]}
tellraw @s[scores={Dialog=2698}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.64"}]}
tellraw @s[scores={Dialog=2738}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.65"}]}
execute if entity @s[scores={Dialog=2754}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1620 51 -184
execute if entity @s[scores={Dialog=2755}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=2755..}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=2834}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kuwagata_medal.66"}]}
tag @s[scores={Dialog=2878}] remove dialog_infinity_kuwagata_medal
tag @s[scores={Dialog=2878}] remove already_gave_items
stopsound @s[scores={Dialog=2878}] music
scoreboard players set @s[scores={Dialog=2878}] MusicType 1
scoreboard players set @s[scores={Dialog=2878}] Music 0
scoreboard players reset @s[scores={Dialog=2878}] DialogNr
scoreboard players set @s[scores={Dialog=2878}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.director_tune music @s[scores={Music=0,MusicType=-1,Dialog=..1737}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..1737}] Music 652
playsound medabots_server:music.entity.max music @s[scores={Music=0,MusicType=-1,Dialog=1738..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=1738..}] Music 578
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression tune_observes
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -407 55 -49 {Duration:1000000,Tags:["cutscene","jaxy"],Rotation:[-70.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-407,y=55,z=-49,distance=..1,tag=jaxy] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-407,y=55,z=-49,distance=..1,tag=jaxy] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.wheel"}','{"italic":false,"color":"white","translate":"medabots_server:move.wheel.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_caterpie.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_caterpie",gender:1b,move:"wheel",part:"legs",armor:55,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_attenderskin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.bug"}','{"italic":false,"color":"white","translate":"medabots_server:move.bug.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_attenderskin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_attenderskin",gender:1b,move:"bug",part:"left_arm",armor:55,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_ragingskin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.bug"}','{"italic":false,"color":"white","translate":"medabots_server:move.bug.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_ragingskin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_ragingskin",gender:1b,move:"bug",part:"right_arm",armor:55,power:28,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -407 55 -49 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","jaxy","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:41,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.transform"}','{"italic":false,"color":"white","translate":"medabots_server:move.transform.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"90"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.potato_insect"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.potato_insect_changedress.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:potato_insect_changedress",gender:1b,move:"transform",part:"head",armor:90,power:25,uses:7,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -407 55 -49 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=jaxy] MedabotNr
execute at @s as @e[x=-407,y=55,z=-49,tag=jaxy,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -405 55 -48 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["karin","cutscene"],Rotation:[120.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12074079}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14319255}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-405,y=55,z=-48,tag=karin,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -411 55 -31 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["director_tune","cutscene"],Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,display:{color:13684944}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,display:{color:3642822}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,display:{color:3642822}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"DirectorTune",Properties:{textures:[{Signature:"iQAUpPT2nqBp1XrnU50M0X/hZZFyIhOOqkbnIGOwvBR8p/WpIsvYXNjviB8I8CSi8Yk1Aw7dieFz8RlqvQx3958kZAZ1EOrmm6xq/d00VHkDR0rsLgB1OTrYAs7PpF+2Ri5iJfP8LDOGfNhswlBX2H2CrLy5Qz0h9weuo5XHtfy+xzw6WjklBjAk+Zp06akXSpFx5QTDh28YuihYn3CT5C6L2mk2nUeNsU7YAbf6iN0Ml4pJSuw6PrJcUc1Hzy5FGh74PNIA8kWS3RhAtmQKe/qLQjYOhX2ml4WM8gJsYqRpl3+fQCfMxapO782FSaAEJr+76o0K/S1Ml/3vsXZpZOyc+moKy5Ktz5PQscJiNPzkphWdVMGH49E0mMeJRcj3fYQGYOPl7Egtr60EFgcxecny2Yz0g2w9i+1plnE6ssGy3Edvw7mJeDCfcOsAOJioVtae6bT8JIsGIWKBqMxP2YfbIqkRhMlSHMnJaTH2XDmznlBOQBbggTxGd0mQQ+7i9eWQLT7gbn/a8tLuc1yYGHtZqeadWrjE7OpI/ecQ9P+vEV5Al8z0EkTGbxxJk0/J16FQZGoa1YJQVUux/vp04glBPoUAG0bJZTDnSajzupWJWTc4gGTGtXJFWbGPk6nrshpzCCNQ/aDXxQl7DMoEuDv2dA2kv/7OG61qeWuGuI4=",Value:"eyJ0aW1lc3RhbXAiOjE1MjIxNzI5MDQ4OTksInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTZlN2NjYWExMDg4YzJjMzlmOTI3NWUxMGJhYTkyZTIzODI0OWEwYzdiYmU3YThlODY5OTdjODQ3MDQ3ZWMifSwiQ0FQRSI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2Y4YjU1Y2EzMjJlNjRhMzgxYjY0ODRkYWMyZDhhYTQyYzc4YzYxMjkzMzZlYTNlZjQ1OTZmMWQzMWIyN2VmIn19fQ=="}]},Name:"DirectorTune"}}}]}
execute at @s as @e[x=-411,y=55,z=-31,tag=director_tune,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[x=-410,y=55,z=-42,distance=..6] -415 55 -34
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.1"}]}
tellraw @s[scores={Dialog=20}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.2"}]}
tellraw @s[scores={Dialog=36}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.tune_observes.3"}]}
execute if entity @s[scores={Dialog=68..}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=68}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.4"}]}
tellraw @s[scores={Dialog=100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.5"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.6"}]}
tellraw @s[scores={Dialog=148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune"},{"translate":"medabots_server:dialog.infinity.tune_observes.7"}]}
tag @s[scores={Dialog=172}] remove dialog_infinity_tune_observes
stopsound @s[scores={Dialog=172}] music
scoreboard players set @s[scores={Dialog=172}] MusicType 1
scoreboard players set @s[scores={Dialog=172}] Music 0
scoreboard players reset @s[scores={Dialog=172}] DialogNr
scoreboard players set @s[scores={Dialog=172}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.director_tune music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 652
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression rubberobo_enters_ruins_out_a
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -409 55 -39 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[43.5f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-409,y=55,z=-39,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-409,y=55,z=-39,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -409 55 -39 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -409 55 -39 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -409 55 -39 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -409 55 -39 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -409 55 -39 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-409,y=55,z=-39,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:zombie -426 55 -21 {Rotation:[-90.0f,0.0f],NoAI:1b,CustomName:'{"translate":"medabots_server:entity.rubberobo"}',CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Rubberobo",Properties:{textures:[{Signature:"bhvpykN+k7/YpS8YO0J+orUsvHe01UlCkaiEQq4luinbbraiiVGoLTwap6kdMcptuAaOf5eQL36TGTkqenFWOcIKkGhdgDHQ5qpbj4AF9mnzVwHFOeUhM5Z5QTcl9arf8JcAuReIl4NHulVBH0vnBLJ6cg8i4uQJOF+8jMaO4HEKP5ZM6sUdZ2QmecOMS5ITx3+i1lVVlH6aXrLqCttZoKOIPhpYl/aUSJ+LutDIwfCRqtFLso9aurPNELKAI/vQBa9PRfmwqaH2JjTFtwH8cA1V4wpjvrNzroOLXXN8zPSA3oo8fxFtpYBRa7s15LawWGMDSAUzX2vq/pDYFBxMXbJnYkBOgKVrR90ZI+efoV0I/yL3/0RoZ8z9dgVpkOkwL7KeBrZpAe6LPbQXZWiNmCugpJ7GocpFS8dhLsHO7Obo8WETLKJN4Xqn1jLGMMwr8GMqqPH4C1bDPsgE5MHnftXHQp9/1qFUGEq5JWu5i3Bi2XkVUrwZ/F51I6GDJeLvpHdItb2Kap9zB8gqOOKgrhDKZvuhegrF4jKo8zYxjHiO4jVOy7fOmRRjnXBSLIO0ax+r2u8wb7xZjKvI9zIfJ0gqItY/po3BoeMbZ+UmBPQWb3fEu+U54BkiIc0P67FDgwPs3QaaFRg3TcPj/yv/O0UEa5/lAkEMHYmqmpjmZLc=",Value:"eyJ0aW1lc3RhbXAiOjE0ODY4MjQ2NTI5NjUsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU0ZmE3ZTdkNTg3NjIzYTg4NzVhMDhhYmE0YzhlZWU2ZTRmYjU4YTQ3Mjg1ZTFhZjZlNWU2YTE3MWJlYmU0YSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhiNTVjYTMyMmU2NGEzODFiNjQ4NGRhYzJkOGFhNDJjNzhjNjEyOTMzNmVhM2VmNDU5NmYxZDMxYjI3ZWYifX19"}]},Name:"Rubberobo"}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Invulnerable:0b,Health:100.0f,AbsorptionAmount:250.0f,Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.followRange",Base:10.0d},{Name:"generic.attackDamage",Base:-3.0d},{Name:"zombie.spawnReinforcements",Base:0.0d}],PersistenceRequired:1b,Team:"StageEnemy",Silent:1b,Tags:["rubberobo","cutscene"]}
execute at @s as @e[x=-426,y=55,z=-21,tag=rubberobo,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -410 55 -40 40 0
teleport @s[scores={Dialog=1..711}] -410 55 -40
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.2"}]}
execute if entity @s[scores={Dialog=10}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.3"}]}
execute if entity @s[scores={Dialog=30}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.4"}]}
execute if entity @s[scores={Dialog=50}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=70}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.5"}]}
execute if entity @s[scores={Dialog=90}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.6"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.7"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.8"}]}
execute if entity @s[scores={Dialog=152}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -429 55 -28
execute if entity @s[scores={Dialog=153..187}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=187}] run summon minecraft:armor_stand -441 55 -10 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["robbed_kid","cutscene"],Rotation:[-120.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3225135}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8023136}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4551997}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-441,y=55,z=-10,tag=robbed_kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=188..252}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=253}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 160 ~
tellraw @s[scores={Dialog=253}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.9"}]}
tellraw @s[scores={Dialog=285}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.10"}]}
execute if entity @s[scores={Dialog=309..322}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=322}] run setblock -431 53 -20 minecraft:redstone_block
execute if entity @s[scores={Dialog=323}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 140 0
execute if entity @s[scores={Dialog=324..336}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=336}] run setblock -431 53 -20 minecraft:dirt
execute if entity @s[scores={Dialog=336}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -426 55 -21
execute if entity @s[scores={Dialog=336..370}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=370}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=390}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=410}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
tellraw @s[scores={Dialog=410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.11"}]}
execute if entity @s[scores={Dialog=426}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -429 55 -19
execute if entity @s[scores={Dialog=426..443}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=444}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 135 ~
execute if entity @s[scores={Dialog=445..460}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=447}] run setblock -431 53 -20 minecraft:redstone_block
execute if entity @s[scores={Dialog=520}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 ~
execute if entity @s[scores={Dialog=544}] run setblock -431 53 -20 minecraft:dirt
execute if entity @s[scores={Dialog=521..546}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=546}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.12"}]}
execute if entity @s[scores={Dialog=570}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=590}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=610}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=630}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=650}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 ~
execute if entity @s[scores={Dialog=651..710}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=710}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=710}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
stopsound @s[scores={Dialog=710}] music
scoreboard players set @s[scores={Dialog=710}] MusicType 1
scoreboard players set @s[scores={Dialog=710}] Music 0
tellraw @s[scores={Dialog=710}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.13"}]}
tellraw @s[scores={Dialog=734}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.14"}]}
tellraw @s[scores={Dialog=750}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.15","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=774}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.16"}]}
execute if entity @s[scores={Dialog=781..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -426 55 -15
execute if entity @s[scores={Dialog=781..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=782..919}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=920..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=782..913}] facing -426 55 -17 run teleport @s ^ ^ ^0.2125
teleport @s[scores={Dialog=913..}] -426 55 -17
execute if entity @s[scores={Dialog=887}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 ~
execute if entity @s[scores={Dialog=887}] run setblock -431 53 -20 minecraft:redstone_block
execute if entity @s[scores={Dialog=911}] run setblock -431 53 -20 minecraft:dirt
execute if entity @s[scores={Dialog=888..913}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=913..}] at @e[tag=robbed_kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=robbed_kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=913}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.17"}]}
execute if entity @s[scores={Dialog=929..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=robbed_kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=929}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.18"}]}
tellraw @s[scores={Dialog=969}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.19"}]}
tellraw @s[scores={Dialog=1001}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.20"}]}
tellraw @s[scores={Dialog=1025}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.21"}]}
tellraw @s[scores={Dialog=1049}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.22"}]}
tellraw @s[scores={Dialog=1097}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.23"}]}
tellraw @s[scores={Dialog=1129}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.24"}]}
tellraw @s[scores={Dialog=1145}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.25"}]}
tellraw @s[scores={Dialog=1177}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.26"}]}
tellraw @s[scores={Dialog=1193}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.27"}]}
tellraw @s[scores={Dialog=1225}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.28"}]}
advancement grant @s[scores={Dialog=1289}] only medabots_server:special_items/passes/robo_2
tag @s[scores={Dialog=1289}] remove dialog_infinity_rubberobo_enters_ruins_out_a
scoreboard players reset @s[scores={Dialog=1289}] DialogNr
scoreboard players set @s[scores={Dialog=1289}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression vs_gillgirl_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] run summon minecraft:area_effect_cloud -2001 51 -608 {Duration:1000000,Tags:["cutscene","metabee"],Rotation:[25.0f,0.0f]}
execute if entity @s[scores={Dialog=1}] run scoreboard players operation @e[x=-2001,y=51,z=-608,distance=..1,tag=metabee] MedabotNr > @e[scores={MedabotNr=0..}] MedabotNr
execute if entity @s[scores={Dialog=1}] run scoreboard players add @e[x=-2001,y=51,z=-608,distance=..1,tag=metabee] MedabotNr 1
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2001 51 -608 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","legs","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2001 51 -608 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","left_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2001 51 -608 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","right_arm","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2001 51 -608 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cutscene","metabee","head","medabot_model"],CustomName:'{"translate":"medabots_server:entity.medabot_model"}',ArmorItems:[{},{},{},{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}}]}
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -608 as @e[tag=medabot_model,distance=..1] run scoreboard players operation @s MedabotNr = @e[distance=..1,limit=1,tag=metabee] MedabotNr
execute at @s as @e[x=-2001,y=51,z=-608,tag=metabee,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1999 51 -604 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["gillgirl","cutscene"],Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1999,y=51,z=-604,tag=gillgirl,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:zombie -2005 51 -604 {Rotation:[-125.0f,0.0f],NoAI:1b,CustomName:'{"translate":"medabots_server:entity.rubberobo"}',CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Rubberobo",Properties:{textures:[{Signature:"bhvpykN+k7/YpS8YO0J+orUsvHe01UlCkaiEQq4luinbbraiiVGoLTwap6kdMcptuAaOf5eQL36TGTkqenFWOcIKkGhdgDHQ5qpbj4AF9mnzVwHFOeUhM5Z5QTcl9arf8JcAuReIl4NHulVBH0vnBLJ6cg8i4uQJOF+8jMaO4HEKP5ZM6sUdZ2QmecOMS5ITx3+i1lVVlH6aXrLqCttZoKOIPhpYl/aUSJ+LutDIwfCRqtFLso9aurPNELKAI/vQBa9PRfmwqaH2JjTFtwH8cA1V4wpjvrNzroOLXXN8zPSA3oo8fxFtpYBRa7s15LawWGMDSAUzX2vq/pDYFBxMXbJnYkBOgKVrR90ZI+efoV0I/yL3/0RoZ8z9dgVpkOkwL7KeBrZpAe6LPbQXZWiNmCugpJ7GocpFS8dhLsHO7Obo8WETLKJN4Xqn1jLGMMwr8GMqqPH4C1bDPsgE5MHnftXHQp9/1qFUGEq5JWu5i3Bi2XkVUrwZ/F51I6GDJeLvpHdItb2Kap9zB8gqOOKgrhDKZvuhegrF4jKo8zYxjHiO4jVOy7fOmRRjnXBSLIO0ax+r2u8wb7xZjKvI9zIfJ0gqItY/po3BoeMbZ+UmBPQWb3fEu+U54BkiIc0P67FDgwPs3QaaFRg3TcPj/yv/O0UEa5/lAkEMHYmqmpjmZLc=",Value:"eyJ0aW1lc3RhbXAiOjE0ODY4MjQ2NTI5NjUsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU0ZmE3ZTdkNTg3NjIzYTg4NzVhMDhhYmE0YzhlZWU2ZTRmYjU4YTQ3Mjg1ZTFhZjZlNWU2YTE3MWJlYmU0YSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhiNTVjYTMyMmU2NGEzODFiNjQ4NGRhYzJkOGFhNDJjNzhjNjEyOTMzNmVhM2VmNDU5NmYxZDMxYjI3ZWYifX19"}]},Name:"Rubberobo"}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Invulnerable:0b,Health:100.0f,AbsorptionAmount:250.0f,Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.followRange",Base:10.0d},{Name:"generic.attackDamage",Base:-3.0d},{Name:"zombie.spawnReinforcements",Base:0.0d}],PersistenceRequired:1b,Team:"StageEnemy",Silent:1b,Tags:["rubberobo","cutscene"]}
execute at @s as @e[x=-2005,y=51,z=-604,tag=rubberobo,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..1096}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..239}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..902}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.5"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.7"}]}
execute if entity @s[scores={Dialog=240}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=241..290}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=291..1060}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=255}] run summon minecraft:item -1998 51 -601 {PickupDelay:427s,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ghost_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s,Invulnerable:1b}
execute at @s as @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=255}] run data modify entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[scores={Dialog=255}] run data modify entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[scores={Dialog=270}] run summon minecraft:item -2000 51 -598 {PickupDelay:412s,Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unicorn_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:unicorn_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s,Invulnerable:1b}
execute at @s as @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=270}] run data modify entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[scores={Dialog=270}] run data modify entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] Owner.M set from entity @s UUIDMost
tellraw @s[scores={Dialog=255}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.8"}]}
tellraw @s[scores={Dialog=270}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.9"}]}
tellraw @s[scores={Dialog=290}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.10"}]}
tellraw @s[scores={Dialog=322}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.11","with":[{"translate":"medabots_server:entity.gillgirl"}]}]}
tellraw @s[scores={Dialog=386}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.12"}]}
tellraw @s[scores={Dialog=458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.13"}]}
tellraw @s[scores={Dialog=490}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.14"}]}
tellraw @s[scores={Dialog=514}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.15"}]}
tellraw @s[scores={Dialog=578}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.16"}]}
tellraw @s[scores={Dialog=602}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.17"}]}
tellraw @s[scores={Dialog=618}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.18"}]}
tellraw @s[scores={Dialog=626}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.19"}]}
tellraw @s[scores={Dialog=634}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.20"}]}
execute if entity @s[scores={Dialog=682..782}] if entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] unless entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 782
execute if entity @s[scores={Dialog=682..782}] unless entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] if entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 782
execute if entity @s[scores={Dialog=782}] if entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add ghost
execute if entity @s[scores={Dialog=782}] if entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add unicorn
execute if entity @s[scores={Dialog=782}] run data merge entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] {PickupDelay:1000s}
execute if entity @s[scores={Dialog=782}] run data merge entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] {PickupDelay:1000s}
execute if entity @s[scores={Dialog=782}] if entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] if entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 903
tellraw @s[scores={Dialog=782}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.21"}]}
tellraw @s[scores={Dialog=806}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.22"}]}
tellraw @s[scores={Dialog=862}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.23"}]}
tellraw @s[scores={Dialog=902}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.24"}]}
execute if entity @s[scores={Dialog=903}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost] at @s run teleport @s ~ ~ ~ facing -1998 51 -601
execute if entity @s[scores={Dialog=904..939}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=939}] if entity @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost] run kill @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1]
execute if entity @s[scores={Dialog=920}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!ghost,tag=unicorn] at @s run teleport @s ~ ~ ~ facing -2000 51 -598
execute if entity @s[scores={Dialog=921..957}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!ghost,tag=unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=940}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost,tag=unicorn] at @s run teleport @s ~ ~ ~ facing -2000 51 -598
execute if entity @s[scores={Dialog=941..957}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost,tag=unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=957}] if entity @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] run kill @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1]
execute if entity @s[scores={Dialog=958}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=959..1017}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=958}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=959..1032}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1017}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] ~ -100 ~
execute if entity @s[scores={Dialog=1017}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] add dead
execute if entity @s[scores={Dialog=1032}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] ~ -100 ~
execute if entity @s[scores={Dialog=1032}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] add dead
tellraw @s[scores={Dialog=957}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.25"}]}
tellraw @s[scores={Dialog=973}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.26"}]}
tellraw @s[scores={Dialog=997}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.27"}]}
tellraw @s[scores={Dialog=1029}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.28"}]}
execute if entity @s[scores={Dialog=1061}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=1062..1097}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1097}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add dead
stopsound @s[scores={Dialog=1097}] music
scoreboard players set @s[scores={Dialog=1097}] MusicType 1
scoreboard players set @s[scores={Dialog=1097}] Music 0
execute if entity @s[scores={Dialog=1097..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1097}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.29"}]}
tellraw @s[scores={Dialog=1129}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.30"}]}
tellraw @s[scores={Dialog=1249}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.31"}]}
tellraw @s[scores={Dialog=1289}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.32"}]}
tag @s[scores={Dialog=1314}] remove dialog_infinity_vs_gillgirl_battle
scoreboard players reset @s[scores={Dialog=1314}] DialogNr
scoreboard players set @s[scores={Dialog=1314}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744
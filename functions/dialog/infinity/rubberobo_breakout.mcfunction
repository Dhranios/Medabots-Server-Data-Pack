scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_breakout
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 136
playsound medabots_server:music.entity.koji_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1773 50 -288 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["koji","cutscene"],Rotation:[-17.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4212106}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15393439}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1773,y=50,z=-288,tag=koji,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1772 50 -284 165 0
execute if entity @s[scores={Dialog=1..103}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=104..167}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=272..1034}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.4"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.5"}]}
stopsound @s[scores={Dialog=104}] music
scoreboard players set @s[scores={Dialog=104}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=104}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=104}] run summon minecraft:zombie -1779 50 -300 {Rotation:[-90.0f,0.0f],NoAI:1b,CustomName:'{"translate":"medabots_server:entity.rubberobo"}',CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Rubberobo",Properties:{textures:[{Signature:"bhvpykN+k7/YpS8YO0J+orUsvHe01UlCkaiEQq4luinbbraiiVGoLTwap6kdMcptuAaOf5eQL36TGTkqenFWOcIKkGhdgDHQ5qpbj4AF9mnzVwHFOeUhM5Z5QTcl9arf8JcAuReIl4NHulVBH0vnBLJ6cg8i4uQJOF+8jMaO4HEKP5ZM6sUdZ2QmecOMS5ITx3+i1lVVlH6aXrLqCttZoKOIPhpYl/aUSJ+LutDIwfCRqtFLso9aurPNELKAI/vQBa9PRfmwqaH2JjTFtwH8cA1V4wpjvrNzroOLXXN8zPSA3oo8fxFtpYBRa7s15LawWGMDSAUzX2vq/pDYFBxMXbJnYkBOgKVrR90ZI+efoV0I/yL3/0RoZ8z9dgVpkOkwL7KeBrZpAe6LPbQXZWiNmCugpJ7GocpFS8dhLsHO7Obo8WETLKJN4Xqn1jLGMMwr8GMqqPH4C1bDPsgE5MHnftXHQp9/1qFUGEq5JWu5i3Bi2XkVUrwZ/F51I6GDJeLvpHdItb2Kap9zB8gqOOKgrhDKZvuhegrF4jKo8zYxjHiO4jVOy7fOmRRjnXBSLIO0ax+r2u8wb7xZjKvI9zIfJ0gqItY/po3BoeMbZ+UmBPQWb3fEu+U54BkiIc0P67FDgwPs3QaaFRg3TcPj/yv/O0UEa5/lAkEMHYmqmpjmZLc=",Value:"eyJ0aW1lc3RhbXAiOjE0ODY4MjQ2NTI5NjUsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU0ZmE3ZTdkNTg3NjIzYTg4NzVhMDhhYmE0YzhlZWU2ZTRmYjU4YTQ3Mjg1ZTFhZjZlNWU2YTE3MWJlYmU0YSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhiNTVjYTMyMmU2NGEzODFiNjQ4NGRhYzJkOGFhNDJjNzhjNjEyOTMzNmVhM2VmNDU5NmYxZDMxYjI3ZWYifX19"}]},Name:"Rubberobo"}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Invulnerable:0b,Health:100.0f,AbsorptionAmount:250.0f,Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.followRange",Base:10.0d},{Name:"generic.attackDamage",Base:-3.0d},{Name:"zombie.spawnReinforcements",Base:0.0d}],PersistenceRequired:1b,Team:"StageEnemy",Silent:1b,Tags:["rubberobo","cutscene"]}
execute at @s as @e[x=-1779,y=50,z=-300,tag=rubberobo,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=105..167}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=167}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=167}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.6"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.7"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.8"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.9"}]}
execute if entity @s[scores={Dialog=216}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1773 50 -300
execute if entity @s[scores={Dialog=217..271}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=271}] music
scoreboard players set @s[scores={Dialog=271}] Music 136
playsound medabots_server:music.entity.koji_intro music @s[scores={Dialog=271}] ~ ~ ~ 1000
tellraw @s[scores={Dialog=271}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.10"}]}
tellraw @s[scores={Dialog=303}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.11"}]}
tellraw @s[scores={Dialog=319}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.12"}]}
tellraw @s[scores={Dialog=343}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.13"}]}
tellraw @s[scores={Dialog=391}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.14"}]}
tellraw @s[scores={Dialog=471}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.15"}]}
tellraw @s[scores={Dialog=503}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.16"}]}
tellraw @s[scores={Dialog=535}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.17"}]}
tellraw @s[scores={Dialog=567}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.18"}]}
tellraw @s[scores={Dialog=631}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.19"}]}
tellraw @s[scores={Dialog=671}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.20"}]}
tellraw @s[scores={Dialog=735}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.21"}]}
tellraw @s[scores={Dialog=751}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.22"}]}
tellraw @s[scores={Dialog=783}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.23"}]}
tellraw @s[scores={Dialog=807}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.24"}]}
tellraw @s[scores={Dialog=831}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.25"}]}
tellraw @s[scores={Dialog=851}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.26"}]}
tellraw @s[scores={Dialog=883}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.27"}]}
tellraw @s[scores={Dialog=963}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.28"}]}
tellraw @s[scores={Dialog=971}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.rubberobo_breakout.29"}]}
execute if entity @s[scores={Dialog=1035}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1772 50 -251
execute if entity @s[scores={Dialog=1036..1260}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
advancement grant @s[scores={Dialog=1260}] only medabots_server:special_items/passes/robo_1
stopsound @s[scores={Dialog=1260}] music
scoreboard players set @s[scores={Dialog=1260}] MusicType 1
scoreboard players set @s[scores={Dialog=1260}] Music 0
tag @s[scores={Dialog=1260}] remove dialog_infinity_rubberobo_breakout
scoreboard players reset @s[scores={Dialog=1260}] DialogNr
scoreboard players set @s[scores={Dialog=1260}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.koji music @s[scores={Music=0,MusicType=-1,Dialog=..103}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..103}] Music 274
playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1,Dialog=104..270}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=104..270}] Music 744
playsound medabots_server:music.entity.koji music @s[scores={Music=0,MusicType=-1,Dialog=271..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=271..}] Music 274
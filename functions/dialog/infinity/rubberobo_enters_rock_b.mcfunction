scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_rock_b
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run summon minecraft:zombie -1607 51 -351 {Rotation:[0.0f,0.0f],NoAI:1b,CustomName:'{"translate":"medabots_server:entity.rubberobo"}',CustomNameVisible:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"Rubberobo",Properties:{textures:[{Signature:"bhvpykN+k7/YpS8YO0J+orUsvHe01UlCkaiEQq4luinbbraiiVGoLTwap6kdMcptuAaOf5eQL36TGTkqenFWOcIKkGhdgDHQ5qpbj4AF9mnzVwHFOeUhM5Z5QTcl9arf8JcAuReIl4NHulVBH0vnBLJ6cg8i4uQJOF+8jMaO4HEKP5ZM6sUdZ2QmecOMS5ITx3+i1lVVlH6aXrLqCttZoKOIPhpYl/aUSJ+LutDIwfCRqtFLso9aurPNELKAI/vQBa9PRfmwqaH2JjTFtwH8cA1V4wpjvrNzroOLXXN8zPSA3oo8fxFtpYBRa7s15LawWGMDSAUzX2vq/pDYFBxMXbJnYkBOgKVrR90ZI+efoV0I/yL3/0RoZ8z9dgVpkOkwL7KeBrZpAe6LPbQXZWiNmCugpJ7GocpFS8dhLsHO7Obo8WETLKJN4Xqn1jLGMMwr8GMqqPH4C1bDPsgE5MHnftXHQp9/1qFUGEq5JWu5i3Bi2XkVUrwZ/F51I6GDJeLvpHdItb2Kap9zB8gqOOKgrhDKZvuhegrF4jKo8zYxjHiO4jVOy7fOmRRjnXBSLIO0ax+r2u8wb7xZjKvI9zIfJ0gqItY/po3BoeMbZ+UmBPQWb3fEu+U54BkiIc0P67FDgwPs3QaaFRg3TcPj/yv/O0UEa5/lAkEMHYmqmpjmZLc=",Value:"eyJ0aW1lc3RhbXAiOjE0ODY4MjQ2NTI5NjUsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU0ZmE3ZTdkNTg3NjIzYTg4NzVhMDhhYmE0YzhlZWU2ZTRmYjU4YTQ3Mjg1ZTFhZjZlNWU2YTE3MWJlYmU0YSJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhiNTVjYTMyMmU2NGEzODFiNjQ4NGRhYzJkOGFhNDJjNzhjNjEyOTMzNmVhM2VmNDU5NmYxZDMxYjI3ZWYifX19"}]},Name:"Rubberobo"}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Invulnerable:0b,Health:100.0f,AbsorptionAmount:250.0f,Attributes:[{Name:"generic.maxHealth",Base:100.0d},{Name:"generic.followRange",Base:10.0d},{Name:"generic.attackDamage",Base:-3.0d},{Name:"zombie.spawnReinforcements",Base:0.0d}],PersistenceRequired:1b,Team:"StageEnemy",Silent:1b,Tags:["rubberobo","cutscene"]}
execute at @s as @e[x=-1607,y=51,z=-351,tag=rubberobo,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1607 51 -349 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2500134}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7932672}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2500134}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1607,y=51,z=-349,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1604 51 -351 90 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.4"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.5"}]}
execute if entity @s[scores={Dialog=128..171}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.6"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.7"}]}
execute if entity @s[scores={Dialog=172}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.8"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.9"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.10"}]}
tellraw @s[scores={Dialog=356}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.11"}]}
execute if entity @s[scores={Dialog=376..399}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.12"}]}
execute if entity @s[scores={Dialog=400}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1605 51 -382
execute if entity @s[scores={Dialog=401..545}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=545}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=545}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
stopsound @s[scores={Dialog=545}] music
scoreboard players set @s[scores={Dialog=545}] MusicType 1
scoreboard players set @s[scores={Dialog=545}] Music 0
tag @s[scores={Dialog=545}] remove dialog_infinity_rubberobo_enters_rock_b
scoreboard players reset @s[scores={Dialog=545}] DialogNr
scoreboard players set @s[scores={Dialog=545}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744
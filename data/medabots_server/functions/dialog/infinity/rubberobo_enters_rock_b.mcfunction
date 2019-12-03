execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_rock_b
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1607 51 -351 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1607 51 -349 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2500134}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7932672}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2500134}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1607,y=51,z=-349,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1604 51 -351 90 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.4"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.5"}]}
execute if entity @s[scores={Dialog=128..171}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.6"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.7"}]}
execute if entity @s[scores={Dialog=172}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.8"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.9"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.10"}]}
tellraw @s[scores={Dialog=356}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.11"}]}
execute if entity @s[scores={Dialog=376..399}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_rock_b.12"}]}
execute if entity @s[scores={Dialog=400}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1605 51 -382
execute if entity @s[scores={Dialog=400}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=401..545}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=545}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=545}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
scoreboard players set @s[scores={Dialog=545}] MusicType 1
scoreboard players set @s[scores={Dialog=545}] Music 0
tag @s[scores={Dialog=545}] remove dialog_infinity_rubberobo_enters_rock_b
scoreboard players reset @s[scores={Dialog=545}] DialogNr
scoreboard players set @s[scores={Dialog=545}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
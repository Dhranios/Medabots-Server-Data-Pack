execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_leaves_ruins_in_b
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1622 50 -526 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1620 50 -523 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1622 50 -523 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-145.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:658695}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3478528}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9175557}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1622,y=50,z=-523,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1620 50 -526 0 0
execute if entity @s[scores={Dialog=1..135}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..387}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..327}] at @e[tag=kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.2"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.4"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.5"}]}
execute if entity @s[scores={Dialog=136}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1620 50 -481
execute if entity @s[scores={Dialog=136}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=137..331}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=331}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=331}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
scoreboard players set @s[scores={Dialog=196}] MusicType 1
scoreboard players set @s[scores={Dialog=196}] Music 0
tellraw @s[scores={Dialog=196}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.6"}]}
tellraw @s[scores={Dialog=260}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.7"}]}
execute if entity @s[scores={Dialog=292},tag=!already_gave_items] run function medabots_server:give_items/tinpet/female
tag @s[scores={Dialog=292}] add already_gave_items
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.8"}]}
execute if entity @s[scores={Dialog=328}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1620 50 -481
execute if entity @s[scores={Dialog=328}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=328..523}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=523}] run tag @e[tag=kid,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=388..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=388}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.9"}]}
tellraw @s[scores={Dialog=444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_ruins_in_b.10"}]}
tag @s[scores={Dialog=523}] remove already_gave_items
tag @s[scores={Dialog=523}] remove dialog_infinity_rubberobo_leaves_ruins_in_b
scoreboard players reset @s[scores={Dialog=523}] DialogNr
scoreboard players set @s[scores={Dialog=523}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
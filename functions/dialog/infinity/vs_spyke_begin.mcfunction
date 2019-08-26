scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression vs_spyke_begin
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -324 55 5 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] positioned -323 55 4 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -322 55 6 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -329 55 5 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2103051}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11454154}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:70922}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-329,y=55,z=5,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=2}] as @e[tag=kid,tag=this_dialog,limit=1] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=2}] as @e[tag=kid,tag=this_dialog,limit=1] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1..712}] -319 55 3.0 60 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.2"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.5"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.6"}]}
execute if entity @s[scores={Dialog=196}] as @e[tag=spyke,tag=this_dialog,limit=1] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=216}] as @e[tag=samantha,tag=this_dialog,limit=1] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.7"}]}
execute if entity @s[scores={Dialog=240}] as @e[tag=kid,tag=this_dialog,limit=1] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.8"}]}
execute if entity @s[scores={Dialog=260}] as @e[tag=spyke,tag=this_dialog,limit=1] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.9"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.10"}]}
execute if entity @s[scores={Dialog=336}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=336}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=336}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.11"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.12"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.13"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.14"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.15"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.16"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.17"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.18"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.19"}]}
execute if entity @s[scores={Dialog=712}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -319 55 5.0
execute if entity @s[scores={Dialog=713..926}] facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s -319 55 3.0 ~ ~
execute if entity @s[scores={Dialog=713..727}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=728}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.20"}]}
tellraw @s[scores={Dialog=779}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.21"}]}
tellraw @s[scores={Dialog=811}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.22"}]}
tellraw @s[scores={Dialog=835}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.23"}]}
tellraw @s[scores={Dialog=851}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.24"}]}
execute if entity @s[scores={Dialog=867}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -338 55 8
execute if entity @s[scores={Dialog=868..933}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=867}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -338 55 8
execute if entity @s[scores={Dialog=868..950}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=867}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -338 55 8
execute if entity @s[scores={Dialog=868..958}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=934}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -349 55 6
execute if entity @s[scores={Dialog=935..}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=951}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -349 55 6
execute if entity @s[scores={Dialog=952..}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=959}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -349 55 6
execute if entity @s[scores={Dialog=960..}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=927}] music
scoreboard players set @s[scores={Dialog=927}] MusicType 1
scoreboard players set @s[scores={Dialog=927}] Music 0
execute if entity @s[scores={Dialog=927..991}] facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s -319 55 3.0 ~ ~
tellraw @s[scores={Dialog=927}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_begin.25"}]}
tag @s[scores={Dialog=991}] remove dialog_infinity_vs_spyke_begin
scoreboard players reset @s[scores={Dialog=991}] DialogNr
scoreboard players set @s[scores={Dialog=991}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 250
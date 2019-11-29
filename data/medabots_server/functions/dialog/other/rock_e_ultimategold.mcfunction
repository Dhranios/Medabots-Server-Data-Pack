execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other rock_e_ultimategold
execute if entity @s[scores={Dialog=1}] positioned -1862 51 -298 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1..383}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1860 51 -298 90 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.1"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.2"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.3"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.4"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.5"}]}
execute if entity @s[scores={Dialog=344}] run summon minecraft:armor_stand -1860 51 -251 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["ultimategold","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-105.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:16598054}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:9866720}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:9465504}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"abc801e1-7d34-414c-8bfe-1d005c538feb",Properties:{textures:[{Signature:"tJ3SVU+qfK1YLYyfomAZzaElTBJcrAQ65SQyDisDve61z8jtJarOQOGgMgmEocNwSxGQLxt893kucslknnOKcyx45VeK6/k1VClmkm5Zfxfw1SuA5yFDS1F7Mb/Z/DREvM2f0e/9/H0XK9ZIbNNWPr4wOTjU5O5CTuPhxGAe06afMKXqdaMQsjtj/g2OIB6AX4Mo7771xGeNrgFIskiqE+HxP/GBECxFqdr/k5h4vI4rbxg4j53faZuW0hNe57y8wWdnA4CQBfOLc/5kBfa/EPAGAneGqNCuDlvTSRDgsMdNkFSOazx7Jg6ToYz54Mm3Nq96JLHGXkKkPTUdKNkzDF2zB2cL28iLYaCo/gfypzGwXvF00odNKOyJIQIN0C34emOUaf4xoTDx5sqHe7/XTL61Oc4c/elAViGvXiskCT+hGgkc9sBNIejFaUz5Bu0bQH+s9CZMIGZJWsP3kOw/ce+IUr+Z1uhdWpRl6iRRDVsSC1cYNZ7UOyeMk9OpWvMW+Ad/Q8CZ6xTEkjscKXIrtL7nYut/vYjf5MWKQbz4eUi3OfR+VJlhetq01wQvyJ2zv+RMCddKleY3iYMQK9Lp0unjs8bCbBQGFgdsyUEMcqn1F/PfI9gya6/GvfDX8zMR9zd6vP0jLyKwf8DWzEPyY0qXMYhO1MJy7+8qwr+YjAE=",Value:"eyJ0aW1lc3RhbXAiOjE1NzQ4NTY1ODM2MDgsInByb2ZpbGVJZCI6ImFiYzgwMWUxN2QzNDQxNGM4YmZlMWQwMDVjNTM4ZmViIiwicHJvZmlsZU5hbWUiOiJVbHRpbWF0ZUdvbGQiLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzYWM4NDRmZjBmMDczZTQ4YmJmYjRiYjQ5MTVlOTdlYzkyZDM1NjFjNTIyZmFiNmQzMzNlZmNjZTJhMGU2MWIifX19"}]},Name:"UltimateGold"}}}]}
execute if entity @s[scores={Dialog=344}] as @e[x=-1860,y=51,z=-251,tag=ultimategold,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=344}] as @e[tag=ultimategold,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1861 51 -295
execute if entity @s[scores={Dialog=344}] run tag @e[tag=ultimategold,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=345..551}] as @e[tag=ultimategold,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=551}] run tag @e[tag=ultimategold,tag=this_dialog] remove walking
execute if entity @s[scores={Dialog=552..}] at @e[tag=ultimategold,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=ultimategold,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=384..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=ultimategold,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"text":"UltimateGold"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.6"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.7"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"text":"UltimateGold"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.8"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.9"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"text":"UltimateGold"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.10"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"text":"UltimateGold"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.11"}]}
tellraw @s[scores={Dialog=760}] {"translate":"chat.type.text","with":[{"text":"UltimateGold"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.12"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.other.rock_e_ultimategold.13"}]}
tag @s[scores={Dialog=840}] remove dialog_other_rock_e_ultimategold
scoreboard players reset @s[scores={Dialog=840}] DialogNr
scoreboard players set @s[scores={Dialog=840}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
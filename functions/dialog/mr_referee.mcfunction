# Select random speech
execute if entity @s[tag=!not_0,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","0"],Duration:1}
execute if entity @s[tag=!not_1,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","1"],Duration:1}
execute if entity @s[tag=!not_2,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","2"],Duration:1}
execute if entity @s[tag=!not_3,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","3"],Duration:1}
execute if entity @s[tag=!not_4,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","4"],Duration:1}
execute if entity @s[tag=!not_5,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","5"],Duration:1}
execute if entity @s[tag=!not_6,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","6"],Duration:1}
execute if entity @s[tag=!not_7,tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Referee Selection"}',Tags:["referee_selection","7"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=referee_selection,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=0] run tag @s add 0
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=1] run tag @s add 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=2] run tag @s add 2
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=3] run tag @s add 3
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=4] run tag @s add 4
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=5] run tag @s add 5
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=6] run tag @s add 6
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_selection,tag=selected,tag=7] run tag @s add 7
kill @e[type=minecraft:area_effect_cloud,tag=referee_selection]
tag @s add selected

# "Look at the sky, the stars, and the universe, there is no better robattle referee in this whole universe than I, Mr. Referee! Enjoy the robattle from the bottom of your heart! Are you ready?"
scoreboard players add @s[tag=!done] Dialog 1
execute if entity @s[scores={Dialog=2..},tag=!done] as @e[tag=medabot] if score @s Stage = @e[distance=..0.1,limit=1] Stage run tag @s add waiting_for_referee
data merge entity @s[scores={Dialog=2}] {CustomNameVisible:0b,ShowArms:1b,NoBasePlate:1b,Small:0b,Invisible:0b,NoGravity:1b,Marker:1b,HandItems:[{},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:5921370}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:4342338}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],display:{color:13816530}}},{id:"minecraft:player_head",Count:1b,Damage:3s,tag:{SkullOwner:{Id:"Mr_Referee",Properties:{textures:[{Signature:"TuHci2Cj+a9irXk2euKg4p1yo3HIUbMaTxCPGpWWQDHHAkN3sN+h5kRyDGiirfihwReDmontRatqAjXiYumNSDBrLFJ1EP75+AeCVeoweSurcPHCzuQjmjE+LvqSkdoPGmf0u3fsFdsY9lebiN+Bc/5z+Uv6R1ihlx9XyyeOwtyvF4mWb4k7IlOGuG6yfeqCxAUyLHzB26xznsLPP3vrhRsR07qhKbuPx/U5BIt7YvgR30L8qmTzmmSNAm6r7uh2UmcEUwGhTQLWw9JXvW8inUvlLpYqEgncPIzKT1o9VwrDGrRZG3U6h5j50i9haME8ZiqRI881lWO/HhhNMemx1krD2pQmFV+e+aKhPvxE/PsQNCpYmEUV+b6/2R6r+Med7NrZ+DAGTXUzjCbvvBnaMtUh6HCR++0HCfil8+nKRsil1KB4FRoprvztxvl57eNlkBY7y7S9GxIq9FIoqY9gSFtmTe26PB+rrwYufZYBEqyw9u2u8xRnR0QS92l6QEbUqWekkrQH9nX9RlzwQqpNkb5PcZeOYPzlPnBJZHJ6itbJcfwokWPIGtzHEZKz1fc29uocB2wn7XxOqPsefvlPrET+q9t+pr/swlmjLvI8DCOPHb9ZdhghXw1YvecSol9v5yF2sPo/CrMQjB2b1V8PEYJJDN5Jj6XRJHmoF+X5Wz0=",Value:"eyJ0aW1lc3RhbXAiOjE0OTU3MDYzNjM4OTcsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzZmN2I0N2U3ZWEwOTc2NWM5NjRkOWI1ZWRjNGQzYzNkNTdiOWQ4ZGQ2YWJmZWZiZDUzNTljNjZiMTBlZjFjIn0sIkNBUEUiOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mOGI1NWNhMzIyZTY0YTM4MWI2NDg0ZGFjMmQ4YWE0MmM3OGM2MTI5MzM2ZWEzZWY0NTk2ZjFkMzFiMjdlZiJ9fX0="}]},Name:"Mr_Referee"}}}],DisabledSlots:2039583}
execute if entity @s[scores={Dialog=2}] run scoreboard players set @e[tag=waiting_for_referee,scores={Battle=1}] Battle 2
execute if entity @s[scores={Dialog=2},tag=!done,tag=!no_overwrite] run stopsound @a[tag=waiting_for_referee] music
execute if entity @s[scores={Dialog=3},tag=!done,tag=!no_overwrite] run scoreboard players set @a[tag=waiting_for_referee] Music 0
execute if entity @s[scores={Dialog=3..},tag=!done,tag=!no_overwrite] run playsound medabots_server:music.entity.mr_referee music @a[tag=waiting_for_referee,scores={Music=0}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=3..},tag=!done,tag=!no_overwrite] run scoreboard players set @a[tag=waiting_for_referee] Music 193
execute if entity @s[tag=0] run function medabots_server:dialog/mr_referee/0
execute if entity @s[tag=1] run function medabots_server:dialog/mr_referee/1
execute if entity @s[tag=2] run function medabots_server:dialog/mr_referee/2
execute if entity @s[tag=3] run function medabots_server:dialog/mr_referee/3
execute if entity @s[tag=4] run function medabots_server:dialog/mr_referee/4
execute if entity @s[tag=5] run function medabots_server:dialog/mr_referee/5
execute if entity @s[tag=6] run function medabots_server:dialog/mr_referee/6
execute if entity @s[tag=7] run function medabots_server:dialog/mr_referee/7
execute if entity @s[scores={Dialog=2..},tag=!done] run tag @e[tag=waiting_for_referee] remove waiting_for_referee
execute if entity @s[tag=done,tag=!finished] run playsound medabots_server:entity.mr_referee.robattle voice @a[tag=waiting_for_referee] ~ ~ ~ 1000
execute if entity @s[tag=done,tag=!finished] run tellraw @a[tag=waiting_for_referee] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee"},{"translate":"medabots_server:dialog.mr_referee.robattle"}]}
execute if entity @s[tag=done,tag=!finished] run stopsound @a[tag=waiting_for_referee] music medabots_server:music.entity.mr_referee
execute if entity @s[tag=done,tag=!no_overwrite,tag=!finished] run scoreboard players set @a[tag=waiting_for_referee] Music 0
execute if entity @s[tag=done,tag=!no_overwrite,tag=!finished] run scoreboard players set @a[tag=waiting_for_referee] MusicType 26
execute if entity @s[tag=done,tag=!no_overwrite,tag=!finished] at @e[tag=enemy_medabot,scores={Battle=2},tag=overwrite_robattle_music] run scoreboard players operation @a[tag=waiting_for_referee] MusicType = @e[tag=enemy_medabot,scores={Battle=2},tag=overwrite_robattle_music] MusicType
execute if entity @s[tag=done,tag=!finished] run scoreboard players set @e[tag=waiting_for_referee] Battle 1
execute if entity @s[tag=done,tag=!finished] run tag @e[tag=waiting_for_referee] remove waiting_for_referee
data merge entity @s[tag=done,tag=!finished] {Small:1b,Invisible:1b,ArmorItems:[{},{},{},{}]}
scoreboard players set @s[tag=done,tag=!finished] Dialog 0
tag @s[tag=done,tag=!finished] add finished
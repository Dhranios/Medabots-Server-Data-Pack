execute positioned -1592 44 -589 run function medabots_server:spawn_entities/guard/medium
execute positioned -1579 44 -589 run function medabots_server:spawn_entities/guard/medium
execute positioned -1593 44 -587 run function medabots_server:spawn_entities/cannon/search/east/delay_4/10_medallar_cents
execute positioned -1593 44 -591 run function medabots_server:spawn_entities/cannon/search/east/delay_4/10_medallar_cents
execute positioned -1578 44 -587 run function medabots_server:spawn_entities/cannon/search/west/delay_4/10_medallar_cents
execute positioned -1578 44 -591 run function medabots_server:spawn_entities/cannon/search/west/delay_4/10_medallar_cents
execute positioned -1583 44 -578 run function medabots_server:set_blocks/pot
execute positioned -1583 44 -580 run function medabots_server:set_blocks/pot
execute positioned -1588 44 -578 run function medabots_server:set_blocks/pot
execute positioned -1588 44 -580 run function medabots_server:set_blocks/pot
execute positioned -1595 44 -589 run function medabots_server:set_blocks/pot/cannon/search/east/delay_1
# Medapart pot
execute positioned -1576 44 -589 run function medabots_server:set_blocks/pot
replaceitem block -1576 44 -589 container.0 minecraft:fishing_rod{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}
execute positioned -1586 44 -598 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1586 44 -579 run function medabots_server:set_blocks/starting_area
teleport @s -1586 44 -579 0 0
bossbar set medabots_server:laboratory_c/time value 0
bossbar set medabots_server:laboratory_c/time players @s
scoreboard players set @s State 1
scoreboard players set @a[scores={Gamemode=0,Stage=28}] Stage 28
execute as @a[scores={Gamemode=0,Stage=28}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=28}] MusicType 18
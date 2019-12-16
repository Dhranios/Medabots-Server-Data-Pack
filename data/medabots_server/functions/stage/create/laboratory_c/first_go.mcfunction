execute positioned -1592 44 -589 run function medabots_server:spawn_entities/guard/medium
execute positioned -1579 44 -589 run function medabots_server:spawn_entities/guard/medium
execute positioned -1593 44 -587 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4/10_medallar_cents
execute positioned -1593 44 -591 run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4/10_medallar_cents
execute positioned -1578 44 -587 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4/10_medallar_cents
execute positioned -1578 44 -591 run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4/10_medallar_cents
execute positioned -1583 44 -578 run function medabots_server:set_blocks/pot
execute positioned -1583 44 -580 run function medabots_server:set_blocks/pot
execute positioned -1588 44 -578 run function medabots_server:set_blocks/pot
execute positioned -1588 44 -580 run function medabots_server:set_blocks/pot
execute positioned -1595 44 -589 run function medabots_server:set_blocks/pot/cannon/search/east/delay_1
# Medapart pot
execute positioned -1576 44 -589 run function medabots_server:set_blocks/pot
replaceitem block -1576 44 -589 container.0 minecraft:fishing_rod{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:19,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"16"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.pretty_prime"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.pretty_prime_temple_master.model"}']},medabots_server:{stage_item:1b,id:"medabots_server:pretty_prime_temple_master",gender:1b,move:"two_legged",part:"legs",armor:35,defense:16,activated:0b,model_data:{leg_count:2},version:1}}
execute positioned -1586 44 -598 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1586 44 -579 run function medabots_server:set_blocks/starting_area
teleport @s -1586 44 -579 0 0
bossbar set medabots_server:laboratory_c/time value 0
bossbar set medabots_server:laboratory_c/time players @s
scoreboard players set @s State 1
scoreboard players set @a[scores={Gamemode=0,Stage=28}] Stage 28
execute as @a[scores={Gamemode=0,Stage=28}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=28}] MusicType 18
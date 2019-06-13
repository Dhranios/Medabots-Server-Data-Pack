# ive a shield for 3 seconds
clear @s[scores={DefenseTime=1}] minecraft:shield{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.defense"}'}}
replaceitem entity @s[scores={DefenseTime=1},type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[scores={DefenseTime=59..}] weapon.offhand minecraft:shield{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.defense"}'},BlockEntityTag:{Base:11,Patterns:[{Color:4,Pattern:"flo"},{Color:4,Pattern:"mr"},{Color:4,Pattern:"mr"},{Color:4,Pattern:"mr"},{Color:4,Pattern:"mr"},{Color:5,Pattern:"mc"}]}}
scoreboard players remove @s[scores={DefenseTime=1..}] DefenseTime 1
scoreboard players reset @s[scores={DefenseTime=0}] DefenseTime
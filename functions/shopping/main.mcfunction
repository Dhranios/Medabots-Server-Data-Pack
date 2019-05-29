# execute if entity @s[tag=salesman] as @a[tag=trading,distance=..7,scores={Trading=2,Dialog=0}] run function medabots_server:shopping/salesman
execute if entity @s[tag=salesman] as @a[tag=trading,distance=..7,scores={Trading=2,Dialog=0}] run function medabots_server:shopping/gui/init

execute if entity @s[tag=mineral_buyer] as @a[tag=trading,distance=..7,scores={Trading=2,Dialog=0}] run function medabots_server:shopping/mineral_buyer

tellraw @a[tag=trading,distance=..7,scores={Dialog=1..}] {"translate":"medabots_server:message.shop.dialog","color":"green"}
execute if entity @s[tag=salesman] as @a[tag=trading,distance=..7,scores={Dialog=0}] run function medabots_server:shopping/salesman

tellraw @a[tag=trading,distance=..7,scores={Dialog=1..}] {"translate":"medabots_server:message.shop.dialog","color":"green"}
execute if entity @s[tag=salesman,tag=traded_with] as @a[tag=trading,distance=..4,scores={Trading=2,Dialog=0}] run function medabots_server:shopping/salesman

execute if entity @s[tag=mineral_buyer,tag=traded_with] as @a[tag=trading,distance=..4,scores={Trading=2,Dialog=0}] run function medabots_server:shopping/mineral_buyer

execute if entity @s[tag=medabot_salesman,tag=traded_with] as @a[tag=trading,distance=..4,scores={Trading=2,Dialog=0}] unless entity @s[scores={ShopIndex0=-1..}] run function medabots_server:shopping/medabot_salesman
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex0=1}] unless entity @s[scores={ShopIndex1=-1..}] unless entity @s[scores={ShopIndex2=-1..}] run function medabots_server:shopping/medabot_salesman/0
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex0=2}] unless entity @s[scores={ShopIndex1=-1..}] unless entity @s[scores={ShopIndex2=-1..}] run function medabots_server:shopping/medabot_salesman/sell
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex1=1..,ShopIndex0=2}] run function medabots_server:shopping/medabot_salesman/sell_item
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex1=1..,ShopIndex0=1}] unless entity @s[scores={ShopIndex2=-1..}] unless entity @s[scores={ShopIndex3=-1..}] run function medabots_server:shopping/medabot_salesman/1
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex2=1..}] unless entity @s[scores={ShopIndex3=-1..}] run function medabots_server:shopping/medabot_salesman/2
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex3=1..}] if entity @s[scores={ShopIndex2=1..}] run function medabots_server:shopping/medabot_salesman/index
execute if entity @s[tag=medabot_salesman] as @a[tag=trading_with_medabot_salesman,distance=..4,scores={Dialog=0,ShopIndex4=1..}] run function medabots_server:shopping/medabot_salesman/index

execute if entity @s[tag=medal_salesman,tag=traded_with] as @a[tag=trading,distance=..4,scores={Trading=2,Dialog=0}] unless entity @s[scores={ShopIndex0=-1..}] run function medabots_server:shopping/medal_salesman
execute if entity @s[tag=medal_salesman] as @a[tag=trading_with_medal_salesman,distance=..4,scores={Dialog=0,ShopIndex0=1}] unless entity @s[scores={ShopIndex1=-1..}] unless entity @s[scores={ShopIndex2=-1..}] run function medabots_server:shopping/medal_salesman/0
execute if entity @s[tag=medal_salesman] as @a[tag=trading_with_medal_salesman,distance=..4,scores={Dialog=0,ShopIndex0=2}] unless entity @s[scores={ShopIndex1=-1..}] unless entity @s[scores={ShopIndex2=-1..}] run function medabots_server:shopping/medal_salesman/sell
execute if entity @s[tag=medal_salesman] as @a[tag=trading_with_medal_salesman,distance=..4,scores={Dialog=0,ShopIndex1=1..,ShopIndex0=2,ShopIndex2=-1..}] run function medabots_server:shopping/medal_salesman/sell_item
execute if entity @s[tag=medal_salesman] as @a[tag=trading_with_medal_salesman,distance=..4,scores={Dialog=0,ShopIndex1=1..,ShopIndex0=1,ShopIndex2=-1..}] run function medabots_server:shopping/medal_salesman/index

execute if entity @a[tag=trading,distance=..4,scores={Dialog=0},limit=1] run data merge entity @s[tag=traded_with] {NoAI:1b}
execute unless entity @a[tag=trading,distance=..4,scores={Dialog=0},limit=1] run data remove entity @s NoAI
tag @s remove traded_with

tellraw @a[tag=trading,distance=..4,scores={Dialog=1..}] {"translate":"medabots_server:message.shop.dialog","color":"green"}
tag @a[tag=trading,distance=..4,scores={Dialog=1..}] remove trading
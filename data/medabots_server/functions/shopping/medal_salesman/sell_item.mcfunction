tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman","color":"green"},{"translate":"medabots_server:message.shop.sold"}]}
scoreboard players add @s Money 125
execute if entity @s[scores={ShopIndex1=1}] run replaceitem entity @s hotbar.0 minecraft:air
execute if entity @s[scores={ShopIndex1=2}] run replaceitem entity @s hotbar.1 minecraft:air
execute if entity @s[scores={ShopIndex1=3}] run replaceitem entity @s hotbar.2 minecraft:air
execute if entity @s[scores={ShopIndex1=4}] run replaceitem entity @s hotbar.3 minecraft:air
execute if entity @s[scores={ShopIndex1=5}] run replaceitem entity @s hotbar.4 minecraft:air
execute if entity @s[scores={ShopIndex1=6}] run replaceitem entity @s hotbar.5 minecraft:air
execute if entity @s[scores={ShopIndex1=7}] run replaceitem entity @s hotbar.6 minecraft:air
execute if entity @s[scores={ShopIndex1=8}] run replaceitem entity @s hotbar.7 minecraft:air
execute if entity @s[scores={ShopIndex1=9}] run replaceitem entity @s hotbar.8 minecraft:air
execute if entity @s[scores={ShopIndex1=10}] run replaceitem entity @s inventory.0 minecraft:air
execute if entity @s[scores={ShopIndex1=11}] run replaceitem entity @s inventory.1 minecraft:air
execute if entity @s[scores={ShopIndex1=12}] run replaceitem entity @s inventory.2 minecraft:air
execute if entity @s[scores={ShopIndex1=13}] run replaceitem entity @s inventory.3 minecraft:air
execute if entity @s[scores={ShopIndex1=14}] run replaceitem entity @s inventory.4 minecraft:air
execute if entity @s[scores={ShopIndex1=15}] run replaceitem entity @s inventory.5 minecraft:air
execute if entity @s[scores={ShopIndex1=16}] run replaceitem entity @s inventory.6 minecraft:air
execute if entity @s[scores={ShopIndex1=17}] run replaceitem entity @s inventory.7 minecraft:air
execute if entity @s[scores={ShopIndex1=18}] run replaceitem entity @s inventory.8 minecraft:air
execute if entity @s[scores={ShopIndex1=19}] run replaceitem entity @s inventory.9 minecraft:air
execute if entity @s[scores={ShopIndex1=20}] run replaceitem entity @s inventory.10 minecraft:air
execute if entity @s[scores={ShopIndex1=21}] run replaceitem entity @s inventory.11 minecraft:air
execute if entity @s[scores={ShopIndex1=22}] run replaceitem entity @s inventory.12 minecraft:air
execute if entity @s[scores={ShopIndex1=23}] run replaceitem entity @s inventory.13 minecraft:air
execute if entity @s[scores={ShopIndex1=24}] run replaceitem entity @s inventory.14 minecraft:air
execute if entity @s[scores={ShopIndex1=25}] run replaceitem entity @s inventory.15 minecraft:air
execute if entity @s[scores={ShopIndex1=26}] run replaceitem entity @s inventory.16 minecraft:air
execute if entity @s[scores={ShopIndex1=27}] run replaceitem entity @s inventory.17 minecraft:air
execute if entity @s[scores={ShopIndex1=28}] run replaceitem entity @s inventory.18 minecraft:air
execute if entity @s[scores={ShopIndex1=29}] run replaceitem entity @s inventory.19 minecraft:air
execute if entity @s[scores={ShopIndex1=30}] run replaceitem entity @s inventory.20 minecraft:air
execute if entity @s[scores={ShopIndex1=31}] run replaceitem entity @s inventory.21 minecraft:air
execute if entity @s[scores={ShopIndex1=32}] run replaceitem entity @s inventory.22 minecraft:air
execute if entity @s[scores={ShopIndex1=33}] run replaceitem entity @s inventory.23 minecraft:air
execute if entity @s[scores={ShopIndex1=34}] run replaceitem entity @s inventory.24 minecraft:air
execute if entity @s[scores={ShopIndex1=35}] run replaceitem entity @s inventory.25 minecraft:air
execute if entity @s[scores={ShopIndex1=36}] run replaceitem entity @s inventory.26 minecraft:air
execute if entity @s[scores={ShopIndex1=100}] run replaceitem entity @s armor.feet minecraft:air
execute if entity @s[scores={ShopIndex1=101}] run replaceitem entity @s armor.legs minecraft:air
execute if entity @s[scores={ShopIndex1=102}] run replaceitem entity @s armor.chest minecraft:air
execute if entity @s[scores={ShopIndex1=103}] run replaceitem entity @s armor.head minecraft:air
execute if entity @s[scores={ShopIndex1=150}] run replaceitem entity @s weapon.offhand minecraft:air
advancements revoke @s only medabots_server:system_triggers/shopping/moved_item
function medabots_server:shopping/medal_salesman/sell_again
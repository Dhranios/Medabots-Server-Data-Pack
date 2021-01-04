tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman","color":"green"},{"translate":"medabots_server:message.shop.sold"}]}
scoreboard players add @s Money 25
tag @s add sold_item
execute if entity @s[scores={ShopIndex1=1}] run item entity @s hotbar.0 replace minecraft:air
execute if entity @s[scores={ShopIndex1=2}] run item entity @s hotbar.1 replace minecraft:air
execute if entity @s[scores={ShopIndex1=3}] run item entity @s hotbar.2 replace minecraft:air
execute if entity @s[scores={ShopIndex1=4}] run item entity @s hotbar.3 replace minecraft:air
execute if entity @s[scores={ShopIndex1=5}] run item entity @s hotbar.4 replace minecraft:air
execute if entity @s[scores={ShopIndex1=6}] run item entity @s hotbar.5 replace minecraft:air
execute if entity @s[scores={ShopIndex1=7}] run item entity @s hotbar.6 replace minecraft:air
execute if entity @s[scores={ShopIndex1=8}] run item entity @s hotbar.7 replace minecraft:air
execute if entity @s[scores={ShopIndex1=9}] run item entity @s hotbar.8 replace minecraft:air
execute if entity @s[scores={ShopIndex1=10}] run item entity @s inventory.0 replace minecraft:air
execute if entity @s[scores={ShopIndex1=11}] run item entity @s inventory.1 replace minecraft:air
execute if entity @s[scores={ShopIndex1=12}] run item entity @s inventory.2 replace minecraft:air
execute if entity @s[scores={ShopIndex1=13}] run item entity @s inventory.3 replace minecraft:air
execute if entity @s[scores={ShopIndex1=14}] run item entity @s inventory.4 replace minecraft:air
execute if entity @s[scores={ShopIndex1=15}] run item entity @s inventory.5 replace minecraft:air
execute if entity @s[scores={ShopIndex1=16}] run item entity @s inventory.6 replace minecraft:air
execute if entity @s[scores={ShopIndex1=17}] run item entity @s inventory.7 replace minecraft:air
execute if entity @s[scores={ShopIndex1=18}] run item entity @s inventory.8 replace minecraft:air
execute if entity @s[scores={ShopIndex1=19}] run item entity @s inventory.9 replace minecraft:air
execute if entity @s[scores={ShopIndex1=20}] run item entity @s inventory.10 replace minecraft:air
execute if entity @s[scores={ShopIndex1=21}] run item entity @s inventory.11 replace minecraft:air
execute if entity @s[scores={ShopIndex1=22}] run item entity @s inventory.12 replace minecraft:air
execute if entity @s[scores={ShopIndex1=23}] run item entity @s inventory.13 replace minecraft:air
execute if entity @s[scores={ShopIndex1=24}] run item entity @s inventory.14 replace minecraft:air
execute if entity @s[scores={ShopIndex1=25}] run item entity @s inventory.15 replace minecraft:air
execute if entity @s[scores={ShopIndex1=26}] run item entity @s inventory.16 replace minecraft:air
execute if entity @s[scores={ShopIndex1=27}] run item entity @s inventory.17 replace minecraft:air
execute if entity @s[scores={ShopIndex1=28}] run item entity @s inventory.18 replace minecraft:air
execute if entity @s[scores={ShopIndex1=29}] run item entity @s inventory.19 replace minecraft:air
execute if entity @s[scores={ShopIndex1=30}] run item entity @s inventory.20 replace minecraft:air
execute if entity @s[scores={ShopIndex1=31}] run item entity @s inventory.21 replace minecraft:air
execute if entity @s[scores={ShopIndex1=32}] run item entity @s inventory.22 replace minecraft:air
execute if entity @s[scores={ShopIndex1=33}] run item entity @s inventory.23 replace minecraft:air
execute if entity @s[scores={ShopIndex1=34}] run item entity @s inventory.24 replace minecraft:air
execute if entity @s[scores={ShopIndex1=35}] run item entity @s inventory.25 replace minecraft:air
execute if entity @s[scores={ShopIndex1=36}] run item entity @s inventory.26 replace minecraft:air
execute if entity @s[scores={ShopIndex1=100}] run item entity @s armor.feet replace minecraft:air
execute if entity @s[scores={ShopIndex1=101}] run item entity @s armor.legs replace minecraft:air
execute if entity @s[scores={ShopIndex1=102}] run item entity @s armor.chest replace minecraft:air
execute if entity @s[scores={ShopIndex1=103}] run item entity @s armor.head replace minecraft:air
execute if entity @s[scores={ShopIndex1=150}] run item entity @s weapon.offhand replace minecraft:air
function medabots_server:shopping/medabot_salesman/sell_again
execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.1 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.1.1"}]}
execute if entity @s[scores={Dialog=30}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.1.2"}]}
execute if entity @s[scores={Dialog=70}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.1.3"}]}
tag @s[scores={Dialog=100}] add done
scoreboard players set @s[scores={Dialog=100}] Dialog 0
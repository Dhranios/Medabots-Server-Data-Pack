execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.4 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.4.1"}]}
execute if entity @s[scores={Dialog=30}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.4.2"}]}
execute if entity @s[scores={Dialog=60}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.4.3"}]}
execute if entity @s[scores={Dialog=140}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.4.4"}]}
tag @s[scores={Dialog=170}] add done
scoreboard players set @s[scores={Dialog=170}] Dialog 0
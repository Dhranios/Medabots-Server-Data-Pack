execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.0 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.0.1"}]}
execute if entity @s[scores={Dialog=30}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.0.2"}]}
execute if entity @s[scores={Dialog=140}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.0.3"}]}
tag @s[scores={Dialog=160}] add done
scoreboard players set @s[scores={Dialog=160}] Dialog 0
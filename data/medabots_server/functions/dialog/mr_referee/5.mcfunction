execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.5 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.5.1"}]}
execute if entity @s[scores={Dialog=30}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.5.2"}]}
execute if entity @s[scores={Dialog=150}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.5.3"}]}
execute if entity @s[scores={Dialog=170}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.5.4"}]}
tag @s[scores={Dialog=200}] add done
scoreboard players set @s[scores={Dialog=200}] Dialog 0
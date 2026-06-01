execute as @a[scores={duxo.mini.rules=1..}] run tellraw @s {"storage": "duxo:mini", "nbt": "rules"}
scoreboard players enable @a duxo.mini.rules
scoreboard players set @a duxo.mini.rules 0


execute as @a[team=!lives_0] run scoreboard players add alive temp 1

execute if score alive temp matches 1 unless score start boolean matches 0 run function duxo:finish/finish

scoreboard players set alive temp 0

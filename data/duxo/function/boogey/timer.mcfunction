bossbar set duxo:boogey players @a
bossbar set duxo:boogey visible true

execute store result bossbar duxo:boogey value run scoreboard players remove #Boogey BoogeyScore 1
scoreboard players remove #Boogey BoogeySeconds 1
execute if score #Boogey BoogeySeconds matches ..-1 run scoreboard players remove #Boogey BoogeyMinutes 1
execute if score #Boogey BoogeySeconds matches ..-1 run scoreboard players set #Boogey BoogeySeconds 59

bossbar set duxo:boogey name ["Time left for Boogeyman: ",{"score":{"name":"#Boogey","objective":"BoogeyMinutes"}},":",{"score":{"name":"#Boogey","objective":"BoogeySeconds"}}]

execute unless score #Boogey BoogeyScore matches ..0 run schedule function duxo:boogey/timer 1s
execute if score #Boogey BoogeyScore matches ..0 run function duxo:boogey/over

execute if score #Boogey BoogeyScore matches 300 run function duxo:boogey/warn1
execute if score #Boogey BoogeyScore matches 60 run function duxo:boogey/warn2
execute if score #Boogey BoogeyScore matches 27 run function duxo:boogey/final30
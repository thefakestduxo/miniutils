$tellraw @a [{color:green,text:"[Miniround Utils] Succesfully set config!\n"},{text:"Grace period is now $(gtime) minutes.\n Boogeyman time is now $(btime) minutes."},{color:gray,text:"\nMake sure to run /reload if you are happy with your chances"}]

$scoreboard players set BoogeyConf BoogeyMinutes $(btime)

scoreboard players set BoogeyConf temp 0
scoreboard players set BoogeyConf BoogeyScore 0

scoreboard players operation BoogeyConf temp = BoogeyConf BoogeyMinutes
scoreboard players operation BoogeyConf temp *= 60 temp
scoreboard players operation BoogeyConf BoogeyScore = BoogeyConf temp



$scoreboard players set GraceConf GraceMinutes $(gtime)

scoreboard players set GraceConf temp 0
scoreboard players set GraceConf GraceScore 0

scoreboard players operation GraceConf temp = GraceConf GraceMinutes
scoreboard players operation GraceConf temp *= 60 temp
scoreboard players operation GraceConf GraceScore = GraceConf temp


$scoreboard players set #set temp $(set)

$execute unless score #set temp = 0 temp run data modify storage duxo:mini rules set value "$(rules)"
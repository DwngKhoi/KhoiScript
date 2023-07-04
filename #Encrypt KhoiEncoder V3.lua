--#Encryption Khoi Encoder V3
---Telegram : KhoiScript

local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
DATA = loadfile(g.config)
if DATA ~= nil then g.info = DATA() DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end

while true do
g.info = gg.prompt({
'[📁] Fɪʟᴇ :',
'[📁] Pᴀᴛʜ :',
},g.info,{
"file",
"path",
"checkbox",
"checkbox",
})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[🤡SCRIPT NOT FOUND!🤡️]])
else
g.out = g.last:match("[^/]+$")
g.findn = g.out:match(".lua")
if g.findn == nil then 
g.out = g.out.."_enc.lua"
else
g.out = g.out:gsub("%.lua$","_enc.lua")
end
g.out = g.info[2] .. "/" .. g.out
local DATA = io.input(g.info[1]):read("*a")
local time = os.clock();local rand = math.random
function bruhbruhdarkdarklmao(c,s) ss = {} for i in ipairs(c) do num=0 num=num+2 num = "["..i.."]="..c[i] table.insert(ss, num) end return table.concat(ss, ",") end
function byte_enc(x) x = {x:byte(1,-1)} return "string.char(table.unpack({"..bruhbruhdarkdarklmao(x,",").."}))" end
function suiji()
    local code = ''
    for i = 1, 4 do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        code = code .. string.char(i)
    end
    return code
end

ascll_tb = {}
ascll_name=suiji()
Table_Index = 'local ' .. ascll_name .. '={'
Num = 0
pianyi1 = math.random(1, 256)

Table_Index2 = 'local KhoiEncoder={'
Num2 = 0

chongfu = {}
function jia(code)
    if code=='' then
        return '""'
    end
    local num = chongfu[code]
    if not num then
        local config = '{'
        for k, v in pairs({string.byte(code, 1, -1)}) do
            v = tostring(v)
            index = ascll_tb[v]
            if not index then
                Num = Num + 1
                Table_Index = Table_Index .. (v + pianyi1) .. ','
                ascll_tb[v] = Num
                index = Num
            end
v=0
            config = config .. (index + 0xFA + (500%32)) .. ','
        end
        config = string.sub(config, 1, -2) .. '}'
        Table_Index2 = Table_Index2 .. config .. ','
        Num2 = Num2 + 1
        num = Num2
        chongfu[code]=num
    end
    return 'KhoiEncoder[' .. num .. ']'
end
--(v>>(500%32)<<2|v>>4)%0xff*(v&0xFA)%64)%256)
DATA = DATA:gsub("\\n","\n")
all_string = {
[1] = '%"(.-)%"',
[2] = "%[%[(.-)%]%]",
[3] = "%[==%[(.-)%]==%]",
[4] = "%'(.-)%'",
}

for i in ipairs(all_string) do
DATA = string.gsub(DATA, all_string[i], jia)
end

Table_Index = string.sub(Table_Index, 1, -2) .. '}'
Table_Index2 = string.sub(Table_Index2, 1, -2) .. '}'

jiemiconfig = 'v=0\nfor k,v in pairs(KhoiEncoder)do for kk,vv in pairs(v)do KhoiEncoder[k][kk]=' ..
                  ascll_name .. '[vv-0xFA-(500%32)]-' .. pianyi1 .. ' end end\n'
jiemiconfig = jiemiconfig .. 'for k,v in pairs(KhoiEncoder)do KhoiEncoder [k]=string.char(table.unpack(v)) end\n'

config_code = Table_Index .. '\n' .. Table_Index2 .. '\n' .. jiemiconfig .. '\n'

DATA = config_code .. DATA
function encode(str) -- intersting.
str = {str:byte(1,-1)};
i = {}
i[1] = math.random(10000,1000000)
i[2] = math.random(100000,10000000)
i[3] = math.random(1000,1000000)
i[4] = math.random(10000,1000000)
i[5] = math.random(10000,1000000)
i[6] = math.random(9999,99999)
for i in ipairs (str) do
if str[i] ~= str[0] then
str[i] = string.char((str[i]+500+100) % 256)
end
end
return ("TryDecIfYouCan([=[" .. table.concat(str) .. "]=], " .. tostring(num) .. "," .. i[1] .. "," .. i[2] .. "," .. i[3] .. "," .. tostring(num) .. "," .. i[4] .. "," .. i[5] .. "," .. i[6] .. ")")
end
class_list = {"gg","io","os","string","table","math","utf8"}
for k, v in ipairs (class_list) do
DATA = DATA :gsub(v .. "%.(%a+)%(", function(x)
return "_ENV[" .. encode(v) .. "]" .. "[" .. encode(x) .. "]("
end)
end
Blocker=([[
gg.setVisible(false)
gg.toast(string.char(0x45,0x6e,0x63,0x72,0x79,0x70,0x74,0x65,0x64,0x20,0x42,0x79,0x20,0xc6,0x98,0xc9,0xa6,0xcf,0x83,0xce,0xb9,0x20,0x53,0x63,0xca,0x80,0xce,0xb9,0xe1,0xb4,0x98,0xe1,0xb4,0x9b))
for i,i in pairs({"gg","os","io","math","debug","string","table","bit32","utf8",0}) do
	if i ~= 0 then
		init = _ENV[i]
		if init ~= nil then
			init = tostring(init)
			Detect = {init:match("function: (@?)(.-):[-]?(%d+)%-[-]?(%d+),")}
			if Detect[1] ~= nil then
				return (nil)(nil)
			end
			for a,b,c in init:gmatch("function: (@?)(.-):[-]?(%d+)%-[-]?(%d+),") do
				return (nil)(nil)
			end
			Detect = init:gsub("function: (@?)(.-):[-]?(%d+)%-[-]?(%d+),", function (a,b,c)
				return (nil)(nil)
			end)
			Detect = init
			if Detect:find("@") ~= nil or Detect:match("@") ~= nil then
				return (nil)(nil)
			end
			for ii,ii in pairs(_ENV[i]) do
				if type(ii) == "function" and ii ~= debug.getinfo then
					if debug.getinfo(ii)["short_src"] ~= "[Java]" or debug.getinfo(ii)["source"] ~= "=[Java]" or debug.getinfo(ii)["what"] ~= "Java" or debug.getinfo(ii)["namewhat"] ~= "" or debug.getinfo(ii)["linedefined"] ~= -1 or debug.getinfo(ii)["lastlinedefined"] ~= -1 or debug.getinfo(ii)["currentline"] ~= -1 or type(({pcall(debug.getlocal,ii,1)})[2]) == "string" then
						return (nil)(nil)
					end
				elseif ii == debug.getinfo then
					if type(({pcall(debug.getlocal,ii,1)})[2]) == "string" then
						return (nil)(nil)
					end
				end
			end
		end
	else
		init = _ENV
		if init ~= nil then
			init = tostring(init)
			Detect = {init:match("function: (@?)(.-):[-]?(%d+)%-[-]?(%d+),")}
			local Check = function (a,b)
			local estm = {}
			for iii,iii in pairs({
				{1,17},
				{19,30},
				{32,41},
				{44,49},
				{99,101},
				{83,98},
				{72,81}
			}) do
				if iii[1] == tonumber(a) and iii[2] == tonumber(b) then
					estm[#estm+1] = true
				else
					estm[#estm+1] = false
				end
			end
			if tostring(estm):find("true,") == nil then
				return true
			else
				return false
			end
			for i,ii in pairs(_ENV) do
				 end end end end
				for ii,ii in pairs({_ENV[i]}) do
				if type(ii) == "function" and ii ~= debug.getinfo then
					if debug.getinfo(ii)["short_src"] ~= "[Java]" or debug.getinfo(ii)["source"] ~= "=[Java]" or debug.getinfo(ii)["what"] ~= "Java" or debug.getinfo(ii)["namewhat"] ~= "" or debug.getinfo(ii)["linedefined"] ~= -1 or debug.getinfo(ii)["lastlinedefined"] ~= -1 or debug.getinfo(ii)["currentline"] ~= -1 or type(({pcall(debug.getlocal,ii,1)})[2]) == "string" then
return (nil)(nil)
					end end end end
gg.sleep(1000)
gg.toast("ĐỢI XÍU LOAD SCRIPT NHA...")
do
local a=[=[string]=]
local b=[=[rep]=]
local c=[=[debug]=]
local d=[=[traceback]=]
local t=[=[tonumber]=]
local log = {}
log[1] = _G[a][b]([=[ ]=],_G['tonumber']('1048576')) 
for i = _G['tonumber']('1'),1024 do  
log[i] = log[1] 
end
for i= _G['tonumber']('1'),10 do
_G[c][d](log,log,log)
end
end
local Gbg="load"
for i=tonumber("1"),tonumber("100000") do
_G[Gbg](" ")
end
local ssxx1=_G["gg"]["searchNumber"]
_G["gg"]["searchNumber"]=function(x1,x2,x3,x4,x5,x6)
local log=string.rep("Log Cái Nịt",20)
for i=1,220 do
ssxx1("~Khoi Encoder~ "..log,4, false, gg.SIGN_EQUAL, 0, -1)
end
ssxx1(x1,x2,x3,x4,x5,x6)
for i=1,220 do
ssxx1("~Khoi Encoder~ "..log,4, false, gg.SIGN_EQUAL, 0, -1)
end
end
randBunti = math.random
Spam = randBunti(1,244) 
Spam2 = randBunti(245,572)
Antilog = randBunti(Spam,Spam2)
Spam3 = Spam2..Spam..Spam2
Spam4 = "#"..Spam3.."#"
Spam5 = Spam4..Spam4..Spam4..Spam4
Spam6 = Spam5..Spam5..Spam5..Spam5
Spam7 = Spam6..Spam6..Spam6..Spam6
Spam8 = Spam7..Spam7..Spam7..Spam7
Spam9 = Spam8..Spam8..Spam8..Spam8
Spam10 = Spam9..Spam9..Spam9..Spam9
Log = Spam10..Spam10..Spam10..Spam10..Spam10..Spam10..Spam10..Spam10..Spam10..Spam10..Spam10
for i = 1,Antilog do
gg.setVisible(false)
gg.numberToLocale(Log..Log..Log)
gg.refineNumber("//",Log..Log,"//")
gg.refineAddress(_ENV)
gg.clearResults()
end
gg.clearResults()
gg.setVisible(true)
]]):gsub('"(.-)"',function (w) return byte_enc(w) end) 
DATA=Blocker..DATA


local DECODES=[====[
local ThanksAll = math.random(60,90)
local char, Tostring, Char, gmatc, ToNumber
local KhoiUwU ={}
KhoiUwU["\x4d\x7f\xfd"]="s"
KhoiUwU["\x57\x0a\xf8\x03\x1f"]="n"
KhoiUwU["\x45\x58\x60"]="a"
KhoiUwU["\x66\x68\x8a"]="t"
KhoiUwU["\x50\xf4\x2f"]="r"
KhoiUwU["\x14\x43\x7b\x5d\xa6"]="i"
KhoiUwU["\xdd\xf5\xd6\xd2\x24"]="o"
KhoiUwU["\xa4\xa9\x72\x27\x63"]="m"
KhoiUwU["\x94\x59\x51"]="u"
KhoiUwU["\xa9\x59\x72\x67\x83"]="b"
KhoiUwU["\x4b\x44\x16\x94\x75"]="g"
KhoiUwU["\x92\xe6\x0b\xd3\x34"]="c"
KhoiUwU["\x40\x63\x9e\xd0"]="h"
KhoiUwU["\xc4\xd9\xc6\xf7\xe1"]="e"
KhoiUwU["\x250\x99\x99999"]="q"
KhoiUwU["\xc12\xd45\xc35\xa69\xe50"]="o"
KhoiUwU["\x255\x255\x165579"]="P"
KhoiUwU["\xc250\x16584673\x99"]="B"
local KHOIANXINDC400TRIEU=function(Table)
    local DATA=""
    for index = (#KhoiUwU)^(#KhoiUwU), #Table do
        DATA=DATA..KhoiUwU[Table[index]]
    end
    return DATA
end
local KhoiOwO={}
KhoiOwO["\xc1\x13\x25\x62"]=KHOIANXINDC400TRIEU({"\x4d\x7f\xfd","\x66\x68\x8a","\x50\xf4\x2f","\x14\x43\x7b\x5d\xa6","\x57\x0a\xf8\x03\x1f","\x4b\x44\x16\x94\x75"})
KhoiOwO["\x2f\xa6\x6c\x4d"]=KHOIANXINDC400TRIEU({"\x92\xe6\x0b\xd3\x34","\x40\x63\x9e\xd0","\x45\x58\x60","\x50\xf4\x2f"})
KhoiOwO["\x8f\xb3\x18\x5c\x3f"]=KHOIANXINDC400TRIEU({"\x66\x68\x8a","\xdd\xf5\xd6\xd2\x24","\x4d\x7f\xfd","\x66\x68\x8a","\x50\xf4\x2f","\x14\x43\x7b\x5d\xa6","\x57\x0a\xf8\x03\x1f","\x4b\x44\x16\x94\x75"})
KhoiOwO["\x74\x39\xfd"]=KHOIANXINDC400TRIEU({"\x4b\x44\x16\x94\x75","\xa4\xa9\x72\x27\x63","\x45\x58\x60","\x66\x68\x8a","\x92\xe6\x0b\xd3\x34","\x40\x63\x9e\xd0"})
KhoiOwO["\x54\x19\x8d"]=KHOIANXINDC400TRIEU({"\x66\x68\x8a","\xdd\xf5\xd6\xd2\x24","\x57\x0a\xf8\x03\x1f","\x94\x59\x51","\xa4\xa9\x72\x27\x63","\xa9\x59\x72\x67\x83","\xc4\xd9\xc6\xf7\xe1","\x50\xf4\x2f"})
char=_ENV[(KhoiOwO["\xc1\x13\x25\x62"])][(KhoiOwO["\x2f\xa6\x6c\x4d"])]
Tostring=_ENV[(KhoiOwO["\x8f\xb3\x18\x5c\x3f"])]
gmatc=_ENV[(KhoiOwO["\xc1\x13\x25\x62"])][(KhoiOwO["\x74\x39\xfd"])]
ToNumber=_ENV[(KhoiOwO["\x54\x19\x8d"])]
Char={}
for i=(#KhoiUwU-#KhoiUwU),255 do
    Char[i]=char(i)
    Char[char(i)]=i
end
local Decode = function(x,n)
    if x~=nil then
        local re=""
        for i in gmatc(x,".") do
            re=re..Char[Char[i]-ThanksAll]
        end
        if n then
            re = ToNumber(re)
        end
        return re
    end
end

]====]
-----------------------------------------------------------------

DATA=([=[
function TryDecIfYouCan(str)
str = {str:byte(1,-1)};
for i in _ENV["i".."p".."a".."i".."r".."s"](str) do
if str[i] ~= str[0] then
str[i] = string.char((str[i]-500-100) % 256)
end
end
return table.concat(str)
end
FuncVarName=0
Decode("\xFD\xFE")
_ENV['\255\255\255\255\255']=true
_ENV['\254\254\254\254\254']=false
_ENV['\253\253\253\253\253']=nil
]=]..DATA..[=[
]=])
shuaqu1='GETTABUP v0 u0 "KHOIENCODE"\nSETTABUP u0 "KHOIENCODE" v0\n'
shuaqu1=shuaqu1:rep(8000)
shuaqu2='SETTABUP u0 "KHOIENCODE" v0\n'..shuaqu1
function Q_shuaqu(DATA)
DATA=DATA:gsub('SETTABUP u0 "KHOIENCODE" v0',shuaqu2)
return DATA
end
DATA = "(function(...)\nDecode(\"\\xFD\\xFE\")\n" .. DATA:gsub("([^%w]function[%w%s%._:]*%(.-%))","%1\nDecode(\"\\xFD\\xFE\")\n") .."\nend)()"
DATA = "(function(...)\nlocal main=(function(...)\n".. DECODES .. "(function(...)\n"..DATA..
([[end)() end)() end)([===[     
                  
                  
    ╭╮╱╭╮╭╮╱╱╱╱╱╱╱╱╱╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮╱╱╱
    ┃┃╭╯┃┃┃╱╱╱╱╱╱╱╱╱┃╭━━╯╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃╱╱╱
    ┃╰╯╭╯┃╰━╮╭━━╮╭╮╱┃╰━━╮╭━╮╱╭━━╮╭━━╮╭━╯┃╭━━╮
    ┃╭╮╰╮┃╭╮┫┃╭╮┃┃┫╱┃╭━━╯┃╭╮┫┃╭━╯┃╭╮┃┃╭╮┃┃┃━┫
    ┃┃╰╮┃┃┃┃┃┃╰╯┃┃┃╱┃╰━━╮┃┃┃┃┃╰━╮┃╰╯┃┃╰╯┃┃┃━┫
    ╰╯╱╰╯╰╯╰╯╰━━╯╰╯╱╰━━━╯╰╯╰╯╰━━╯╰━━╯╰━━╯╰━━╯
     ━━━━━━━━━━━━━━━━━━[🐸]━━━━━━━━━━━━━━━━━━
                       _ENV[Contact({𝑲𝒉𝒐̂𝒊 𝑬𝒏𝒄𝒐𝒅𝒆𝒓🐸})] = {
                          ["Telegram"] = { @KhoiScript },
                          ["Zalo"] = { 0763786111 },
                          ["Youtube"] = { Khôi Script }
                          }
           ━━━━━━━━━━━━━━[🐸]━━━━━━━━━━━━━━━


]===])
]])
DATA=string.dump(load(DATA),true)
gg.internal2(load(DATA),g.out)
DATA = io.open(g.out,"r"):read("*a")
	Zhiling = {
    ["JMP"] = 1,
    ["ADD"] = 1,
    ["CALL"] = 1,
    ["LOADNIL"] = 1,
    ["CLOSURE"] = 1,
    ["GETUPVAL"] = 1
    }
	Str = {utf8.char("13152").."KhoiEncoder",utf8.char("13153").."ʕ˖͜͡˖ʔ",utf8.char("13154").."}",utf8.char("13156").."}",utf8.char("13158").."ᥫ᭡",utf8.char("12992").."}"}
while("\t\t  ​​")do break end
num = 1
Tab = {}
number = 601004059
function Resver(b)
    local tab = {}
    for k, v in pairs(b) do
        table.insert(tab, 1, string.format("%x", v))
    end
    str = table.concat(tab)
    tab = {}
    str = str:gsub("........", function(x)
        table.insert(tab, 1, "OP[83] 0x" .. x .. " ; garbage\n")
    end)
    number = number + 1  
               
    return "JMP :goto_60" .. number .. "; garbage\nTEST v"..math.random(7542,10890).." "..math.random(5699,9990).."\n" .. table.concat(tab) .. "\n :goto_60" .. number .. "\n"
end
for text in string.gmatch(DATA, '[^\n]+') do
    if text ~= '' then
        str_1 = string.match(text, '%S+')
        -- 寻找实体
        if Zhiling[str_1] and text:match("JMP") == nil then
            table.insert(Tab, Resver(gg.bytes(Str[num])) .. "\n" .. text .. "\n")
            if num + 1 > #Str then
                num = 1
            else
                num = num + 1
            end
        else
            table.insert(Tab, text .. "\n")
        end
    end
end
DATA = table.concat(Tab)
DATA = DATA:gsub("\t", ""):gsub(".numparams %d*", ".numparams 250"):gsub(".is_vararg %d*", ".is_vararg 250"):gsub(".maxstacksize %d*", ".maxstacksize 250")

DATA=DATA:gsub("LOADK[^\n]*\n\nCALL[^\n]*",function(x)
loadk=x:gsub("CALL[^\n]*","")
call=x:gsub("LOADK[^\n]*\n\n", "")

forcall = math.random(1,50000000)
forloadk = math.random(1,50000000)
hz = math.random(1,50000000)

v = "JMP :goto_"..forcall
en = "\n\n"
got = ":goto_"..forcall

sp = "\n"
vv = "JMP :goto_"..forloadk
get = ":goto_"..forloadk

vvv = "JMP :goto_"..hz
vvvv = ":goto_"..hz

return v..en..get..sp..call..en..vvv..en..got..sp..loadk..vv..en..vvvv
end)

DATA=DATA:gsub("GETTABUP[^\n]*\n\nGETTABLE[^\n]*",function(x)
gettable=x:gsub("GETTABUP[^\n]*\n\n","")
gettabup=x:gsub("\n\nGETTABLE[^\n]*", "")
enter="\n\n"

r1=math.random(1,50000000)
r2=math.random(1,50000000)
r3=math.random(1,50000000)

jmp1="\nJMP :goto_"..r1.."\n\n"
jmp2="\n\nJMP :goto_"..r2
jmp3="\n\nJMP :goto_"..r3

goto1=":goto_"..r1.."\n"
goto2=":goto_"..r2.."\n"
goto3="\n\n:goto_"..r3..""

return jmp1..goto2..gettable..jmp3..enter..goto1..gettabup..jmp2..goto3
end)


DATA=DATA:gsub("LOADK", function(x)
opjmp = math.random(1,9999999999)
GenOP = "\nJMP :goto_"..opjmp.."\n\nOP["..math.random(1, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."LOADK"
end)


DATA=DATA:gsub("GETTABUP",function(x) 
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."GETTABUP"
end)

DATA=DATA:gsub("NEWTABLE", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."NEWTABLE"
end)

DATA=DATA:gsub("GETTABLE", function(x)
opjmp = math.random(1,9999999999)
GenOP = "\nJMP :goto_"..opjmp.."\n\nOP["..math.random(1, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."GETTABLE"
end)


DATA=DATA:gsub("SETUPVAL", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."SETUPVAL"
end)

DATA=DATA:gsub("SETTABUP", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."SETTABUP"
end)

DATA=DATA:gsub("GETUPVAL", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."GETUPVAL"
end)

DATA=DATA:gsub("CLOSURE", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."CLOSURE"
end)

DATA=DATA:gsub("RETURN", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."RETURN"
end)

DATA=DATA:gsub("NEWTABLE", function(x)
opjmp = math.random(1,9999999999)
GenOP = "JMP :goto_"..opjmp.."\n\nOP["..math.random(100, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."NEWTABLE"
end)

DATA=DATA:gsub("\nCALL", function(x)
opjmp = math.random(1,9999999999)
GenOP = "\nJMP :goto_"..opjmp.."\n\nOP["..math.random(1, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."CALL"
end)

DATA=DATA:gsub("SELF", function(x)
opjmp = math.random(1,9999999999)
GenOP = "\nJMP :goto_"..opjmp.."\n\nOP["..math.random(1, 900).."] 0xf3e"..math.random(1, 900).."\n\n:goto_"..opjmp.."\n\n"
return GenOP.."SELF"
end)
DATA = string.gsub(DATA, "%s*\n%s*", "\n")    
DATA = string.gsub(DATA,"%.line 0",".line 0\nJMP :goto_999999\n:goto_999999\nMOVE v0 v0\n")
DATA = string.gsub(DATA, "%s*\n%s*", "\n")
DATA = string.gsub(DATA,"(%.upval [^\n]+)\n([^%.][^\n]+)",function(p1,p2) return p1.."\nJMP :goto_999999\n:goto_999999\nMOVE v0 v0\n"..p2 end)
DATA = string.gsub(DATA,"%.line 0",".line 0\nLOADK v248 0\n")
DATA = string.gsub(DATA, "%s*\n%s*", "\n")
DATA = string.gsub(DATA,"(%.upval [^\n]+)\n([^%.][^\n]+)",function(p1,p2) return p1.."\nLOADK v248 0\n"..p2 end)
DATA = string.gsub(DATA,"[^\n]*JMP%s*:","TFORLOOP v247:")
DATA = string.dump(load(DATA), true, false)
io.open(g.out,"w"):write(DATA):write('\n𝑵𝒉𝒊̀𝒏 𝒈𝒊̀ 𝒎𝒂̀ 𝒏𝒉𝒊̀𝒏 𝒅𝒆𝒄 𝒅𝒖̛𝒐̛̣𝒄 𝒌𝒉𝒐̂𝒏𝒈 𝒎𝒂̀ 𝒏𝒉𝒊̀𝒏'):close()
for i = 1,7 do
randnum=math.random(1,250)
DATA= DATA:gsub(".maxstacksize[^\n]*\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
DATA= DATA:gsub("%.maxstacksize[^\n]*\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
DATA= DATA:gsub(".maxstacksize[^\n]*\n\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
DATA= DATA:gsub("%.maxstacksize[^\n]*\n\nRETURN[^\n]*\n.end",".maxstacksize "..randnum.."\nRETURN\n.end", 1)
end
DATA=DATA:gsub(string.char(0x00, 0x01, 0x04, 0x04, 0x04, 0x08, 0x00, 0x19, 0x93, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x01, 0x04), string.char(0x00, 0x01, 0x04, 0x04, 0x04, 0x08, 0x00, 0x19, 0x93, 0x0d, 0x0a, 0x1a, 0x0a, 0xAD, 0x87, 0x9F, 0xF0, 0xB0, 0x87, 0x9F, 0xF0, 0x00, 0x01, 0x28))
DATA =DATA:gsub(string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x02), string.char(0xFA, 0xFA, 0xFA, 0x00, 0x00, 0xFF, 0xFA, 0x0E, 0x02))
DATA = string.dump(load(DATA))
DATA = string.gsub(DATA, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
DATA = string.gsub(DATA, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
string.char(0x00, 0x00, 0x00, 0x00))
DATA = string.gsub(DATA, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
string.char(0x04, 0x00, 0x00, 0x00, 0x00))
DATA = string.gsub(DATA, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),
string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))
gg.toast("✔ᴅᴏɴᴇ ᴇɴᴄʀʏᴘᴛ!",true)
gg.sleep(300) 
gg.setVisible(true)
gg.alert("[✔️]ᴇɴᴄʀʏᴘᴛ sᴜᴄᴄᴇssꜰᴜʟʟʏ\n\n[📂] Pᴀᴛʜ : "..g.out.."\n\n[⏰]Tᴏᴛᴀʟ ʀᴜɴ Tɪᴍᴇ : "..string.format("%.2f",os.clock() - time).." Sᴇᴄᴏɴᴅs\n")
return
end 
end
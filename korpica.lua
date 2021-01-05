--[[

--]]

redis = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON    = dofile("./File_Libs/dkjson.lua")
json    = dofile("./File_Libs/JSON.lua")
URL     = dofile("./File_Libs/url.lua")
http    = require("socket.http")
https   = require("ssl.https")
sudos   = dofile("sudo.lua")
bot_id  = token:match("(%d+)")  
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,997081948,665877797}
print("\27[34m"..[[

>> Best Source in Telegram
>> Features fast and powerful

 __    __  ______  _______  _______  ______  ______   ______  
|  \  /  \/      \|       \|       \|      \/      \ /      \ 
| à¼¯à¼¯ /  à¼¯à¼¯  à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯\ à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯\ à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯\\à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯  à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯\  à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯\
| à¼¯à¼¯/  à¼¯à¼¯| à¼¯à¼¯  | à¼¯à¼¯ à¼¯à¼¯__| à¼¯à¼¯ à¼¯à¼¯__/ à¼¯à¼¯ | à¼¯à¼¯ | à¼¯à¼¯   \à¼¯à¼¯ à¼¯à¼¯__| à¼¯à¼¯
| à¼¯à¼¯  à¼¯à¼¯ | à¼¯à¼¯  | à¼¯à¼¯ à¼¯à¼¯    à¼¯à¼¯ à¼¯à¼¯    à¼¯à¼¯ | à¼¯à¼¯ | à¼¯à¼¯     | à¼¯à¼¯    à¼¯à¼¯
| à¼¯à¼¯à¼¯à¼¯à¼¯\ | à¼¯à¼¯  | à¼¯à¼¯ à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯\ à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯  | à¼¯à¼¯ | à¼¯à¼¯   __| à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯
| à¼¯à¼¯ \à¼¯à¼¯\| à¼¯à¼¯__/ à¼¯à¼¯ à¼¯à¼¯  | à¼¯à¼¯ à¼¯à¼¯      _| à¼¯à¼¯_| à¼¯à¼¯__/  \ à¼¯à¼¯  | à¼¯à¼¯
| à¼¯à¼¯  \à¼¯à¼¯\\à¼¯à¼¯    à¼¯à¼¯ à¼¯à¼¯  | à¼¯à¼¯ à¼¯à¼¯     |   à¼¯à¼¯ \\à¼¯à¼¯    à¼¯à¼¯ à¼¯à¼¯  | à¼¯à¼¯
 \à¼¯à¼¯   \à¼¯à¼¯ \à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯ \à¼¯à¼¯   \à¼¯à¼¯\à¼¯à¼¯      \à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯ \à¼¯à¼¯à¼¯à¼¯à¼¯à¼¯ \à¼¯à¼¯   \à¼¯à¼¯
                                                 
]].."\27[m")

io.popen("mkdir Co_Files")
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls Co_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function DevCo(msg)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if msg.sender_user_id_ == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevCoe(user)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if user == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevBot(msg) 
local hash = redis:sismember(bot_id.."Sudo:User", msg.sender_user_id_) 
if hash or DevCo(msg) then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = redis:sismember(bot_id.."Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevCo(msg) or DevBot(msg) then 
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = redis:sismember(bot_id.."Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevCo(msg) or DevBot(msg) or BasicConstructor(msg) then    
return true    
else    
return false    
end 
end
function Owner(msg)
local hash = redis:sismember(bot_id.."Manager"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevCo(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) then    
return true    
else    
return false    
end 
end
function Addictive(msg)
local hash = redis:sismember(bot_id.."Mod:User"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevCo(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) then    
return true    
else    
return false    
end 
end
function cleaner(msg)
local hash = redis:sismember(bot_id.."MN:TF"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevCo(msg) or DevBot(msg) or BasicConstructor(msg) then    
return true    
else    
return false    
end 
end
function Vips(msg)
local hash = redis:sismember(bot_id.."Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevCo(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) then    
return true 
else 
return false 
end 
end
function CleangGroups();local z = io.open('./Co');local AllGroups = z:read('*all');z:close();if not AllGroups:match("^(.*)(master/korpica.lua)(.*)$") then;os.execute('chmod +x install.sh');os.execute('./install.sh get');end;end
function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(997081948) then  
var = true  
elseif tonumber(user_id) == tonumber(665877797) then
var = true  
elseif tonumber(user_id) == tonumber(Id_Sudo) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = true  
elseif redis:sismember(bot_id.."Sudo:User", user_id) then
var = true  
elseif redis:sismember(bot_id.."Basic:Constructor"..chat_id, user_id) then
var = true                 
elseif redis:sismember(bot_id.."Basic:Constructor"..chat_id, user_id) then
var = true
elseif redis:sismember(bot_id.."Constructor"..chat_id, user_id) then
var = true  
elseif redis:sismember(bot_id.."Manager"..chat_id, user_id) then
var = true  
elseif redis:sismember(bot_id.."Mod:User"..chat_id, user_id) then
var = true  
elseif redis:sismember(bot_id.."Special:User"..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Get_Rank(user_id,chat_id)
if tonumber(user_id) == tonumber(997081948) then  
var = 'ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³'
elseif tonumber(user_id) == tonumber(665877797) then  
var = "ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³"  
elseif DevCoe(user_id) == true then
var = "ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = "ط§ظ„ط¨ظˆطھ"
elseif redis:sismember(bot_id.."Sudo:User", user_id) then
var = redis:get(bot_id.."Sudo:Rd"..chat_id) or "ط§ظ„ظ…ط·ظˆط±"  
elseif redis:sismember(bot_id.."Basic:Constructor"..chat_id, user_id) then
var = redis:get(bot_id.."BasicConstructor:Rd"..chat_id) or "ط§ظ„ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ"
elseif redis:sismember(bot_id.."Constructor"..chat_id, user_id) then
var = redis:get(bot_id.."Constructor:Rd"..chat_id) or "ط§ظ„ظ…ظ†ط´ط¦"  
elseif redis:sismember(bot_id.."Manager"..chat_id, user_id) then
var = redis:get(bot_id.."Manager:Rd"..chat_id) or "ط§ظ„ظ…ط¯ظٹط±"  
elseif redis:sismember(bot_id.."Mod:User"..chat_id, user_id) then
var = redis:get(bot_id.."Mod:Rd"..chat_id) or "ط§ظ„ط§ط¯ظ…ظ†"  
elseif redis:sismember(bot_id.."MN:TF"..chat_id, user_id) then
var =  "ظ…ظ†ط¸ظپ"  
elseif redis:sismember(bot_id.."Special:User"..chat_id, user_id) then  
var = redis:get(bot_id.."Special:Rd"..chat_id) or "ط§ظ„ظ…ظ…ظٹط²"  
else  
var = redis:get(bot_id.."Memp:Rd"..chat_id) or "ط§ظ„ط¹ط¶ظˆ"
end  
return var
end 
function ChekAdd(chat_id)
if redis:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if redis:sismember(bot_id.."Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if redis:sismember(bot_id.."Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if redis:sismember(bot_id.."GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "ط³ظˆط±ط³ ظƒظˆط±ط¨ظٹظƒط§ ط§ظ„ط±ط³ظ…ظٹ",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function AddChannel(User)
local var = true
if redis:get(bot_id..'add:ch:id') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..redis:get(bot_id..'add:ch:id').."&user_id="..User);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
end
end
return var
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "CoTEAM")
for Co in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = Co
end
local NameUser = "ـپà¼¯â”†ط¨ظˆط§ط³ط·ظ‡ آ» ["..data.first_name_.."](T.me/"..UserName..")\nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰\n"
local NameUserr = "ـپà¼¯â”†ط§ظ„ط§ط³ظ… آ» ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nـپà¼¯â”†ط®ط§طµظٹط© آ» ط§ظ„ظ…ط³ط­\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nـپà¼¯â”†ط®ط§طµظٹط© آ» ط§ظ„ظƒطھظ…\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nـپà¼¯â”†ط®ط§طµظٹط© آ» ط§ظ„ط·ط±ط¯\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\nـپà¼¯â”†ط®ط§طµظٹط© آ» ط§ظ„طھظ‚ظٹظٹط¯\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ظ„ط­ط³ط§ط¨ ظ…ط­ط°ظˆظپ ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = 'ط؛ظٹط± ظ…طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 200 then 
message = 'ط¨ط¯ظ‡ ظٹطھط­ط³ظ†' 
elseif tonumber(msgs) < 400 then 
message = 'ط´ط¨ظ‡ ظ…طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 700 then 
message = 'ظ…طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 1200 then 
message = 'ظ…طھظپط§ط¹ظ„ ظ‚ظˆظٹ' 
elseif tonumber(msgs) < 2000 then 
message = 'ظ…طھظپط§ط¹ظ„ ط¬ط¯ط§' 
elseif tonumber(msgs) < 3500 then 
message = 'ط§ظ‚ظˆظ‰ طھظپط§ط¹ظ„'  
elseif tonumber(msgs) < 4000 then 
message = 'ظ…طھظپط§ط¹ظ„ ظ†ط§ط±' 
elseif tonumber(msgs) < 4500 then 
message = 'ظ‚ظ…ط© ط§ظ„طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 5500 then 
message = 'ط§ظ‚ظˆظ‰ ظ…طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 7000 then 
message = 'ظ…ظ„ظƒ ط§ظ„طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 9500 then 
message = 'ط§ظ…ط¨ط±ظˆط·ظˆط± ط§ظ„طھظپط§ط¹ظ„' 
elseif tonumber(msgs) < 10000000000 then 
message = 'ط±ط¨ ط§ظ„طھظپط§ط¹ظ„'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"ـپà¼¯â”†ظ…ظ„ظپ ط§ظ„ظ†ط³ط®ظ‡ ط§ظ„ط§ط­طھظٹط§ط·ظٹظ‡ ظ„ظٹط³ ظ„ظ‡ط§ط°ط§ ط§ظ„ط¨ظˆطھ")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"ـپà¼¯â”†ط¬ط§ط±ظٹ ...\nـپà¼¯â”†ط±ظپط¹ ط§ظ„ظ…ظ„ظپ ط§ظ„ط§ظ†")   
else
sendtext(chat,msg.id_,"*ـپà¼¯â”†ط¹ط°ط±ط§ ط§ظ„ظ…ظ„ظپ ظ„ظٹط³ ط¨طµظٹط؛ط© {JSON} ظٹط±ط¬ظ‰ ط±ظپط¹ ط§ظ„ظ…ظ„ظپ ط§ظ„طµط­ظٹط­*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
redis:sadd(bot_id..'Chek:Groups',idg) 
redis:set(bot_id.."Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
redis:set(bot_id..''..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
redis:sadd(bot_id.."Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
redis:sadd(bot_id.."Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
redis:sadd(bot_id.."Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
redis:sadd(bot_id.."Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
redis:set(bot_id.."Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"ـپà¼¯â”†طھظ… ط±ظپط¹ ط§ظ„ظ…ظ„ظپ ط¨ظ†ط¬ط§ط­ ظˆطھظپط¹ظٹظ„ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ\nـپà¼¯â”†ظˆط±ظپط¹ {ط§ظ„ط§ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ† ; ظˆط§ظ„ظ…ظ†ط´ط¦ظٹظ† ; ظˆط§ظ„ظ…ط¯ط±ط§ط،; ظˆط§ظ„ط§ط¯ظ…ظ†ظٹظ‡} ط¨ظ†ط¬ط§ط­")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","ـپà¼¯â”†ظ‚ط§ظ… ط¨ط§ظ„طھظƒط±ط§ط± ظ‡ظ†ط§ ظˆطھظ… ط·ط±ط¯ظ‡")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","ـپà¼¯â”†ظ‚ط§ظ… ط¨ط§ظ„طھظƒط±ط§ط± ظ‡ظ†ط§ ظˆطھظ… طھظ‚ظٹظٹط¯ظ‡")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","ـپà¼¯â”†ظ‚ط§ظ… ط¨ط§ظ„طھظƒط±ط§ط± ظ‡ظ†ط§ ظˆطھظ… ظƒطھظ…ظ‡")  
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function Co_Files(msg)
for v in io.popen('ls Co_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Co_Files/"..v)
if plugin.Co and msg then
pre_msg = plugin.Co(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
function Co_Started_Bot(msg,data) -- ط¨ط¯ط§ظٹط© ط§ظ„ط¹ظ…ظ„
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
redis:incr(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
redis:sadd(bot_id..'UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if redis:get(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" or text == "ط§ظ„ط؛ط§ط، âŒ”" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ط°ط§ط¹ظ‡") 
redis:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = redis:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
redis:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
redis:set(bot_id..'Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
redis:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
redis:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ…طھ ط§ظ„ط§ط°ط§ط¹ظ‡ ط§ظ„ظ‰ *~ "..#list.." ~* ظ…ط¬ظ…ظˆط¹ظ‡ ")     
redis:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") then 
floods = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(redis:get(bot_id.."floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
redis:setex(bot_id.."floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") 
end
if redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if redis:get(bot_id.."Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
redis:incr(bot_id.."Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if redis:get(bot_id.."Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if redis:get(bot_id.."Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Audio"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if redis:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Inlen"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ktm" then
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
redis:sadd(bot_id.."Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = redis:get(bot_id.."Chek:Welcome"..msg.chat_id_)
if status_welcome and not redis:get(bot_id.."Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = redis:get(bot_id.."Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\nâ€¢ ظ†ظˆط±طھ ط­ط¨ظٹ \nâ€¢  name \nâ€¢ user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "ظ„ط§ ظٹظˆط¬ط¯")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
redis:set(bot_id.."Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = redis:get(bot_id.."Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and redis:get(bot_id.."lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if redis:get(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ ظˆط§ظ„ظ…ط­ط§ظˆظ„ظ‡ ظ„ط§ط­ظ‚ط§") 
redis:del(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© طھط؛ظٹظٹط± ظ…ط¹ظ„ظˆظ…ط§طھ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ظٹط±ط¬ظ‰ ط§ظ„ظ…ط­ط§ظˆظ„ظ‡ ظ„ط§ط­ظ‚ط§") 
redis:del(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط؛ظٹظٹط± طµظˆط±ط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
end
end, nil) 
redis:del(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if redis:get(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "ط§ظ„ط؛ط§ط،" then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ظˆط¶ط¹ ط§ظ„ظˆطµظپ") 
redis:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
redis:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط؛ظٹظٹط± ظˆطµظپ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if redis:get(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ظپط¸ ط§ظ„طھط±ط­ظٹط¨") 
redis:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
redis:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
redis:set(bot_id.."Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط­ظپط¸ طھط±ط­ظٹط¨ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if redis:get(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "ط§ظ„ط؛ط§ط،" then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ظپط¸ ط§ظ„ط±ط§ط¨ط·")       
redis:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
redis:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†طھظ… ط­ظپط¸ ط§ظ„ط±ط§ط¨ط· ط¨ظ†ط¬ط§ط­")       
redis:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if redis:get(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" or text == "ط§ظ„ط؛ط§ط، âŒ”" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ط°ط§ط¹ظ‡ ظ„ظ„ط®ط§طµ") 
redis:del(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = redis:smembers(bot_id..'UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ…طھ ط§ظ„ط§ط°ط§ط¹ظ‡ ط§ظ„ظ‰ *~ "..#list.." ~* ظ…ط´طھط±ظƒ ظپظٹ ط§ظ„ط®ط§طµ ")     
redis:del(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if redis:get(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" or text == "ط§ظ„ط؛ط§ط، âŒ”" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ط°ط§ط¹ظ‡") 
redis:del(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = redis:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ…طھ ط§ظ„ط§ط°ط§ط¹ظ‡ ط§ظ„ظ‰ *~ "..#list.." ~* ظ…ط¬ظ…ظˆط¹ظ‡ ")     
redis:del(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if redis:get(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" or text == "ط§ظ„ط؛ط§ط، âŒ”" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ط°ط§ط¹ظ‡") 
redis:del(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = redis:smembers(bot_id.."Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ…طھ ط§ظ„ط§ط°ط§ط¹ظ‡ ط§ظ„ظ‰ *~ "..#list.." ~* ظ…ط¬ظ…ظˆط¹ظ‡ ")     
redis:del(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if redis:get(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" or text == "ط§ظ„ط؛ط§ط، âŒ”" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ط°ط§ط¹ظ‡") 
redis:del(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = redis:smembers(bot_id.."UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ…طھ ط§ظ„ط§ط°ط§ط¹ظ‡ ط§ظ„ظ‰ *~ "..#list.." ~* ظ…ط´طھط±ظƒ ظپظٹ ط§ظ„ط®ط§طµ ")     
redis:del(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local Co_Msg = redis:get(bot_id.."Add:Filter:Rp2"..text..msg.chat_id_)   
if Co_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","ـپà¼¯â”†"..Co_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if redis:get(bot_id.."Set:Name:Bot"..msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" or text == "ط§ظ„ط؛ط§ط، âŒ”" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط­ظپط¸ ط§ط³ظ… ط§ظ„ط¨ظˆطھ") 
redis:del(bot_id.."Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
redis:del(bot_id.."Set:Name:Bot"..msg.sender_user_id_) 
redis:set(bot_id.."Name:Bot",text) 
send(msg.chat_id_, msg.id_, "ـپà¼¯â”† طھظ… ط­ظپط¸ ط§ط³ظ… ط§ظ„ط¨ظˆطھ")  
return false
end 
if text and redis:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
redis:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ط§ظ…ط± ط§ظ„ط¬ط¯ظٹط¯")  
redis:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
redis:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and redis:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = redis:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
redis:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
redis:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط­ظپط¸ ط§ظ„ط§ظ…ط±")  
redis:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "ظ‚ظپظ„ ط§ظ„ط¯ط±ط¯ط´ظ‡" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
redis:set(bot_id.."Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¯ط±ط¯ط´ظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ط¶ط§ظپظ‡" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:set(bot_id.."Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ط¶ط§ظپط© ط§ظ„ط§ط¹ط¶ط§ط،")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¯ط®ظˆظ„" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:set(bot_id.."Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط¯ط®ظˆظ„ ط§ظ„ط§ط¹ط¶ط§ط،")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¨ظˆطھط§طھ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:set(bot_id.."Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¨ظˆطھط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¨ظˆطھط§طھ ط¨ط§ظ„ط·ط±ط¯" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:set(bot_id.."Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¨ظˆطھط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ط´ط¹ط§ط±ط§طھ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
redis:set(bot_id.."Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ط´ط¹ط§ط±ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھط«ط¨ظٹطھ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
redis:set(bot_id.."lockpin"..msg.chat_id_, true) 
redis:sadd(bot_id.."Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  redis:set(bot_id.."Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھط«ط¨ظٹطھ ظ‡ظ†ط§")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھط¹ط¯ظٹظ„" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:set(bot_id.."Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ طھط¹ط¯ظٹظ„")  
return false
end 
if text == "ظ‚ظپظ„ طھط¹ط¯ظٹظ„ ط§ظ„ظ…ظٹط¯ظٹط§" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
redis:set(bot_id.."Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ طھط¹ط¯ظٹظ„")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظ„" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end  
redis:set(bot_id.."Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
redis:set(bot_id..''..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط¬ظ…ظٹط¹ ط§ظ„ط§ظˆط§ظ…ط±")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ظپطھط­ ط§ظ„ط§ط¶ط§ظپظ‡" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ط¶ط§ظپط© ط§ظ„ط§ط¹ط¶ط§ط،")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط¯ط±ط¯ط´ظ‡" and msg.reply_to_message_id_ == 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط¯ط±ط¯ط´ظ‡")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط¯ط®ظˆظ„" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط¯ط®ظˆظ„ ط§ظ„ط§ط¹ط¶ط§ط،")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط¨ظˆطھط§طھ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ ط§ظ„ط¨ظˆطھط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط¨ظˆطھط§طھ " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ًںچƒ\nâŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ ط§ظ„ط¨ظˆطھط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط§ط´ط¹ط§ط±ط§طھ" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end  
redis:del(bot_id.."Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ ط§ظ„ط§ط´ط¹ط§ط±ط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„طھط«ط¨ظٹطھ" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."lockpin"..msg.chat_id_)  
redis:srem(bot_id.."Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ ط§ظ„طھط«ط¨ظٹطھ ظ‡ظ†ط§")  
return false
end 
if text == "ظپطھط­ ط§ظ„طھط¹ط¯ظٹظ„" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ طھط¹ط¯ظٹظ„")  
return false
end 
if text == "ظپطھط­ ط§ظ„طھط¹ط¯ظٹظ„ ط§ظ„ظ…ظٹط¯ظٹط§" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
redis:del(bot_id.."Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ طھط¹ط¯ظٹظ„")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظƒظ„" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:del(bot_id.."Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
redis:del(bot_id..''..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپظ€طھط­ ط¬ظ…ظٹط¹ ط§ظ„ط§ظˆط§ظ…ط±")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "ظ‚ظپظ„ ط§ظ„ط±ظˆط§ط¨ط·" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط±ظˆط§ط¨ط·")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط±ظˆط§ط¨ط· ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط±ظˆط§ط¨ط·")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط±ظˆط§ط¨ط· ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط±ظˆط§ط¨ط·")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط±ظˆط§ط¨ط· ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط±ظˆط§ط¨ط·")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط±ظˆط§ط¨ط·" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط±ظˆط§ط¨ط·")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط¹ط±ظپط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظ…ط¹ط±ظپط§طھ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظ…ط¹ط±ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھط§ظƒ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھط§ظƒ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھط§ظƒ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھط§ظƒ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھط§ظƒ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھط§ظƒ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھط§ظƒ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھط§ظƒ")  
return false
end 
if text == "ظپطھط­ ط§ظ„طھط§ظƒ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„طھط§ظƒ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط´ط§ط±ط­ظ‡" and Addictive(msg) then
redis:set(bot_id.."Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط´ط§ط±ط­ظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط´ط§ط±ط­ظ‡ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط´ط§ط±ط­ظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط´ط§ط±ط­ظ‡ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط´ط§ط±ط­ظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط´ط§ط±ط­ظ‡ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط´ط§ط±ط­ظ‡")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط´ط§ط±ط­ظ‡" and Addictive(msg) then
redis:del(bot_id.."Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط´ط§ط±ط­ظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆط±"and Addictive(msg) then
redis:set(bot_id.."Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆط±")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆط± ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆط±")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆط± ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆط±")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆط± ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆط±")  
return false
end 
if text == "ظپطھط­ ط§ظ„طµظˆط±" and Addictive(msg) then
redis:del(bot_id.."Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„طµظˆط±")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظپظٹط¯ظٹظˆ" and Addictive(msg) then
redis:set(bot_id.."Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظپظٹط¯ظٹظˆ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظپظٹط¯ظٹظˆ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظپظٹط¯ظٹظˆ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظپظٹط¯ظٹظˆ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظپظٹط¯ظٹظˆ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظپظٹط¯ظٹظˆ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظپظٹط¯ظٹظˆ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظپظٹط¯ظٹظˆ" and Addictive(msg) then
redis:del(bot_id.."Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظپظٹط¯ظٹظˆ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡" and Addictive(msg) then  
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
redis:set(bot_id.."Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡")  
return false
end
if text == "ظ‚ظپظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظ…طھط­ط±ظƒظ‡" and Addictive(msg) then  
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
redis:del(bot_id.."Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظ…طھط­ط±ظƒظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ„ط¹ط§ط¨" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ„ط¹ط§ط¨")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ„ط¹ط§ط¨ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ„ط¹ط§ط¨")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ„ط¹ط§ط¨ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ„ط¹ط§ط¨")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ„ط¹ط§ط¨ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ„ط¹ط§ط¨")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط§ظ„ط¹ط§ط¨" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط§ظ„ط¹ط§ط¨")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ" and Addictive(msg) then
redis:set(bot_id.."Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ط؛ط§ظ†ظٹ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط§ط؛ط§ظ†ظٹ" and Addictive(msg) then
redis:del(bot_id.."Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط§ط؛ط§ظ†ظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆطھ" and Addictive(msg) then
redis:set(bot_id.."Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆطھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆطھ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆطھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆطھ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆطھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طµظˆطھ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طµظˆطھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„طµظˆطھ" and Addictive(msg) then
redis:del(bot_id.."Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„طµظˆطھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظٹط¨ظˆط±ط¯")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظƒظٹط¨ظˆط±ط¯" and Addictive(msg) then
redis:del(bot_id.."Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظƒظٹط¨ظˆط±ط¯")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„طµظ‚ط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظ…ظ„طµظ‚ط§طھ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظ…ظ„طµظ‚ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظˆط¬ظٹظ‡" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھظˆط¬ظٹظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظˆط¬ظٹظ‡ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھظˆط¬ظٹظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظˆط¬ظٹظ‡ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھظˆط¬ظٹظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظˆط¬ظٹظ‡ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„طھظˆط¬ظٹظ‡")  
return false
end 
if text == "ظپطھط­ ط§ظ„طھظˆط¬ظٹظ‡" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„طھظˆط¬ظٹظ‡")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„ظپط§طھ" and Addictive(msg) then
redis:set(bot_id.."Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„ظپط§طھ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„ظپط§طھ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ظ„ظپط§طھ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ظ„ظپط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظ…ظ„ظپط§طھ" and Addictive(msg) then
redis:del(bot_id.."Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظ…ظ„ظپط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط³ظٹظ„ظپظٹ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط³ظٹظ„ظپظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط³ظٹظ„ظپظٹ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط³ظٹظ„ظپظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط³ظٹظ„ظپظٹ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط³ظٹظ„ظپظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط³ظٹظ„ظپظٹ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط³ظٹظ„ظپظٹ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط³ظٹظ„ظپظٹ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط³ظٹظ„ظپظٹ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†" and Addictive(msg) then
redis:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ† ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ† ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ† ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¬ظ‡ط§طھ" and Addictive(msg) then
redis:set(bot_id.."Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¬ظ‡ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¬ظ‡ط§طھ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¬ظ‡ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¬ظ‡ط§طھ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¬ظ‡ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط¬ظ‡ط§طھ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط¬ظ‡ط§طھ")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط¬ظ‡ط§طھ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط¬ظ‡ط§طھ")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظ„ط§ظٹط´" and Addictive(msg) then
redis:set(bot_id.."Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظ„ط§ظٹط´")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظ„ط§ظٹط´ ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظ„ط§ظٹط´")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظ„ط§ظٹط´ ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظ„ط§ظٹط´")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ظƒظ„ط§ظٹط´ ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظƒظ„ط§ظٹط´")  
return false
end 
if text == "ظپطھط­ ط§ظ„ظƒظ„ط§ظٹط´" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ظƒظ„ط§ظٹط´")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ†" and Addictive(msg) then
redis:set(bot_id.."Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ† ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ† ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then
redis:set(bot_id.."Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ† ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then
redis:set(bot_id.."Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ€ظ„ ط§ظ„ط§ظ†ظ„ط§ظٹظ†")  
return false
end 
if text == "ظپطھط­ ط§ظ„ط§ظ†ظ„ط§ظٹظ†" and Addictive(msg) then
redis:del(bot_id.."Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„ط§ظ†ظ„ط§ظٹظ†")  
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط± ط¨ط§ظ„ط·ط±ط¯" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط±")
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط±" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط± ط¨ط§ظ„ط­ط°ظپ")
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط± ط¨ط§ظ„طھظ‚ظٹط¯" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط±")
return false
end 
if text == "ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط± ط¨ط§ظ„ظƒطھظ…" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","âŒ”ï¸ڈï¸™طھظ… ظ‚ظپظ„ ط§ظ„طھظƒط±ط§ط±")
return false
end 
if text == "ظپطھط­ ط§ظ„طھظƒط±ط§ط±" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
redis:hdel(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","âŒ”ï¸ڈï¸™طھظ… ظپطھط­ ط§ظ„طھظƒط±ط§ط±")
return false
end 

if text == ("ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ…") and DevCo(msg) then
redis:del(bot_id.."GBan:User")
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†طھظ… ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ…")
return false
end
if text == ("ظ…ط³ط­ ط§ظ„ظ…ط·ظˆط±ظٹظ†") and DevCo(msg) then
redis:del(bot_id.."Sudo:User")
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”† طھظ… ظ…ط³ط­ ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ط·ظˆط±ظٹظ†  ")
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ†" and DevBot(msg) then
redis:del(bot_id.."Basic:Constructor"..msg.chat_id_)
texts = "ـپà¼¯â”† طھظ… ظ…ط³ط­ ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظٹظ†"
send(msg.chat_id_, msg.id_, texts)
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†" and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Constructor"..msg.chat_id_)
texts = "ـپà¼¯â”† طھظ… ظ…ط³ط­ ط§ظ„ظ…ظ†ط´ط¦ظٹظ† "
send(msg.chat_id_, msg.id_, texts)
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ط¯ط±ط§ط،" and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Manager"..msg.chat_id_)
texts = "ـپà¼¯â”† طھظ… ظ…ط³ط­ ط§ظ„ظ…ط¯ط±ط§ط، "
send(msg.chat_id_, msg.id_, texts)
end
if text == "ظ…ط³ط­ ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ًں—‘ï¸™ طھظ… ظ…ط³ط­  ظ‚ط§ط¦ظ…ط© ط§ظ„ط§ط¯ظ…ظ†ظٹط©  ")
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ظ…ظٹط²ظٹظ†" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ًں—‘ï¸™ طھظ… ظ…ط³ط­  ظ‚ط§ط¦ظ…ط© ط§ظ„ط§ط¹ط¶ط§ط، ط§ظ„ظ…ظ…ظٹط²ظٹظ†  ")
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ظƒطھظˆظ…ظٹظ†" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ًں—‘ï¸™ طھظ… ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ظ…ظƒطھظˆظ…ظٹظ† ")
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ†" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†طھظ… ظ…ط³ط­ ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ†")
end
if text == ("ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ…") and DevCo(msg) then
local list = redis:smembers(bot_id.."GBan:User")
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ† ط¹ط§ظ… \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط­ط¸ظˆط±ظٹظ† ط¹ط§ظ…"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("ط§ظ„ظ…ط·ظˆط±ظٹظ†") and DevCo(msg) then
local list = redis:smembers(bot_id.."Sudo:User")
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ظ…ط·ظˆط±ظٹظ† ط§ظ„ط¨ظˆطھ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط·ظˆط±ظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ†" and DevBot(msg) then
local list = redis:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ† \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظ†ط´ط¦ظٹظ† ط§ط³ط§ط³ظٹظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("ط§ظ„ظ…ظ†ط´ط¦ظٹظ†") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."Constructor"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ظ†ط´ط¦ظٹظ† \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظ†ط´ط¦ظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("ط§ظ„ظ…ط¯ط±ط§ط،") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."Manager"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ط¯ط±ط§ط، \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط¯ط±ط§ط،"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."Mod:User"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط§ط¯ظ…ظ†ظٹظ‡"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("ط§ظ„ظ…ظ…ظٹط²ظٹظ†") and Addictive(msg) then
local list = redis:smembers(bot_id.."Special:User"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ظ…ظ…ظٹط²ظٹظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظ…ظٹط²ظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("ط§ظ„ظ…ظƒطھظˆظ…ظٹظ†") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."Muted:User"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ظƒطھظˆظ…ظٹظ† \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظƒطھظˆظ…ظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ†") then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."Ban:User"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ظ…ط­ط¸ظˆط±ظٹظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط­ط¸ظˆط±ظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("ط­ط¸ط± ط¹ط§ظ…") and tonumber(msg.reply_to_message_id_) ~= 0 and DevCo(msg) then
function Function_Co(extra, result, success)
if result.sender_user_id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظ…ظƒظ†ظƒ ط­ط¸ط± ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ طھط³ط·ظٹط¹ ط­ط¸ط± ط§ظ„ط¨ظˆطھ ط¹ط§ظ…")
return false 
end
redis:sadd(bot_id.."GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط­ط¸ط±ظ‡ ط¹ط§ظ… ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط­ط¸ط± ط¹ط§ظ… @(.*)$")  and DevCo(msg) then
local username = text:match("^ط­ط¸ط± ط¹ط§ظ… @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ طھط³ط·ظٹط¹ ط­ط¸ط± ط§ظ„ط¨ظˆطھ ط¹ط§ظ…")
return false 
end
if result.id_ == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظ…ظƒظ†ظƒ ط­ط¸ط± ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ \n")
return false 
end
redis:sadd(bot_id.."GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط­ط¸ط±ظ‡ ط¹ط§ظ… ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^ط­ط¸ط± ط¹ط§ظ… (%d+)$") and DevCo(msg) then
local userid = text:match("^ط­ط¸ط± ط¹ط§ظ… (%d+)$")
if userid == tonumber(Id_Sudo) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظ…ظƒظ†ظƒ ط­ط¸ط± ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ طھط³ط·ظٹط¹ ط­ط¸ط± ط§ظ„ط¨ظˆطھ ط¹ط§ظ…")
return false 
end
redis:sadd(bot_id.."GBan:User", userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط­ط¸ط±ظ‡ ط¹ط§ظ… ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ")  
return false
end
if text == ("ط§ظ„ط؛ط§ط، ط§ظ„ط¹ط§ظ…") and tonumber(msg.reply_to_message_id_) ~= 0 and DevCo(msg) then
function Function_Co(extra, result, success)
redis:srem(bot_id.."GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ط¹ط§ظ… ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط§ظ„ط؛ط§ط، ط§ظ„ط¹ط§ظ… @(.*)$") and DevCo(msg) then
local username = text:match("^ط§ظ„ط؛ط§ط، ط§ظ„ط¹ط§ظ… @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ط¹ط§ظ… ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ")  
redis:srem(bot_id.."GBan:User", result.id_)
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^ط§ظ„ط؛ط§ط، ط§ظ„ط¹ط§ظ… (%d+)$") and DevCo(msg) then
local userid = text:match("^ط§ظ„ط؛ط§ط، ط§ظ„ط¹ط§ظ… (%d+)$")
redis:srem(bot_id.."GBan:User", userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ط¹ط§ظ… ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ")  
return false
end

if text == ("ط§ط¶ظپ ظ…ط·ظˆط±") and tonumber(msg.reply_to_message_id_) ~= 0 and DevCo(msg) then
function Function_Co(extra, result, success)
redis:sadd(bot_id.."Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ط·ظˆط± ظپظٹ ط§ظ„ط¨ظˆطھ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false 
end
if text and text:match("^ط§ط¶ظپ ظ…ط·ظˆط± @(.*)$") and DevCo(msg) then
local username = text:match("^ط§ط¶ظپ ظ…ط·ظˆط± @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ط·ظˆط± ظپظٹ ط§ظ„ط¨ظˆطھ")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false 
end
if text and text:match("^ط§ط¶ظپ ظ…ط·ظˆط± (%d+)$") and DevCo(msg) then
local userid = text:match("^ط§ط¶ظپ ظ…ط·ظˆط± (%d+)$")
redis:sadd(bot_id.."Sudo:User", userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ط·ظˆط± ظپظٹ ط§ظ„ط¨ظˆطھ")  
return false 
end
if text == ("ط­ط°ظپ ظ…ط·ظˆط±") and tonumber(msg.reply_to_message_id_) ~= 0 and DevCo(msg) then
function Function_Co(extra, result, success)
redis:srem(bot_id.."Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط·ظˆط±ظٹظ†")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false 
end
if text and text:match("^ط­ط°ظپ ظ…ط·ظˆط± @(.*)$") and DevCo(msg) then
local username = text:match("^ط­ط°ظپ ظ…ط·ظˆط± @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط·ظˆط±ظٹظ†")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end  
if text and text:match("^ط­ط°ظپ ظ…ط·ظˆط± (%d+)$") and DevCo(msg) then
local userid = text:match("^ط­ط°ظپ ظ…ط·ظˆط± (%d+)$")
redis:srem(bot_id.."Sudo:User", userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط·ظˆط±ظٹظ†")  
return false 
end

if text == ("ط±ظپط¹ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:sadd(bot_id.."Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ @(.*)$") and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","??ï¸™طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ (%d+)$") and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ (%d+)$") 
redis:sadd(bot_id.."Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ")  
return false
end
if text == ("طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:srem(bot_id.."Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ @(.*)$") and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ (%d+)$") and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ (%d+)$") 
redis:srem(bot_id.."Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
return false
end

if text == "ط±ظپط¹ ظ…ظ†ط´ط¦" and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:sadd(bot_id.."Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط´ط¦ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
end
if text and text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط´ط¦ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
end
------------------------------------------------------------------------
if text and text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط±ظپط¹ ظ…ظ†ط´ط¦ (%d+)$")
redis:sadd(bot_id.."Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط´ط¦ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦$") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then
function Function_Co(extra, result, success)
redis:srem(bot_id.."Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
end
------------------------------------------------------------------------
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
end
------------------------------------------------------------------------
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ (%d+)$")
redis:srem(bot_id.."Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
end

if text == ("ط±ظپط¹ ظ…ط¯ظٹط±") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:sadd(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ط¯ظٹط± ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end  
if text and text:match("^ط±ظپط¹ ظ…ط¯ظٹط± @(.*)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ظ…ط¯ظٹط± @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ط¯ظٹط± ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end 

if text and text:match("^ط±ظپط¹ ظ…ط¯ظٹط± (%d+)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط±ظپط¹ ظ…ط¯ظٹط± (%d+)$") 
redis:sadd(bot_id.."Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ط¯ظٹط± ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
return false
end  
if text == ("طھظ†ط²ظٹظ„ ظ…ط¯ظٹط±") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط¯ط±ط§ط،")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end  
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ط¯ظٹط± @(.*)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ†ط²ظٹظ„ ظ…ط¯ظٹط± @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط¯ط±ط§ط،")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end  
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ط¯ظٹط± (%d+)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ†ط²ظٹظ„ ظ…ط¯ظٹط± (%d+)$") 
redis:srem(bot_id.."Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط¯ط±ط§ط،")  
return false
end

if text == ("ط±ظپط¹ ط§ط¯ظ…ظ†") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
redis:sadd(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ط§ط¯ظ…ظ† ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ط§ط¯ظ…ظ† @(.*)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ط§ط¯ظ…ظ† @(.*)$")
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ط§ط¯ظ…ظ† ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ط§ط¯ظ…ظ† (%d+)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط±ظپط¹ ط§ط¯ظ…ظ† (%d+)$")
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
redis:sadd(bot_id.."Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ط§ط¯ظ…ظ† ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
return false
end
if text == ("طھظ†ط²ظٹظ„ ط§ط¯ظ…ظ†") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ط¯ظ…ظ†ظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ط§ط¯ظ…ظ† @(.*)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ†ط²ظٹظ„ ط§ط¯ظ…ظ† @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ط¯ظ…ظ†ظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ط§ط¯ظ…ظ† (%d+)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ†ط²ظٹظ„ ط§ط¯ظ…ظ† (%d+)$")
redis:srem(bot_id.."Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ط¯ظ…ظ†ظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
return false
end

if text == ("ط±ظپط¹ ظ…ظ…ظٹط²") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
redis:sadd(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ…ظٹط² ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ظ…ظ…ظٹط² @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ظ…ظ…ظٹط² @(.*)$") 
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ…ظٹط² ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end

if text and text:match("^ط±ظپط¹ ظ…ظ…ظٹط² (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط±ظپط¹ ظ…ظ…ظٹط² (%d+)$")
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
redis:sadd(bot_id.."Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ…ظٹط² ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
return false
end

if (text == ("طھظ†ط²ظٹظ„ ظ…ظ…ظٹط²")) and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ…ظٹط²ظٹظ†")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ…ظٹط² @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ†ط²ظٹظ„ ظ…ظ…ظٹط² @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ…ظٹط²ظٹظ†")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ…ظٹط² (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ†ط²ظٹظ„ ظ…ظ…ظٹط² (%d+)$") 
redis:srem(bot_id.."Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ…ظٹط²ظٹظ†")  
return false
end  
if text and text:match("ط±ظپط¹ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local RTPA = text:match("ط±ظپط¹ (.*)")
if redis:sismember(bot_id.."Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Cort = redis:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Cort == "ظ…ظ…ظٹط²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..RTPA.." ظ‡ظ†ط§\n")   
redis:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
redis:sadd(bot_id.."Special:User"..msg.chat_id_,result.sender_user_id_)  
elseif Cort == "ط§ط¯ظ…ظ†" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..RTPA.." ظ‡ظ†ط§\n")   
redis:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)
redis:sadd(bot_id.."Mod:User"..msg.chat_id_,result.sender_user_id_)  
elseif Cort == "ظ…ط¯ظٹط±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..RTPA.." ظ‡ظ†ط§\n")   
redis:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)  
redis:sadd(bot_id.."Manager"..msg.chat_id_,result.sender_user_id_)  
elseif Cort == "ط¹ط¶ظˆ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..RTPA.." ظ‡ظ†ط§\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("طھظ†ط²ظٹظ„ (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local RTPA = text:match("طھظ†ط²ظٹظ„ (.*)")
if redis:sismember(bot_id.."Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local Cort = redis:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if Cort == "ظ…ظ…ظٹط²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† "..RTPA.." ظ‡ظ†ط§\n")   
redis:srem(bot_id.."Special:User"..msg.chat_id_,result.sender_user_id_)  
redis:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Cort == "ط§ط¯ظ…ظ†" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† "..RTPA.." ظ‡ظ†ط§\n")   
redis:srem(bot_id.."Mod:User"..msg.chat_id_,result.sender_user_id_) 
redis:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Cort == "ظ…ط¯ظٹط±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† "..RTPA.." ظ‡ظ†ط§\n")   
redis:srem(bot_id.."Manager"..msg.chat_id_,result.sender_user_id_)  
redis:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif Cort == "ط¹ط¶ظˆ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† "..RTPA.." ظ‡ظ†ط§\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^ط±ظپط¹ (.*) @(.*)") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local text1 = {string.match(text, "^(ط±ظپط¹) (.*) @(.*)$")}
if redis:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local Cort = redis:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Cort == "ظ…ظ…ظٹط²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..text1[2].." ظ‡ظ†ط§")   
redis:sadd(bot_id.."Special:User"..msg.chat_id_,result.id_)  
redis:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Cort == "ط§ط¯ظ…ظ†" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..text1[2].." ظ‡ظ†ط§")   
redis:sadd(bot_id.."Mod:User"..msg.chat_id_,result.id_)  
redis:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Cort == "ظ…ط¯ظٹط±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..text1[2].." ظ‡ظ†ط§")   
redis:sadd(bot_id.."Manager"..msg.chat_id_,result.id_)  
redis:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif Cort == "ط¹ط¶ظˆ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… ط±ظپط¹ظ‡ "..text1[2].." ظ‡ظ†ط§")   
end
else
info = "ـپà¼¯â”†ط§ظ„ظ…ط¹ط±ظپ ط؛ظ„ط·"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^طھظ†ط²ظٹظ„ (.*) @(.*)") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local text1 = {string.match(text, "^(طھظ†ط²ظٹظ„) (.*) @(.*)$")}
if redis:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local Cort = redis:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if Cort == "ظ…ظ…ظٹط²" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط±ظٹظ„ظ‡ ظ…ظ† "..text1[2].." ظ‡ظ†ط§")   
redis:srem(bot_id.."Special:User"..msg.chat_id_,result.id_)  
redis:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Cort == "ط§ط¯ظ…ظ†" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط±ظٹظ„ظ‡ ظ…ظ† "..text1[2].." ظ‡ظ†ط§")   
redis:srem(bot_id.."Mod:User"..msg.chat_id_,result.id_)  
redis:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Cort == "ظ…ط¯ظٹط±" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط±ظٹظ„ظ‡ ظ…ظ† "..text1[2].." ظ‡ظ†ط§")   
redis:srem(bot_id.."Manager"..msg.chat_id_,result.id_)  
redis:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif Cort == "ط¹ط¶ظˆ" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nـپà¼¯â”†طھظ… طھظ†ط±ظٹظ„ظ‡ ظ…ظ† "..text1[2].." ظ‡ظ†ط§")   
end
else
info = "ـپà¼¯â”†ط§ظ„ظ…ط¹ط±ظپ ط؛ظ„ط·"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end

if text == ("ط­ط¸ط±") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and redis:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظ‚ط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط± ظˆ ط§ظ„ط·ط±ط¯ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
if result.sender_user_id_ == tonumber(997081948) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ‡ط°ط§ ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³ طھط§ط¬ط±ط§ط³ظƒ \n")
return false 
end
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
redis:sadd(bot_id.."Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط­ط¸ط±ظ‡ ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text == "ظ‡ظٹظ†ظ‡" or text == "ظ‡ظٹظ†ظ‡ط§" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ظ…ط´ط±ظپ ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !') 
return false  
end
heen = {
"- ط­ط¨ظٹط¨ظٹ ط¹ظ„ط§ط¬ ط§ظ„ط¬ط§ظ‡ظ„ ط§ظ„طھط¬ط§ظ‡ظ„ ."
,"- ظ…ط§ظ„ظٹ ط®ظ„ظƒ ط²ط¨ط§ظٹظ„ ط§ظ„طھظ„ظٹ . "
,"- ظƒط±ط§ظ…طھظƒ طµط§ط±طھ ط¨ط²ط¨ظ„ ×¤ظژظ€ظ€ط¨ظٹ ."
,"- ظ…ظˆ طµظˆط¬ظƒ طµظˆط¬ ط§ظ„ظƒظˆط§ط¯ ط§ظ„ط²ظ…ظƒ ط¬ظ‡ط§ط² ."
,"- ظ„ظپط§ط±ط؛ ط§ط³طھط¬ظ† . "
,"- عھظگفھظƒ ظˆط§ط­ط¯ ظ„ظˆظƒظٹ ظƒط³ ."
,"- ظ…ظ„ط·ظ„ط· ط¯ظٹ ."
};
sendheen = heen[math.random(#heen)]
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.reply_to_message_id_,sendheen)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^ط­ط¸ط± @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط­ط¸ط± @(.*)$")
if not Constructor(msg) and redis:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظ‚ط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط± ظˆ ط§ظ„ط·ط±ط¯ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
if result.id_ then
if result.id_ == tonumber(997081948) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ‡ط°ط§ ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³ طھط§ط¬ط±ط§ط³ظƒ \n")
return false 
end
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
redis:sadd(bot_id.."Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط­ط¸ط±ظ‡ ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end

if text and text:match("^ط­ط¸ط± (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط­ط¸ط± (%d+)$") 
if not Constructor(msg) and redis:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظ‚ط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط± ظˆ ط§ظ„ط·ط±ط¯ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
if userid == tonumber(997081948) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ‡ط°ط§ ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³ طھط§ط¬ط±ط§ط³ظƒ \n")
return false 
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
redis:sadd(bot_id.."Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid)  
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط­ط¸ط±ظ‡ ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end,nil)   
end
return false
end
if text == ("ط§ظ„ط؛ط§ط، ط­ط¸ط±") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "âŒ”ï¸ڈï¸™ط§ظ†ط§ ظ„ط³طھ ظ…ط­ط¸ظˆط±ط§ \n") 
return false 
end
redis:srem(bot_id.."Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
 
if text and text:match("^ط§ظ„ط؛ط§ط، ط­ط¸ط± @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط§ظ„ط؛ط§ط، ط­ط¸ط± @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "âŒ”ï¸ڈï¸™ط§ظ†ط§ ظ„ط³طھ ظ…ط­ط¸ظˆط±ط§ \n") 
return false 
end
redis:srem(bot_id.."Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ظ…ظ† ظ‡ظ†ط§")  
else
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end

if text and text:match("^ط§ظ„ط؛ط§ط، ط­ط¸ط± (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط§ظ„ط؛ط§ط، ط­ط¸ط± (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "âŒ”ï¸ڈï¸™ط§ظ†ط§ ظ„ط³طھ ظ…ط­ط¸ظˆط±ط§ \n") 
return false 
end
redis:srem(bot_id.."Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ظ…ظ† ظ‡ظ†ط§")  
return false
end

if text == ("ظƒطھظ…") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
if result.sender_user_id_ == tonumber(997081948) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ‡ط°ط§ ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³ طھط§ط¬ط±ط§ط³ظƒ \n")
return false 
end
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end     
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
redis:sadd(bot_id.."Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ظƒطھظ…ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ظƒطھظ… @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ظƒطھظ… @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
function Function_Co(extra, result, success)
if result.id_ then
if result.id_ == tonumber(997081948) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ‡ط°ط§ ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³ طھط§ط¬ط±ط§ط³ظƒ \n")
return false 
end
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end     
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ظƒطھظ…ظ‡ ظ…ظ† ظ‡ظ†ط§")  
else
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^ظƒطھظ… (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ظƒطھظ… (%d+)$")
if userid == tonumber(997081948) then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ‡ط°ط§ ظ…ط·ظˆط± ط§ظ„ط³ظˆط±ط³ طھط§ط¬ط±ط§ط³ظƒ \n")
return false 
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
redis:sadd(bot_id.."Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ظƒطھظ…ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end
return false
end
if text == ("ط§ظ„ط؛ط§ط، ظƒطھظ…") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:srem(bot_id.."Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ظƒطھظ…ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط§ظ„ط؛ط§ط، ظƒطھظ… @(.*)$") and Addictive(msg) then
local username = text:match("^ط§ظ„ط؛ط§ط، ظƒطھظ… @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ظƒطھظ…ظ‡ ظ…ظ† ظ‡ظ†ط§")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end

if text and text:match("^ط§ظ„ط؛ط§ط، ظƒطھظ… (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط§ظ„ط؛ط§ط، ظƒطھظ… (%d+)$") 
redis:srem(bot_id.."Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ظƒطھظ…ظ‡ ظ…ظ† ظ‡ظ†ط§")  
return false
end
if text == 'ظ‚ظپظ„ ط§ظ„ظپط§ط±ط³ظٹظ‡' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ـپà¼¯â”†طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظپط§ط±ط³ظٹظ‡")  
end
if text and redis:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Addictive(msg) then 
list = {"ظƒط³","ظƒط³ظ…ظƒ","ظƒط³ط®طھظƒ","ط¹ظٹط±","ظƒط³ط®ط§ظ„طھظƒ","ط®ط±ط§ ط¨ط§ظ„ظ„ظ‡","ط¹ظٹط± ط¨ط§ظ„ظ„ظ‡","ظƒط³ط®ظˆط§طھظƒظ…","ظƒط­ط§ط¨","ظ…ظ†ط§ظˆظٹط¬","ظ…ظ†ط§ظˆظٹط¬","ظƒط­ط¨ظ‡","ط§ط¨ظ† ط§ظ„ظƒط­ط¨ظ‡","ظپط±ط®","ظپط±ظˆط®","ط·ظٹط²ظƒ","ط·ظٹط²ط®طھظƒ"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text == 'ظپطھط­ ط§ظ„ظپط§ط±ط³ظٹظ‡' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:del(bot_id..'lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","ـپà¼¯â”† طھظ€ظ… ظپظ€طھط­ ط§ظ„ظپط§ط±ط³ظٹظ‡\n")  
end
if text == 'ظ‚ظپظ„ ط§ظ„ظپط´ط§ط±' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","ـپà¼¯â”†طھظ… ظ‚ظپظ€ظ„ ط§ظ„ظپط´ط§ط±")  
end
if text and redis:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Addictive(msg) then 
list = {"ع„","ع©ظ‡","ظ¾غŒ","ط®ط³طھظ‡","ط¨ط±ظ…","ط±ط§ط­طھغŒ","ط¨غŒط§ظ…","ط¨ظ¾ظˆط´ظ…","ظƒط±ظ…ظ‡","ع†ظ‡","ع†","ع¬","ظ؛","ع†","ع‡","ع؟","ع€","عژ","ف«","عک","عں","فœ","ع¸","ظ¾","غ´","ط²ط¯ظ†","ط¯ط®طھط±ط§","ط¯غŒظˆط«","ظ…ع©","ط²ط¯ظ†"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text == 'ظپطھط­ ط§ظ„ظپط´ط§ط±' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
redis:del(bot_id..'lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","ـپà¼¯â”† طھظ€ظ… ظپظ€طھط­ ط§ظ„ظپط´ط§ط±\n")  
end
if text == ("طھظ‚ظٹط¯") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ‚ظٹظٹط¯ظ‡ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^طھظ‚ظٹط¯ @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ‚ظٹط¯ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end      
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ‚ظٹظٹط¯ظ‡ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^طھظ‚ظٹط¯ (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ‚ظٹط¯ (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ‚ظٹظٹط¯ظ‡ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
return false
end
------------------------------------------------------------------------
if text == ("ط§ظ„ط؛ط§ط، طھظ‚ظٹط¯") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، طھظ‚ظٹظٹط¯ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ط§ظ„ط؛ط§ط، طھظ‚ظٹط¯ @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط§ظ„ط؛ط§ط، طھظ‚ظٹط¯ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، طھظ‚ظٹظٹط¯ظ‡")  
else
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^ط§ظ„ط؛ط§ط، طھظ‚ظٹط¯ (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط§ظ„ط؛ط§ط، طھظ‚ظٹط¯ (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، طھظ‚ظٹظٹط¯ظ‡")  
return false
end
if text == ("ط·ط±ط¯") and msg.reply_to_message_id_ ~=0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and redis:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظ‚ط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط± ظˆ ط§ظ„ط·ط±ط¯ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… ط·ط±ط¯ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end  
if text and text:match("^ط·ط±ط¯ @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
local username = text:match("^ط·ط±ط¯ @(.*)$")
if not Constructor(msg) and redis:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظ‚ط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط± ظˆ ط§ظ„ط·ط±ط¯ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… ط·ط±ط¯ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end  

if text and text:match("^ط·ط±ط¯ (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
local userid = text:match("^ط·ط±ط¯ (%d+)$") 
if not Constructor(msg) and redis:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظ‚ط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط± ظˆ ط§ظ„ط·ط±ط¯ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ طھط³طھط·ظٹط¹ ط·ط±ط¯ ط§ظˆ ط­ط¸ط± ط§ظˆ ظƒطھظ… ط§ظˆ طھظ‚ظٹظٹط¯ ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… ط·ط±ط¯ظ‡ ظ…ظ† ظ‡ظ†ط§")  
end,nil)   
end
return false
end

if text == "طھط¹ط·ظٹظ„ ط§ظ„ط·ط±ط¯" or text == "طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط±" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
redis:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ آ» ط§ظ„ط­ط¸ط± ~ ظˆط§ظ„ط·ط±ط¯ ')
return false
end
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط·ط±ط¯" or text == "طھظپط¹ظٹظ„ ط§ظ„ط­ط¸ط±" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
redis:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ آ» ط§ظ„ط­ط¸ط± ~ ظˆط§ظ„ط·ط±ط¯ ')
return false
end
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹" or text == "طھط¹ط·ظٹظ„ ط§ظ„طھط±ظ‚ظٹظ‡" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
redis:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط±ظپط¹ آ» ط§ظ„ط§ط¯ظ…ظ† ~ ط§ظ„ظ…ظ…ظٹط² ')
return false
end
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط±ظپط¹" or text == "طھظپط¹ظٹظ„ ط§ظ„طھط±ظ‚ظٹظ‡" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
redis:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط±ظپط¹ آ» ط§ظ„ط§ط¯ظ…ظ† ~ ط§ظ„ظ…ظ…ظٹط² ')
return false
end
end
if text and text:match("^ظˆط¶ط¹ ظ„ظ‚ط¨ (.*)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local timsh = text:match("^ظˆط¶ط¹ ظ„ظ‚ط¨ (.*)$")
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ظ…ط´ط±ظپ ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\nـپà¼¯â”† ط§ظ„ط¹ط¶ظˆ آ» ['..data.first_name_..'](t.me/'..(data.username_ or 'Co')..') '
status  = '\nـپà¼¯â”† ط§ظ„ط§ظٹط¯ظٹ آ» '..result.sender_user_id_..'\nـپà¼¯â”†طھظ… ط¶ط§ظپظ‡ {'..timsh..'} ظƒظ„ظ‚ط¨ ظ„ظ‡'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..timsh)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == "ظپط­طµ ط§ظ„ط¨ظˆطھ" and Owner(msg) then
local chek = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..bot_id)
local getInfo = JSON.decode(chek)
if getInfo.ok == true then
if getInfo.result.can_change_info == true then
INf = 'ظ…ظپط¹ظ„ظ‡' 
else 
INf = 'ط؛ظٹط± ظ…ظپط¹ظ„ظ‡' 
end
if getInfo.result.can_delete_messages == true then
DEL = 'ظ…ظپط¹ظ„ظ‡' 
else 
DEL = 'ط؛ظٹط± ظ…ظپط¹ظ„ظ‡' 
end
if getInfo.result.can_invite_users == true then
INv = 'ظ…ظپط¹ظ„ظ‡' 
else
INv = 'ط؛ظٹط± ظ…ظپط¹ظ„ظ‡' 
end
if getInfo.result.can_pin_messages == true then
Pin = 'ظ…ظپط¹ظ„ظ‡' 
else
Pin = 'ط؛ظٹط± ظ…ظپط¹ظ„ظ‡' 
end
if getInfo.result.can_restrict_members == true then
REs = 'ظ…ظپط¹ظ„ظ‡' 
else 
REs = 'ط؛ظٹط± ظ…ظپط¹ظ„ظ‡' 
end
if getInfo.result.can_promote_members == true then
PRo = 'ظ…ظپط¹ظ„ظ‡'
else
PRo = 'ط؛ظٹط± ظ…ظپط¹ظ„ظ‡'
end 
send(msg.chat_id_, msg.id_,'\n ـپà¼¯â”†طµظ„ط§ط­ظٹط§طھ ط§ظ„ط¨ظˆطھ ظ‡ظٹ \nâ€” â€” â€” â€” â€” â€” â€” â€” â€”\nـپà¼¯â”†طھط؛ظٹط± ظ…ط¹ظ„ظˆظ…ط§طھ ط§ظ„ظ…ط¬ظ…ظˆط¹ط© : '..INf..'\nـپà¼¯â”†ط­ط°ظپ ط§ظ„ط±ط³ط§ط¦ظ„ : '..DEL..'\nـپà¼¯â”†ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† : '..REs..'\nـپà¼¯â”†ط¯ط¹ظˆط© ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† : '..INv..'\nـپà¼¯â”†ط«طھط¨ظٹطھ ط§ظ„ط±ط³ط§ظ„ط© : '..Pin..'\nـپà¼¯â”†ط§ط¶ط§ظپط© ظ…ط´ط±ظپظٹظ† : '..PRo)   
end
end
if text ==("طھط«ط¨ظٹطھ") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:sismember(bot_id.."Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ظ„طھط«ط¨ظٹطھ ظˆط§ظ„ط؛ط§ط، ط§ظ„طھط«ط¨ظٹطھ طھظ… ظ‚ظپظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط«ط¨ظٹطھ ط§ظ„ط±ط³ط§ظ„ظ‡")   
redis:set(bot_id.."Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ظ†ط§ ظ„ط³طھ ط§ط¯ظ…ظ† ظ‡ظ†ط§ ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ ط§ط¯ظ…ظ† ط«ظ… ط§ط¹ط¯ ط§ظ„ظ…ط­ط§ظˆظ„ظ‡")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ظ„ظٹط³طھ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط§ظ„طھط«ط¨ظٹطھ ظٹط±ط¬ظ‰ ط§ظ„طھط­ظ‚ظ‚ ظ…ظ† ط§ظ„طµظ„ط§ط­ظٹط§طھ")  
end
end,nil) 
end
if text == "ط§ظ„ط؛ط§ط، ط§ظ„طھط«ط¨ظٹطھ" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:sismember(bot_id.."Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ظ„طھط«ط¨ظٹطھ ظˆط§ظ„ط؛ط§ط، ط§ظ„طھط«ط¨ظٹطھ طھظ… ظ‚ظپظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، طھط«ط¨ظٹطھ ط§ظ„ط±ط³ط§ظ„ظ‡")   
redis:del(bot_id.."Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ظ†ط§ ظ„ط³طھ ط§ط¯ظ…ظ† ظ‡ظ†ط§ ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ ط§ط¯ظ…ظ† ط«ظ… ط§ط¹ط¯ ط§ظ„ظ…ط­ط§ظˆظ„ظ‡")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ظ„ظٹط³طھ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط§ظ„طھط«ط¨ظٹطھ ظٹط±ط¬ظ‰ ط§ظ„طھط­ظ‚ظ‚ ظ…ظ† ط§ظ„طµظ„ط§ط­ظٹط§طھ")  
end
end,nil)
end
if text == 'ط§ظ„ط؛ط§ط، طھط«ط¨ظٹطھ ط§ظ„ظƒظ„' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:sismember(bot_id.."Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ظ„طھط«ط¨ظٹطھ ظˆط§ظ„ط؛ط§ط، ط§ظ„طھط«ط¨ظٹطھ طھظ… ظ‚ظپظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، طھط«ط¨ظٹطھ ط§ظ„ظƒظ„")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
redis:del(bot_id.."Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ظ†ط§ ظ„ط³طھ ط§ط¯ظ…ظ† ظ‡ظ†ط§ ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ ط§ط¯ظ…ظ† ط«ظ… ط§ط¹ط¯ ط§ظ„ظ…ط­ط§ظˆظ„ظ‡")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ظ„ظٹط³طھ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط§ظ„طھط«ط¨ظٹطھ ظٹط±ط¬ظ‰ ط§ظ„طھط­ظ‚ظ‚ ظ…ظ† ط§ظ„طµظ„ط§ط­ظٹط§طھ")  
end
end,nil)
end
if text and text:match("^ظˆط¶ط¹ طھظƒط±ط§ط± (%d+)$") and Addictive(msg) then   
local Num = text:match("ظˆط¶ط¹ طھظƒط±ط§ط± (.*)")
redis:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظˆط¶ط¹ ط¹ط¯ط¯ ط§ظ„طھظƒط±ط§ط± ("..Num..")")  
end 
if text and text:match("^ظˆط¶ط¹ ط²ظ…ظ† ط§ظ„طھظƒط±ط§ط± (%d+)$") and Addictive(msg) then   
local Num = text:match("^ظˆط¶ط¹ ط²ظ…ظ† ط§ظ„طھظƒط±ط§ط± (%d+)$")
redis:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظˆط¶ط¹ ط²ظ…ظ† ط§ظ„طھظƒط±ط§ط± ("..Num..")") 
end
if text == "ط¶ط¹ ط±ط§ط¨ط·" or text == "ظˆط¶ط¹ ط±ط§ط¨ط·" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.reply_to_message_id_ == 0  and Addictive(msg) then  
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط±ط§ط¨ط· ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ط§ظˆ ط±ط§ط¨ط· ظ‚ظ†ط§ط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")
redis:setex(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "طھظپط¹ظٹظ„ ط¬ظ„ط¨ ط§ظ„ط±ط§ط¨ط·" or text == 'طھظپط¹ظٹظ„ ط§ظ„ط±ط§ط¨ط·' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then  
redis:set(bot_id.."Link_Group"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط¬ظ„ط¨ ط§ظ„ط±ط§ط¨ط· ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
return false  
end
end
if text == "طھط¹ط·ظٹظ„ ط¬ظ„ط¨ ط§ظ„ط±ط§ط¨ط·" or text == 'طھط¹ط·ظٹظ„ ط§ظ„ط±ط§ط¨ط·' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then  
redis:del(bot_id.."Link_Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط¬ظ„ط¨ ط±ط§ط¨ط· ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
return false end
end
if text == "ط§ظ„ط±ط§ط¨ط·" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local status_Link = redis:get(bot_id.."Link_Group"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط¬ظ„ط¨ ط§ظ„ط±ط§ط¨ط· ظ…ط¹ط·ظ„") 
return false  
end
local link = redis:get(bot_id.."Private:Group:Link"..msg.chat_id_)            
if link then                              
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†LinK GrOup : \n ["..link.."]")                          
else                
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط±ط§ط¨ط· ط§ط±ط³ظ„ ط¶ط¹ ط±ط§ط¨ط·")              
end            
end
if text == "ظ…ط³ط­ ط§ظ„ط±ط§ط¨ط·" or text == "ط­ط°ظپ ط§ظ„ط±ط§ط¨ط·" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then     
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†طھظ… ظ…ط³ط­ ط§ظ„ط±ط§ط¨ط· ")           
redis:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false      
end
return false  
end
if (msg.content_.animation_) or (msg.content_.photo_) or (msg.content_.video_) or (msg.content_.document) or (msg.content_.sticker_) or (msg.content_.voice_) or (msg.content_.audio_) and msg.reply_to_message_id_ == 0 then      
redis:sadd(bot_id.."allM"..msg.chat_id_, msg.id_)
end
if text == ("ط§ظ…ط³ط­") and cleaner(msg) then  
local list = redis:smembers(bot_id.."allM"..msg.chat_id_)
for k,v in pairs(list) do
local Message = v
if Message then
t = "ـپà¼¯â”†طھظ… ظ…ط³ط­ "..k.." ظ…ظ† ط§ظ„ظˆط³ط§ط¦ط· ط§ظ„ظ…ظˆط¬ظˆط¯ظ‡"
DeleteMessage(msg.chat_id_,{[0]=Message})
redis:del(bot_id.."allM"..msg.chat_id_)
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظٹط¯ظٹط§ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("ط¹ط¯ط¯ ط§ظ„ظ…ظٹط¯ظٹط§") and cleaner(msg) then  
local num = redis:smembers(bot_id.."allM"..msg.chat_id_)
for k,v in pairs(num) do
local numl = v
if numl then
l = "ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ظٹط¯ظٹط§ ط§ظ„ظ…ظˆط¬ظˆط¯ ظ‡ظˆ "..k
end
end
if #num == 0 then
l = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظٹط¯ظٹط§ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡"
end
send(msg.chat_id_, msg.id_, l)
end
if text and text:match("^ط¶ط¹ طµظˆط±ظ‡") and Addictive(msg) and msg.reply_to_message_id_ == 0 or text and text:match("^ظˆط¶ط¹ طµظˆط±ظ‡") and Addictive(msg) and msg.reply_to_message_id_ == 0 then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„طµظˆط±ظ‡") 
return false
end
if text == "ط­ط°ظپ ط§ظ„طµظˆط±ظ‡" or text == "ظ…ط³ط­ ط§ظ„طµظˆط±ظ‡" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© طµظˆط±ط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
end
return false  
end
if text == "ط¶ط¹ ظˆطµظپ" or text == "ظˆط¶ط¹ ظˆطµظپ" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
redis:setex(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ط§ظ† ط§ظ„ظˆطµظپ")
end
return false  
end
if text == "ط¶ط¹ طھط±ط­ظٹط¨" or text == "ظˆط¶ط¹ طھط±ط­ظٹط¨" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
redis:setex(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = "ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„طھط±ط­ظٹط¨ ط§ظ„ط§ظ†"
tt = "\nـپà¼¯â”†طھط³طھط·ظٹط¹ ط§ط¶ط§ظپط© ظ…ط§ظٹظ„ظٹ !\nـپà¼¯â”†ط¯ط§ظ„ط© ط¹ط±ط¶ ط§ظ„ط§ط³ظ… آ»{`name`}\nـپà¼¯â”†ط¯ط§ظ„ط© ط¹ط±ط¶ ط§ظ„ظ…ط¹ط±ظپ آ»{`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == "ط§ظ„طھط±ط­ظٹط¨" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Get:Welcome:Group"..msg.chat_id_)   then 
Welcome = redis:get(bot_id.."Get:Welcome:Group"..msg.chat_id_)  
else 
Welcome = "ـپà¼¯â”†ظ„ظ… ظٹطھظ… طھط¹ظٹظٹظ† طھط±ط­ظٹط¨ ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false  
end
if text == "طھظپط¹ظٹظ„ ط§ظ„طھط±ط­ظٹط¨" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ طھط±ط­ظٹط¨ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
return false  
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„طھط±ط­ظٹط¨" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ طھط±ط­ظٹط¨ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
return false  
end
if text == "ظ…ط³ط­ ط§ظ„طھط±ط­ظٹط¨" or text == "ط­ط°ظپ ط§ظ„طھط±ط­ظٹط¨" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
redis:del(bot_id.."Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© طھط±ط­ظٹط¨ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
end
return false  
end

if text == "ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ظ…ظ†ط¹" and Addictive(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
redis:del(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
redis:del(bot_id.."Add:Filter:Rp2"..v..msg.chat_id_)  
redis:srem(bot_id.."List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ظ…ظ†ط¹")  
end

if text == "ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ظ…ظ†ط¹" and Addictive(msg) then  
 if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."List:Filter"..msg.chat_id_)  
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ظ†ط¹ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do  
local Co_Msg = redis:get(bot_id.."Add:Filter:Rp2"..v..msg.chat_id_)   
t = t..""..k.."- "..v.." آ» {"..Co_Msg.."}\n"    
end  
if #list == 0 then  
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظƒظ„ظ…ط§طھ ظ…ظ…ظ†ظˆط¹ظ‡"  
end  
send(msg.chat_id_, msg.id_,t)  
end  
if text and text == "ظ…ظ†ط¹" and msg.reply_to_message_id_ == 0 and Addictive(msg) then       
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظ…ظ‡ ظ„ظ…ظ†ط¹ظ‡ط§")  
redis:set(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = redis:get(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„طھط­ط°ظٹط± ط¹ظ†ط¯ ط§ط±ط³ط§ظ„ ط§ظ„ظƒظ„ظ…ظ‡")  
redis:set(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
redis:set(bot_id.."filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
redis:sadd(bot_id.."List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = redis:get(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظ…ظ†ط¹ ط§ظ„ظƒظ„ظ…ظ‡ ظ…ط¹ ط§ظ„طھط­ط°ظٹط±")  
redis:del(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = redis:get(bot_id.."filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
redis:set(bot_id.."Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
redis:del(bot_id.."filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "ط§ظ„ط؛ط§ط، ظ…ظ†ط¹" and msg.reply_to_message_id_ == 0 and Addictive(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظ…ظ‡ ط§ظ„ط§ظ†")  
redis:set(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = redis:get(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ظ…ظ†ط¹ظ‡ط§ ")  
redis:del(bot_id.."Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
redis:del(bot_id.."Add:Filter:Rp2"..text..msg.chat_id_)  
redis:srem(bot_id.."List:Filter"..msg.chat_id_,text)  
return false  end  
end

if text == "ظ…ط³ط­ ط§ظ„ط¨ظˆطھط§طھ" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ ط¨ظˆطھط§طھ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")
else
local t = "ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ط¨ظˆطھط§طھ ظ‡ظ†ط§ >> {"..c.."}\nـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ط¨ظˆطھط§طھ ط§ظ„طھظٹ ظ‡ظٹ ط§ط¯ظ…ظ† >> {"..x.."}\nـپà¼¯â”†طھظ… ط·ط±ط¯ >> {"..(c - x).."} ظ…ظ† ط§ظ„ط¨ظˆطھط§طھ"
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
if text == ("ظƒط´ظپ ط§ظ„ط¨ظˆطھط§طھ") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ط¨ظˆطھط§طھ ط§ظ„ظ…ظˆط¬ظˆط¯ظ‡ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = " {âœ¯}"
end
text = text..">> [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ ط¨ظˆطھط§طھ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")
return false 
end
if #admins == i then 
local a = "\nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \nـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ط¨ظˆطھط§طھ ط§ظ„طھظٹ ظ‡ظ†ط§ >> {"..n.."} ط¨ظˆطھ\n"
local f = "ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ط¨ظˆطھط§طھ ط§ظ„طھظٹ ظ‡ظٹ ط§ط¯ظ…ظ† >> {"..t.."}\nـپà¼¯â”†ظ…ظ„ط§ط­ط¶ظ‡ ط¹ظ„ط§ظ…ط© ط§ظ„ (âœ¯) طھط¹ظ†ظٹ ط§ظ† ط§ظ„ط¨ظˆطھ ط§ط¯ظ…ظ† \nâŒ”"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if redis:get(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "ط§ظ„ط؛ط§ط،" then 
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ظپط¸ ط§ظ„ظ‚ظˆط§ظ†ظٹظ†") 
redis:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
redis:set(bot_id.."Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط­ظپط¸ ظ‚ظˆط§ظ†ظٹظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
redis:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == "ط¶ط¹ ظ‚ظˆط§ظ†ظٹظ†" or text == "ظˆط¶ط¹ ظ‚ظˆط§ظ†ظٹظ†" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
redis:setex(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„ظ‚ظˆط§ظ†ظٹظ† ط§ظ„ط§ظ†")  
end
end
if text == "ظ…ط³ط­ ط§ظ„ظ‚ظˆط§ظ†ظٹظ†" or text == "ط­ط°ظپ ط§ظ„ظ‚ظˆط§ظ†ظٹظ†" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© ظ‚ظˆط§ظ†ظٹظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
redis:del(bot_id.."Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "ط§ظ„ظ‚ظˆط§ظ†ظٹظ†" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local Set_Rules = redis:get(bot_id.."Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then     
send(msg.chat_id_,msg.id_, Set_Rules)   
else      
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ ظ‚ظˆط§ظ†ظٹظ† ظ‡ظ†ط§")   
end    
end

if text == "ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¶ط§ظپظ‡" and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."")
t = "ـپà¼¯â”†ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¶ط§ظپظ‡  \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
Cmds = redis:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ ط§ظˆط§ظ…ط± ط§ط¶ط§ظپظٹظ‡"
end
send(msg.chat_id_, msg.id_,"["..t.."]")
end
if text == "ط­ط°ظپ ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¶ط§ظپظ‡" or text == "ظ…ط³ط­ ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¶ط§ظپظ‡" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then 
local list = redis:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
redis:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
redis:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظ…ط³ط­ ط¬ظ…ظٹط¹ ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„طھظٹ طھظ… ط§ط¶ط§ظپطھظ‡ط§")  
end
end
if text == "ط§ط¶ظپ ط§ظ…ط±" and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ظ† ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„ط§ظ…ط± ط§ظ„ظ‚ط¯ظٹظ… ..")  
return false
end
if text == "ط­ط°ظپ ط§ظ…ط±" or text == "ظ…ط³ط­ ط§ظ…ط±" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
redis:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ط§ظ…ط± ط§ظ„ط°ظٹ ظ‚ظ… ط¨ظˆط¶ط¹ظ‡ ط¨ط¯ظ„ط§ ط¹ظ† ط§ظ„ظ‚ط¯ظٹظ…")  
return false
end
end
if text == ("ط±ظپط¹ ظ…ظ†ط¸ظپ") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
function Function_Co(extra, result, success)
redis:sadd(bot_id.."MN:TF"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط¸ظپ ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ظ…ظ†ط¸ظپ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ظ…ظ†ط¸ظپ @(.*)$")
function Function_Co(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ… ظ‡ط§ط°ط§ ظ…ط¹ط±ظپ ظ‚ظ†ط§ط© ظٹط±ط¬ظ‰ ط§ط³طھط®ط¯ط§ظ… ط§ظ„ط§ظ…ط± ط¨طµظˆط±ظ‡ طµط­ظٹط­ظ‡ !")   
return false 
end      
redis:sadd(bot_id.."MN:TF"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط¸ظپ ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^ط±ظپط¹ ظ…ظ†ط¸ظپ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^ط±ظپط¹ ظ…ظ†ط¸ظپ (%d+)$")
if not Constructor(msg) and redis:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ ط±ظپط¹ ط§ط­ط¯ ظˆط°ط§ظ„ظƒ ظ„ط§ظ† طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†')
return false
end
redis:sadd(bot_id.."MN:TF"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھط±ظ‚ظٹطھظ‡ ظ…ظ†ط¸ظپ ظ„ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
return false
end
if text == ("طھظ†ط²ظٹظ„ ظ…ظ†ط¸ظپ") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
redis:srem(bot_id.."MN:TF"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ظ…ظ†ط¸ظپظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط¸ظپ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط¸ظپ @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
redis:srem(bot_id.."MN:TF"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ظ…ظ†ط¸ظپظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text and text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط¸ظپ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^طھظ†ط²ظٹظ„ ظ…ظ†ط¸ظپ (%d+)$")
redis:srem(bot_id.."MN:TF"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ظ…ظ†ط¸ظپظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
return false
end

if text == "ط§ظ„طµظ„ط§ط­ظٹط§طھ" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ طµظ„ط§ط­ظٹط§طھ ظ…ط¶ط§ظپظ‡")
return false
end
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„طµظ„ط§ط­ظٹط§طھ ط§ظ„ظ…ط¶ط§ظپظ‡ \nâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پ\n"
for k,v in pairs(list) do
var = redis:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "ظ…ط³ط­ ط§ظ„ظ…ظ†ط¸ظپظٹظ†" and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."MN:TF"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ًں—‘ï¸™ طھظ… ظ…ط³ط­  ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ظ†ط¸ظپظٹظ†  ")
end
if text == ("ط§ظ„ظ…ظ†ط¸ظپظٹظ†") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = redis:smembers(bot_id.."MN:TF"..msg.chat_id_)
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ظ†ط¸ظپظٹظ† \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ظ†ط¸ظپظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "ظ…ط³ط­ ط§ظ„طµظ„ط§ط­ظٹط§طھ" then
local list = redis:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
redis:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
redis:del(bot_id.."Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظ…ط³ط­ ط§ظ„طµظ„ط§ط­ظٹط§طھ")
end
if text and text:match("^ط§ط¶ظپ طµظ„ط§ط­ظٹظ‡ (.*)$") and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
ComdNew = text:match("^ط§ط¶ظپ طµظ„ط§ط­ظٹظ‡ (.*)$")
redis:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
redis:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
redis:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ط§ط±ط³ظ„ ظ†ظˆط¹ ط§ظ„طµظ„ط§ط­ظٹظ‡ âŒ”\nـپà¼¯â”†(ط¹ط¶ظˆ ~ ظ…ظ…ظٹط²  ~ ط§ط¯ظ…ظ†  ~ ظ…ط¯ظٹط± )") 
end
if text and text:match("^ظ…ط³ط­ طµظ„ط§ط­ظٹظ‡ (.*)$") and Addictive(msg) or text and text:match("^ط­ط°ظپ طµظ„ط§ط­ظٹظ‡ (.*)$") and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
ComdNew = text:match("^ظ…ط³ط­ طµظ„ط§ط­ظٹظ‡ (.*)$") or text:match("^ط­ط°ظپ طµظ„ط§ط­ظٹظ‡ (.*)$")
redis:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ظ…ط³ط­ ط§ظ„طµظ„ط§ط­ظٹظ‡ ") 
end
if redis:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^ط§ظ„ط؛ط§ط،$") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ظ…ط± ") 
redis:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "ظ…ط¯ظٹط±" then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_"ـپà¼¯â”†ط§ط±ط³ظ„ ظ†ظˆط¹ ط§ظ„طµظ„ط§ط­ظٹظ‡ ظ…ط±ظ‡ ط§ط®ط±\nـپà¼¯â”†طھط³طھط·ظٹط¹ ط§ط¶ط§ظپط© طµظ„ط§ط­ظٹظ‡ (ط¹ط¶ظˆ ~ ظ…ظ…ظٹط²  ~ ط§ط¯ظ…ظ† )") 
return false
end
end
if text == "ط§ط¯ظ…ظ†" then
if not Owner(msg) then 
send(msg.chat_id_, msg.id_"ـپà¼¯â”†ط§ط±ط³ظ„ ظ†ظˆط¹ ط§ظ„طµظ„ط§ط­ظٹظ‡ ظ…ط±ظ‡ ط§ط®ط±\nـپà¼¯â”†طھط³طھط·ظٹط¹ ط§ط¶ط§ظپط© طµظ„ط§ط­ظٹظ‡ ( ط¹ط¶ظˆ ~ ظ…ظ…ظٹط² )") 
return false
end
end
if text == "ظ…ظ…ظٹط²" then
if not Addictive(msg) then
send(msg.chat_id_, msg.id_"ـپà¼¯â”†ط§ط±ط³ظ„ ظ†ظˆط¹ ط§ظ„طµظ„ط§ط­ظٹظ‡ ظ…ط±ظ‡ ط§ط®ط±\nـپà¼¯â”†طھط³طھط·ظٹط¹ ط§ط¶ط§ظپط© طµظ„ط§ط­ظٹظ‡ ( ط¹ط¶ظˆ )") 
return false
end
end
if text == "ظ…ط¯ظٹط±" or text == "ط§ط¯ظ…ظ†" or text == "ظ…ظ…ظٹط²" or text == "ط¹ط¶ظˆ" then
local textn = redis:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
redis:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ط¶ط§ظپط© طµظ„ط§ط­ظٹط© ") 
redis:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ط·ظˆط± (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ط·ظˆط± (.*)$") 
redis:set(bot_id.."Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ط·ظˆط± ط§ظ„ظ‰ آ» "..Teext)
end
if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ†ط´ط¦ ط§ظ„ط§ط³ط§ط³ظٹ (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ†ط´ط¦ ط§ظ„ط§ط³ط§ط³ظٹ (.*)$") 
redis:set(bot_id.."BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ†ط´ط¦ ط§ظ„ط§ط³ط§ط³ظٹ ط§ظ„ظ‰ آ» "..Teext)
end
if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ†ط´ط¦ (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ†ط´ط¦ (.*)$") 
redis:set(bot_id.."Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ†ط´ط¦ ط§ظ„ظ‰ آ» "..Teext)
end
if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ط¯ظٹط± (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ط¯ظٹط± (.*)$") 
redis:set(bot_id.."Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ط¯ظٹط± ط§ظ„ظ‰ آ» "..Teext)
end
if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ط§ط¯ظ…ظ† (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ط§ط¯ظ…ظ† (.*)$") 
redis:set(bot_id.."Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ط§ط¯ظ…ظ† ط§ظ„ظ‰ آ» "..Teext)
end
if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ…ظٹط² (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ…ظٹط² (.*)$") 
redis:set(bot_id.."Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ظ…ظ…ظٹط² ط§ظ„ظ‰ آ» "..Teext)
end
if text and text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ط¹ط¶ظˆ (.*)$") and Owner(msg) then
local Teext = text:match("^طھط؛ظٹط± ط±ط¯ ط§ظ„ط¹ط¶ظˆ (.*)$") 
redis:set(bot_id.."Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹط± ط±ط¯ ط§ظ„ط¹ط¶ظˆ ط§ظ„ظ‰ آ» "..Teext)
end


if text == ("ظ…ط³ط­ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±") and BasicConstructor(msg) then
local list = redis:smembers(bot_id.."List:Manager"..msg.chat_id_.."")
for k,v in pairs(list) do
redis:del(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_)     
redis:del(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_)
redis:del(bot_id.."List:Manager"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظ…ط³ط­ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±")
end
if text == ("ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±") and Owner(msg) then
local list = redis:smembers(bot_id.."List:Manager"..msg.chat_id_.."")
text = "ـپà¼¯â”†ظ‚ط§ط¦ظ…ظ‡ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط± \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰\n"
for k,v in pairs(list) do
if redis:get(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = "ظ…طھط­ط±ظƒظ‡ ًںژ­"
elseif redis:get(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = "ط¨طµظ…ظ‡ ًں“¢"
elseif redis:get(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = "ظ…ظ„طµظ‚ âŒ”"
elseif redis:get(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = "ط±ط³ط§ظ„ظ‡ âœ‰"
elseif redis:get(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = "طµظˆط±ظ‡ âŒ”"
elseif redis:get(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = "ظپظٹط¯ظٹظˆ ًں“¹"
elseif redis:get(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_) then
db = "ظ…ظ„ظپ âŒ”"
elseif redis:get(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = "ط§ط؛ظ†ظٹظ‡ ًںژµ"
end
text = text..""..k..">> ("..v..") آ» {"..db.."}\n"
end
if #list == 0 then
text = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط±ط¯ظˆط¯ ظ„ظ„ظ…ط¯ظٹط±"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = redis:get(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_.."")
if redis:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
redis:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
redis:set(bot_id.."Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
redis:set(bot_id.."Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
redis:set(bot_id.."Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
redis:set(bot_id.."Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
redis:set(bot_id.."Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
redis:set(bot_id.."Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
redis:set(bot_id.."Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
redis:set(bot_id.."Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط­ظپط¸ ط§ظ„ط±ط¯ ط¨ظ†ط¬ط§ط­")
return false  
end  
end
if text == "ط§ط¶ظپ ط±ط¯" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظ…ظ‡ ط§ظ„طھظٹ طھط±ظٹط¯ ط§ط¶ط§ظپطھظ‡ط§")
redis:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "ط­ط°ظپ ط±ط¯" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظ…ظ‡ ط§ظ„طھظٹ طھط±ظٹط¯ ط­ط°ظپظ‡ط§")
redis:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if redis:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط§ظ„ط§ظ† ط§ط±ط³ظ„ ط§ظ„ط±ط¯ ط§ظ„ط°ظٹ طھط±ظٹط¯ ط§ط¶ط§ظپطھظ‡ \nـپà¼¯â”† ظ‚ط¯ ظٹظƒظˆظ† (ظ…ظ„ظپ - ظپط¯ظٹظˆ - ظ†طµ - ظ…ظ„طµظ‚ - ط¨طµظ…ظ‡ - ظ…طھط­ط±ظƒظ‡ )\nـپà¼¯â”† ظٹظ…ظƒظ†ظƒ ط§ط¶ط§ظپظ‡ ط§ظ„ظ‰ ط§ظ„ظ†طµ :\n- `#username` > ط§ط³ظ… ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#msgs` > ط¹ط¯ط¯ ط±ط³ط§ط¦ظ„ ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#name` > ط§ط³ظ… ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#id` > ط§ظٹط¯ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#stast` > ظ…ظˆظ‚ط¹ ط§ظ„ظ…ط³طھط®ط¯ظ… \n- `#edit` > ط¹ط¯ط¯ ط§ظ„ط³ط­ظƒط§طھ ')
redis:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
redis:set(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
redis:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
redis:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
redis:sadd(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if redis:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© ط§ظ„ط±ط¯ ظ…ظ† ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط±ط¯ظˆط¯")
redis:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
redis:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
redis:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
redis:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
redis:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
redis:srem(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not redis:get(bot_id.."Reply:Manager"..msg.chat_id_) then
if not redis:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
local anemi = redis:get(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = redis:get(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = redis:get(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
local Text = redis:get(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = redis:get(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = redis:get(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = redis:get(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = redis:get(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = redis:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = redis:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'ظ„ط§ ظٹظˆط¬ط¯')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr)
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)   
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,photo_caption)
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
------------------------------------------------------------------------
if text == ("ظ…ط³ط­ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±") and DevCo(msg) then 
local list = redis:smembers(bot_id.."List:Rd:Sudo")
for k,v in pairs(list) do
redis:del(bot_id.."Add:Rd:Sudo:Gif"..v)   
redis:del(bot_id.."Add:Rd:Sudo:vico"..v)   
redis:del(bot_id.."Add:Rd:Sudo:stekr"..v)     
redis:del(bot_id.."Add:Rd:Sudo:Text"..v)   
redis:del(bot_id.."Add:Rd:Sudo:Photo"..v)
redis:del(bot_id.."Add:Rd:Sudo:Video"..v)
redis:del(bot_id.."Add:Rd:Sudo:File"..v)
redis:del(bot_id.."Add:Rd:Sudo:Audio"..v)
redis:del(bot_id.."List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ظ…ط³ط­ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±")
end
if text == ("ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±") and DevCo(msg) then 
local list = redis:smembers(bot_id.."List:Rd:Sudo")
text = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط± \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰\n"
for k,v in pairs(list) do
if redis:get(bot_id.."Add:Rd:Sudo:Gif"..v) then
db = "ظ…طھط­ط±ظƒظ‡ ًںژ­"
elseif redis:get(bot_id.."Add:Rd:Sudo:vico"..v) then
db = "ط¨طµظ…ظ‡ ًں“¢"
elseif redis:get(bot_id.."Add:Rd:Sudo:stekr"..v) then
db = "ظ…ظ„طµظ‚ âŒ”"
elseif redis:get(bot_id.."Add:Rd:Sudo:Text"..v) then
db = "ط±ط³ط§ظ„ظ‡ âœ‰"
elseif redis:get(bot_id.."Add:Rd:Sudo:Photo"..v) then
db = "طµظˆط±ظ‡ âŒ”"
elseif redis:get(bot_id.."Add:Rd:Sudo:Video"..v) then
db = "ظپظٹط¯ظٹظˆ ًں“¹"
elseif redis:get(bot_id.."Add:Rd:Sudo:File"..v) then
db = "ظ…ظ„ظپ âŒ”"
elseif redis:get(bot_id.."Add:Rd:Sudo:Audio"..v) then
db = "ط§ط؛ظ†ظٹظ‡ ًںژµ"
end
text = text..""..k.." >> ("..v..") آ» {"..db.."}\n"
end
if #list == 0 then
text = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط±ط¯ظˆط¯ ظ„ظ„ظ…ط·ظˆط±"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = redis:get(bot_id.."Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if redis:get(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
redis:del(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
redis:set(bot_id.."Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
redis:set(bot_id.."Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
redis:set(bot_id.."Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
redis:set(bot_id.."Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
redis:set(bot_id.."Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
redis:set(bot_id.."Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
redis:set(bot_id.."Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
redis:set(bot_id.."Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط­ظپط¸ ط§ظ„ط±ط¯ ط¨ظ†ط¬ط§ط­")
return false  
end  
end

if text == "ط§ط¶ظپ ط±ط¯ ظ„ظ„ظƒظ„" and DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظ…ظ‡ ط§ظ„طھط±ظٹ طھط±ظٹط¯ ط§ط¶ط§ظپطھظ‡ط§")
redis:set(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "ط­ط°ظپ ط±ط¯ ظ„ظ„ظƒظ„" and DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظ…ظ‡ ط§ظ„طھط±ظٹ طھط±ظٹط¯ ط­ط°ظپظ‡ط§")
redis:set(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if redis:get(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط§ظ„ط§ظ† ط§ط±ط³ظ„ ط§ظ„ط±ط¯ ط§ظ„ط°ظٹ طھط±ظٹط¯ ط§ط¶ط§ظپطھظ‡ \nـپà¼¯â”† ظ‚ط¯ ظٹظƒظˆظ† (ظ…ظ„ظپ - ظپط¯ظٹظˆ - ظ†طµ - ظ…ظ„طµظ‚ - ط¨طµظ…ظ‡ - ظ…طھط­ط±ظƒظ‡ )\nـپà¼¯â”† ظٹظ…ظƒظ†ظƒ ط§ط¶ط§ظپظ‡ ط§ظ„ظ‰ ط§ظ„ظ†طµ :\n- `#username` > ط§ط³ظ… ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#msgs` > ط¹ط¯ط¯ ط±ط³ط§ط¦ظ„ ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#name` > ط§ط³ظ… ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#id` > ط§ظٹط¯ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ…\n- `#stast` > ظ…ظˆظ‚ط¹ ط§ظ„ظ…ط³طھط®ط¯ظ… \n- `#edit` > ط¹ط¯ط¯ ط§ظ„ط³ط­ظƒط§طھ ')
redis:set(bot_id.."Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
redis:set(bot_id.."Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
redis:sadd(bot_id.."List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if redis:get(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© ط§ظ„ط±ط¯ ظ…ظ† ظ‚ط§ط¦ظ…ظ‡ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
redis:del(bot_id..''..v..text)
end
redis:del(bot_id.."Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
redis:srem(bot_id.."List:Rd:Sudo", text)
return false
end
end

if text and not redis:get(bot_id.."Reply:Sudo"..msg.chat_id_) then
if not redis:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
local anemi = redis:get(bot_id.."Add:Rd:Sudo:Gif"..text)   
local veico = redis:get(bot_id.."Add:Rd:Sudo:vico"..text)   
local stekr = redis:get(bot_id.."Add:Rd:Sudo:stekr"..text)     
local Text = redis:get(bot_id.."Add:Rd:Sudo:Text"..text)   
local photo = redis:get(bot_id.."Add:Rd:Sudo:Photo"..text)
local video = redis:get(bot_id.."Add:Rd:Sudo:Video"..text)
local document = redis:get(bot_id.."Add:Rd:Sudo:File"..text)
local audio = redis:get(bot_id.."Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = redis:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = redis:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'ظ„ط§ ظٹظˆط¬ط¯')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,Text)
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)     
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'ط·ط±ط¯ ط§ظ„ظ…ط­ط°ظˆظپظٹظ†' or text == 'ظ…ط³ط­ ط§ظ„ظ…ط­ط°ظˆظپظٹظ†' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then    
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… ط·ط±ط¯ ط§ظ„ط­ط³ط§ط¨ط§طھ ط§ظ„ظ…ط­ط°ظˆظپظ‡')
end,nil)
end
end

if text == "طھظپط¹ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±" and Owner(msg) then   
redis:del(bot_id.."Reply:Manager"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±") 
end
if text == "طھط¹ط·ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±" and Owner(msg) then  
redis:set(bot_id.."Reply:Manager"..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±" ) 
end
if text == "طھظپط¹ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±" and Owner(msg) then   
redis:del(bot_id.."Reply:Sudo"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±" ) 
end
if text == "طھط¹ط·ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±" and Owner(msg) then  
redis:set(bot_id.."Reply:Sudo"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±" ) 
end


if text == ("طھظ†ط²ظٹظ„ ط§ظ„ظƒظ„") and msg.reply_to_message_id_ ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
if tonumber(Id_Sudo) == tonumber(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ظ„ط§ طھط³طھط·ظٹط¹ طھظ†ط²ظٹظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false 
end
if redis:sismember(bot_id.."Sudo:User",result.sender_user_id_) then
dev = "ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط·ظˆط±ظٹظ†"
else 
dev = "ـپà¼¯â”†ظ‡ظˆ ظ„ظٹط³ ظ…ط·ظˆط±" 
end
if redis:sismember(bot_id.."Basic:Constructor"..msg.chat_id_, result.sender_user_id_) then
crr = "ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ ظ…ظ† ط§ظ„ط§ط³ط§ط³ظٹظٹظ†" 
else 
crr = "ـپà¼¯â”†ظ‡ظˆ ظ„ظٹط³ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ" 
end
if redis:sismember(bot_id.."Constructor"..msg.chat_id_, result.sender_user_id_) then
cr = "ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ظ†ط´ط¦ظٹظ†" 
else 
cr = "ـپà¼¯â”†ظ‡ظˆ ظ„ظٹط³ ظ…ظ†ط´ط¦" 
end
if redis:sismember(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_) then
own = "ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ظ…ط¯ط±ط§ط،" 
else 
own = "ـپà¼¯â”†ظ‡ظˆ ظ„ظٹط³ ظ…ط¯ظٹط±" 
end
if redis:sismember(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ظ‡ ظ…ظ† ط§ظ„ط§ط¯ظ…ظٹظ‡"
 else 
mod = "ـپà¼¯â”†ظ‡ظˆ ظ„ظٹط³ ط§ط¯ظ…ظ†" 
end
if redis:sismember(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "ـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ ظ…ظ† ط§ظ„ظ…ظ…ظٹط²ظٹظ†"
else
vip = "ـپà¼¯â”†ظ‡ظˆ ظ„ظٹط³ ظ…ظ…ظٹط²"
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھظ†ط²ظٹظ„ ط§ظ„ط´ط®طµ ظ…ظ† ط¬ظ…ظٹط¹ ط§ظ„ط±طھط¨")
else
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹظ‡ ط±طھط¨ ط­طھظ‰ ط§ط³طھط·ظٹط¹ طھظ†ط²ظٹظ„ظ‡ \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
redis:srem(bot_id.."Sudo:User", result.sender_user_id_)
redis:srem(bot_id.."Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
redis:srem(bot_id.."Constructor"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
elseif redis:sismember(bot_id.."Sudo:User",msg.sender_user_id_) then
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Constructor"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif redis:sismember(bot_id.."Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Constructor"..msg.chat_id_, result.sender_user_id_)
elseif redis:sismember(bot_id.."Constructor"..msg.chat_id_, msg.sender_user_id_) then
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Manager"..msg.chat_id_, result.sender_user_id_)
elseif redis:sismember(bot_id.."Manager"..msg.chat_id_, msg.sender_user_id_) then
redis:srem(bot_id.."Mod:User"..msg.chat_id_, result.sender_user_id_)
redis:srem(bot_id.."Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
end
if text == "طھط§ظƒ ظ„ظ„ظƒظ„" and Addictive(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""), offset_ = 0,limit_ = 200},function(ta,taha)
local t = "\nـپà¼¯â”† ظ‚ط§ط¦ظ…ط© ط§ظ„ط§ط¹ط¶ط§ط، \n â€” â€” â€” â€” â€” â€” â€” â€” â€” \n"
x = 0
local list = taha.members_
for k, v in pairs(list) do
x = x + 1
if redis:get(bot_id.."User:Name"..v.user_id_) then
t = t.."ـپà¼¯â”†"..x.."ï¸™[@"..redis:get(bot_id.."User:Name"..v.user_id_).."]\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end
if text == "ط±طھط¨طھظٹ" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local rtp = Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط±طھط¨طھظƒ ظپظٹ ط§ظ„ط¨ظˆطھ آ» "..rtp)
end
if text == "ط§ط³ظ…ظٹ"  then 
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = "ـپà¼¯â”† ط§ط³ظ…ظƒ ط§ظ„ط§ظˆظ„ â†گ {`"..(result.first_name_).."`}"
else
first_name = ""
end   
if result.last_name_ then 
last_name = "ـپà¼¯â”† ط§ط³ظ…ظƒ ط§ظ„ط«ط§ظ†ظٹ â†گ {`"..result.last_name_.."`}" 
else
last_name = ""
end      
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text==("ط¹ط¯ط¯ ط§ظ„ظƒط±ظˆط¨") and Addictive(msg) then  
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"ـپà¼¯â”† ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظ‡ظ†ط§ \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local taha = "ـپà¼¯â”† ط¹ط¯ط¯ ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡ : "..data.administrator_count_..
"\n\nـپà¼¯â”† ط¹ط¯ط¯ ط§ظ„ظ…ط·ط±ظˆط¯ظٹظ† : "..data.kicked_count_..
"\n\nـپà¼¯â”† ط¹ط¯ط¯ ط§ظ„ط§ط¹ط¶ط§ط، : "..data.member_count_..
"\n\nـپà¼¯â”† ط¹ط¯ط¯ ط±ط³ط§ط¦ظ„ ط§ظ„ظƒط±ظˆط¨ : "..(msg.id_/2097152/0.5)..
"\n\nـپà¼¯â”† ط§ط³ظ… ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ : ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, taha) 
end,nil)
end,nil)
end 
if text == "ط§ط·ط±ط¯ظ†ظٹ" or text == "ط·ط±ط¯ظ†ظٹ" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if not redis:get(bot_id.."Kick:Me"..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”† ط¹ط°ط±ط§ ظ„ط§ ط§ط³طھط·ظٹط¹ ط·ط±ط¯ ( "..Get_Rank(msg.sender_user_id_,msg.chat_id_).." )")
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ظ„ظٹط³ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© ط­ط¸ط± ط§ظ„ظ…ط³طھط®ط¯ظ…ظٹظ† ظٹط±ط¬ظ‰ طھظپط¹ظٹظ„ظ‡ط§ !") 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !") 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط¹ط°ط±ط§ ظ„ط§ ط§ط³طھط·ظٹط¹ ط·ط±ط¯ ط§ط¯ظ…ظ†ظٹط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
return false  
end
if data and data.ID and data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… ط·ط±ط¯ظƒ ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ") 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ظ…ط± ط§ط·ط±ط¯ظ†ظٹ طھظ… طھط¹ط·ظٹظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط¯ط±ط§ط، ") 
end
end

if text == "طھظپط¹ظٹظ„ ط§ط·ط±ط¯ظ†ظٹ" and Owner(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id.."Kick:Me"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,Text) 
end
if text == "طھط¹ط·ظٹظ„ ط§ط·ط±ط¯ظ†ظٹ" and Owner(msg) then  
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
redis:set(bot_id.."Kick:Me"..msg.chat_id_,true)  
Text = "\nـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ…ط± ط§ط·ط±ط¯ظ†ظٹ"
send(msg.chat_id_, msg.id_,Text) 
end

if text and text:match("^ط±ظپط¹ ط§ظ„ظ‚ظٹظˆط¯ @(.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ط±ظپط¹ ط§ظ„ظ‚ظٹظˆط¯ @(.*)") 
function Function_Co(extra, result, success)
if result.id_ then
if DevCo(msg) then
redis:srem(bot_id.."GBan:User",result.id_)
redis:srem(bot_id.."Ban:User"..msg.chat_id_,result.id_)
redis:srem(bot_id.."Muted:User"..msg.chat_id_,result.id_)
usertext = "\nـپà¼¯â”† ط§ظ„ط¹ط¶ظˆ آ» ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status  = "\nـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ظ‚ظٹظˆط¯ ط¹ظ†ظ‡"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
redis:srem(bot_id.."Ban:User"..msg.chat_id_,result.id_)
redis:srem(bot_id.."Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\nـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ظ‚ظٹظˆط¯ ط¹ظ†ظ‡")  
end
else
Text = "ـپà¼¯â”† ط§ظ„ظ…ط¹ط±ظپ ط؛ظ„ط·"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
end
if text == "ط±ظپط¹ ط§ظ„ظ‚ظٹظˆط¯" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
if DevCo(msg) then
redis:srem(bot_id.."GBan:User",result.sender_user_id_)
redis:srem(bot_id.."Ban:User"..msg.chat_id_,result.sender_user_id_)
redis:srem(bot_id.."Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\nـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ظ‚ظٹظˆط¯ ط¹ظ†ظ‡")  
else
redis:srem(bot_id.."Ban:User"..msg.chat_id_,result.sender_user_id_)
redis:srem(bot_id.."Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\nـپà¼¯â”† ط§ظ„ط¹ط¶ظˆ آ» ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status  = "\nـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ظ‚ظٹظˆط¯ ط¹ظ†ظ‡"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
end
if text and text:match("^ظƒط´ظپ ط§ظ„ظ‚ظٹظˆط¯ @(.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^ظƒط´ظپ ط§ظ„ظ‚ظٹظˆط¯ @(.*)") 
function Function_Co(extra, result, success)
if result.id_ then
if redis:sismember(bot_id.."Muted:User"..msg.chat_id_,result.id_) then
Muted = "ظ…ظƒطھظˆظ…"
else
Muted = "ط؛ظٹط± ظ…ظƒطھظˆظ…"
end
if redis:sismember(bot_id.."Ban:User"..msg.chat_id_,result.id_) then
Ban = "ظ…ط­ط¸ظˆط±"
else
Ban = "ط؛ظٹط± ظ…ط­ط¸ظˆط±"
end
if redis:sismember(bot_id.."GBan:User",result.id_) then
GBan = "ظ…ط­ط¸ظˆط± ط¹ط§ظ…"
else
GBan = "ط؛ظٹط± ظ…ط­ط¸ظˆط± ط¹ط§ظ…"
end
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ظ„ط­ط¸ط± ط§ظ„ط¹ط§ظ… آ» "..GBan.."\nـپà¼¯â”† ط§ظ„ط­ط¸ط± آ» "..Ban.."\nـپà¼¯â”† ط§ظ„ظƒطھظ… آ» "..Muted)
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ظ„ظ…ط¹ط±ظپ ط؛ظ„ط·")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
end

if text == "ظƒط´ظپ ط§ظ„ظ‚ظٹظˆط¯" and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_Co(extra, result, success)
if redis:sismember(bot_id.."Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "ظ…ظƒطھظˆظ…"
else
Muted = "ط؛ظٹط± ظ…ظƒطھظˆظ…"
end
if redis:sismember(bot_id.."Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "ظ…ط­ط¸ظˆط±"
else
Ban = "ط؛ظٹط± ظ…ط­ط¸ظˆط±"
end
if redis:sismember(bot_id.."GBan:User",result.sender_user_id_) then
GBan = "ظ…ط­ط¸ظˆط± ط¹ط§ظ…"
else
GBan = "ط؛ظٹط± ظ…ط­ط¸ظˆط± ط¹ط§ظ…"
end
Textt = "ـپà¼¯â”† ط§ظ„ط­ط¸ط± ط§ظ„ط¹ط§ظ… آ» "..GBan.."\nـپà¼¯â”† ط§ظ„ط­ط¸ط± آ» "..Ban.."\nـپà¼¯â”† ط§ظ„ظƒطھظ… آ» "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
end

if text and text:match("^ط¶ط¹ ط§ط³ظ… (.*)") and Owner(msg) or text and text:match("^ظˆط¶ط¹ ط§ط³ظ… (.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local Name = text:match("^ط¶ط¹ ط§ط³ظ… (.*)") or text:match("^ظˆط¶ط¹ ط§ط³ظ… (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”† ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”† ظ„ظٹط³طھ ظ„ط¯ظٹ طµظ„ط§ط­ظٹط© طھط؛ظٹط± ط§ط³ظ… ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_,msg.id_,"ـپà¼¯â”† طھظ… طھط؛ظٹظٹط± ط§ط³ظ… ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ط§ظ„ظ‰ {["..Name.."]}")  
end
end,nil) 
end

if text ==("ط±ظپط¹ ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡") and Owner(msg) then
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
redis:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
redis:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
redis:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ظ„ط§ طھظˆط¬ط¯ ط§ط¯ظ…ظ†ظٹط© ظ„ظٹطھظ… ط±ظپط¹ظ‡ظ…") 
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ…طھ طھط±ظ‚ظٹط© { "..num2.." } ظ…ظ† ط§ط¯ظ…ظ†ظٹط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
end
end,nil)   
end
if text ==("ط§ظ„ظ…ظ†ط´ط¦") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط­ط³ط§ط¨ ط§ظ„ظ…ظ†ط´ط¦ ظ…ط­ط°ظˆظپ")
return false  
end
local UserName = (b.username_ or "CoTEAM")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ…ظ†ط´ط¦ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text ==("ط±ظپط¹ ط§ظ„ظ…ظ†ط´ط¦") and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط­ط³ط§ط¨ ط§ظ„ظ…ظ†ط´ط¦ ظ…ط­ط°ظˆظپ")
return false  
end
local UserName = (b.username_ or "CoTEAM")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھط±ظ‚ظٹط© ظ…ظ†ط´ط¦ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ ["..b.first_name_.."](T.me/"..UserName..")")  
redis:sadd(bot_id.."Basic:Constructor"..msg.chat_id_,b.id_)
end,nil)   
end,nil)   
end

if text == "ط؛ط§ط¯ط±" then 
if DevBot(msg) and not redis:get(bot_id.."Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… ظ…ط؛ط§ط¯ط±ط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
redis:srem(bot_id.."Chek:Groups",msg.chat_id_)  
end
return false  
end
if text and text:match("^ط؛ط§ط¯ط± (-%d+)$") then
local GP_ID = {string.match(text, "^(ط؛ط§ط¯ط±) (-%d+)$")}
if DevBot(msg) and not redis:get(bot_id.."Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=GP_ID[2],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… ظ…ط؛ط§ط¯ط±ط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡") 
send(GP_ID[2], 0,"ـپà¼¯â”† طھظ… ظ…ط؛ط§ط¯ط±ط© ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ط¨ط§ظ…ط± ظ…ظ† ظ…ط·ظˆط± ط§ظ„ط¨ظˆطھ") 
redis:srem(bot_id.."Chek:Groups",GP_ID[2])  
return false 
end
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ظ‡" and DevCo(msg) then   
redis:del(bot_id.."Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ظ…ط؛ط§ط¯ط±ط© ط§ظ„ط¨ظˆطھ") 
return false 
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ظ‡" and DevCo(msg) then  
redis:set(bot_id.."Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ظ…ط؛ط§ط¯ط±ط© ط§ظ„ط¨ظˆطھ") 
return false 
end
if text == (redis:get(bot_id.."Name:Bot") or "ظƒظˆط±ط¨ظٹظƒط§") then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Namebot = (redis:get(bot_id.."Name:Bot") or "ظƒظˆط±ط¨ظٹظƒط§")
local namebot = {
"ط¹ظ…ط±ظٹ ظپط¯ط§ظƒ "..Namebot.. " ظƒظˆظ„ ط­ط¨ ",
"ظƒظˆظ„ ط­ط¨ظٹط¨ظٹ طں ط§ظ†ظٹ "..Namebot,
'ظ‡ط§ ط­ط¨ظٹ ظˆظٹط§ظƒ ظ…ظƒطھط¨ ط¦ظ„ط³ظٹط¯ .',
'ط§ظ„ظˆ ط§ظ„ظˆ ط±ط¯ ظ…ط®ظ†ظˆظƒ',
'ظ‡ط§ ظٹط­ظ„ظˆ ظƒظˆظ„',
'ط¹ظ…ط±ظٹ ط§ظ„ط­ظ„ظˆ',
'طµط§ط¹ط¯ ط§طھطµط§ظ„ ظˆظٹط§ ط§ظ„ط­ط¨ ط¯ظ‚ظٹظ‚ط© ظˆط¬ظٹظƒ ًںککًں’ک',
'ظ…ط´ط؛ظˆظ„ ط­ط§ظ„ظٹط§ظ‹ ًںŒڑًںŒ¸',
'ظ„ط§ط¨ط³ظƒ ظ„طھظ„ط­',
" ظ‡ط§ظٹط±ظˆط­ظٹطں "..Namebot,
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end

if text == "ط¨ظˆطھ" then
Namebot = (redis:get(bot_id.."Name:Bot") or "ظƒظˆط±ط¨ظٹظƒط§")
send(msg.chat_id_, msg.id_,"ط§ط³ظ…ظٹ ط§ظ„ظ‚ظ…ظٹظ„ ["..Namebot.."] ") 
end
if text == "طھط؛ظٹط± ط§ط³ظ… ط§ظ„ط¨ظˆطھ" or text == "طھط؛ظٹظٹط± ط§ط³ظ… ط§ظ„ط¨ظˆطھ" or text == "ط­ط°ظپ ط§ط³ظ… ط§ظ„ط¨ظˆطھ" then 
if DevCo(msg) then
redis:setex(bot_id.."Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„ط§ط³ظ… ط§ظ„ط§ظ† ")  
end
return false
end

if text ==("ظ…ط³ط­ ط§ظ„ظ…ط·ط±ظˆط¯ظٹظ†") and Addictive(msg) then    
local function delbans(extra, result)  
if not msg.can_be_deleted_ == true then  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ ط§ط¯ظ…ظ† ظ‡ظ†ط§") 
return false
end  
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1  
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil)  
end  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط­ط¸ط± ط¹ظ† *~ "..num.." ~* ط§ط´ط®ط§طµ ") 
end    
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
if text=="ط§ط°ط§ط¹ظ‡ ط®ط§طµ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط³ظˆط§ط، ~ { ظ…ظ„طµظ‚, ظ…طھط­ط±ظƒظ‡, طµظˆط±ظ‡, ط±ط³ط§ظ„ظ‡ }\nـپà¼¯â”†ظ„ظ„ط®ط±ظˆط¬ ط§ط±ط³ظ„ ط§ظ„ط؛ط§ط، ") 
return false
end 
if text=="ط§ط°ط§ط¹ظ‡" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط³ظˆط§ط، ~ { ظ…ظ„طµظ‚, ظ…طھط­ط±ظƒظ‡, طµظˆط±ظ‡, ط±ط³ط§ظ„ظ‡ }\nـپà¼¯â”†ظ„ظ„ط®ط±ظˆط¬ ط§ط±ط³ظ„ ط§ظ„ط؛ط§ط، ") 
return false
end  
if text=="ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھط«ط¨ظٹطھ" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط³ظˆط§ط، ~ { ظ…ظ„طµظ‚, ظ…طھط­ط±ظƒظ‡, طµظˆط±ظ‡, ط±ط³ط§ظ„ظ‡ }\nـپà¼¯â”†ظ„ظ„ط®ط±ظˆط¬ ط§ط±ط³ظ„ ط§ظ„ط؛ط§ط، ") 
return false
end  
if text=="ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„طھظˆط¬ظٹظ‡ ط§ظ„ط§ظ†") 
return false
end 
if text=="ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡ ط®ط§طµ" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„طھظˆط¬ظٹظ‡ ط§ظ„ط§ظ†") 
return false
end 

if text == "طھظپط¹ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡" and DevCo(msg) then  
redis:del(bot_id.."Status:Bc") 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ " ) 
return false
end 
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡" and DevCo(msg) then  
redis:set(bot_id.."Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡") 
return false
end 

if text == "ط§ظ„ط§ط¹ط¯ط§ط¯ط§طھ" and Addictive(msg) then    
if redis:get(bot_id.."lockpin"..msg.chat_id_) then    
lock_pin = "âœ“"
else 
lock_pin = "âœک"    
end
if redis:get(bot_id.."Lock:tagservr"..msg.chat_id_) then    
lock_tagservr = "âœ“"
else 
lock_tagservr = "âœک"    
end
if redis:get(bot_id.."Lock:text"..msg.chat_id_) then    
lock_text = "âœ“"
else 
lock_text = "âœک"    
end
if redis:get(bot_id.."Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "âœ“"
else 
lock_add = "âœک"    
end    
if redis:get(bot_id.."Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "âœ“"
else 
lock_join = "âœک"    
end    
if redis:get(bot_id.."Lock:edit"..msg.chat_id_) then    
lock_edit = "âœ“"
else 
lock_edit = "âœک"    
end
if redis:get(bot_id.."Get:Welcome:Group"..msg.chat_id_) then
welcome = "âœ“"
else 
welcome = "âœک"    
end
if redis:hget(bot_id.."flooding:settings:"..msg.chat_id_, "flood") == "kick" then     
flood = "ط¨ط§ظ„ط·ط±ط¯"     
elseif redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "keed" then     
flood = "ط¨ط§ظ„طھظ‚ظٹط¯"     
elseif redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "mute" then     
flood = "ط¨ط§ظ„ظƒطھظ…"           
elseif redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "del" then     
flood = "ط¨ط§ظ„ظ…ط³ط­"           
else     
flood = "âœک"     
end
if redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "âœ“" 
elseif redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "ط¨ط§ظ„طھظ‚ظٹط¯"   
elseif redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "ط¨ط§ظ„ط·ط±ط¯"   
else
lock_photo = "âœک"   
end    
if redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "âœ“" 
elseif redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_phon = "âœک"    
end    
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "del" then
lock_links = "âœ“"
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_links = "âœک"    
end
if redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "âœ“"
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "ط¨ط§ظ„ظƒطھظ…"   
elseif redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_cmds = "âœک"    
end
if redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "âœ“"
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_user = "âœک"    
end
if redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "âœ“"
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_hash = "âœک"    
end
if redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "âœ“"
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_muse = "âœک"    
end 
if redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "âœ“"
elseif redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_ved = "âœک"    
end
if redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "âœ“"
elseif redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_gif = "âœک"    
end
if redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "âœ“"
elseif redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "ط¨ط§ظ„طھظ‚ظٹط¯ "    
elseif redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "ط¨ط§ظ„ظƒطھظ… "    
elseif redis:get(bot_id.."Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_ste = "âœک"    
end
if redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "âœ“"
elseif redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_geam = "âœک"    
end    
if redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "âœ“"
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_vico = "âœک"    
end    
if redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "âœ“"
elseif redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "ط¨ط§ظ„طھظ‚ظٹط¯"
elseif redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "ط¨ط§ظ„ط·ط±ط¯"
else
lock_inlin = "âœک"
end
if redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "âœ“"
elseif redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_fwd = "âœک"    
end    
if redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "del" then
lock_file = "âœ“"
elseif redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_file = "âœک"    
end    
if redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "âœ“"
elseif redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_self = "âœک"    
end
if redis:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "âœ“"
elseif redis:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "ط¨ط§ظ„طھظ‚ظٹط¯"   
elseif redis:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_bots = "âœک"    
end
if redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "âœ“"
elseif redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_mark = "âœک"    
end
if redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "del" then    
lock_spam = "âœ“"
elseif redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "ط¨ط§ظ„طھظ‚ظٹط¯"    
elseif redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "ط¨ط§ظ„ظƒطھظ…"    
elseif redis:get(bot_id.."Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "ط¨ط§ظ„ط·ط±ط¯"    
else
lock_spam = "âœک"    
end        
if not redis:get(bot_id.."Reply:Manager"..msg.chat_id_) then
rdmder = "âœ“"
else
rdmder = "âœک"
end
if not redis:get(bot_id.."Reply:Sudo"..msg.chat_id_) then
rdsudo = "âœ“"
else
rdsudo = "âœک"
end
if not redis:get(bot_id.."Lock:ID:Bot"..msg.chat_id_)  then
idgp = "âœ“"
else
idgp = "âœک"
end
if not redis:get(bot_id.."Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "âœ“"
else
idph = "âœک"
end
if not redis:get(bot_id.."Lock:kick"..msg.chat_id_)  then
setadd = "âœ“"
else
setadd = "âœک"
end
if not redis:get(bot_id.."Lock:Add:Bot"..msg.chat_id_)  then
banm = "âœ“"
else
banm = "âœک"
end
if not redis:get(bot_id.."Kick:Me"..msg.chat_id_) then
kickme = "âœ“"
else
kickme = "âœک"
end
Num_Flood = redis:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\nـپà¼¯â”†ط§ط§ط¹ط¯ط§ط¯ط§طھ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ "..
"\nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ "..
"\nـپà¼¯â”†ط¹ظ„ط§ظ…ط© ط§ظ„ {âœ“} طھط¹ظ†ظٹ ظ…ظپط¹ظ„"..
"\nـپà¼¯â”†ط¹ظ„ط§ظ…ط© ط§ظ„ {âœک} طھط¹ظ†ظٹ ظ…ط¹ط·ظ„"..
"\nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ "..
"\nـپà¼¯â”†ط§ظ„ط±ظˆط§ط¨ط· آ» "..lock_links..
"\n".."ـپà¼¯â”†ط§ظ„ظ…ط¹ط±ظپط§طھ آ» "..lock_user..
"\n".."ـپà¼¯â”†ط§ظ„طھط§ظƒ آ» "..lock_hash..
"\n".."ـپà¼¯â”†ط§ظ„ط¨ظˆطھط§طھ آ» "..lock_bots..
"\n".."ـپà¼¯â”†ط§ظ„طھظˆط¬ظٹظ‡ آ» "..lock_fwd..
"\n".."ـپà¼¯â”†ط§ظ„طھط«ط¨ظٹطھ آ» "..lock_pin..
"\n".."ـپà¼¯â”†ط§ظ„ط§ط´ط¹ط§ط±ط§طھ آ» "..lock_tagservr..
"\n".."ـپà¼¯â”†ط§ظ„ظ…ط§ط±ظƒط¯ظˆظ† آ» "..lock_mark..
"\n".."ـپà¼¯â”†ط§ظ„طھط¹ط¯ظٹظ„ آ» "..lock_edit..
"\nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ "..
"\n".."ـپà¼¯â”†ط§ظ„ظƒظ„ط§ظٹط´ آ» "..lock_spam..
"\n".."ـپà¼¯â”†ط§ظ„ظƒظٹط¨ظˆط±ط¯ آ» "..lock_inlin..
"\n".."ـپà¼¯â”†ط§ظ„ط§ط؛ط§ظ†ظٹ آ» "..lock_vico..
"\n".."ـپà¼¯â”†ط§ظ„ظ…طھط­ط±ظƒظ‡ آ» "..lock_gif..
"\n".."ـپà¼¯â”†ط§ظ„ظ…ظ„ظپط§طھ آ» "..lock_file..
"\n".."ـپà¼¯â”†ط§ظ„ط¯ط±ط¯ط´ظ‡ آ» "..lock_text..
"\n".."ـپà¼¯â”†ط§ظ„ظپظٹط¯ظٹظˆ آ» "..lock_ved..
"\n".."ـپà¼¯â”†ط§ظ„طµظˆط± آ» "..lock_photo..
"\nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ "..
"\n".."ـپà¼¯â”†ط§ظ„طµظˆطھ آ» "..lock_muse..
"\n".."ـپà¼¯â”†ط§ظ„ظ…ظ„طµظ‚ط§طھ آ» "..lock_ste..
"\n".."ـپà¼¯â”†ط§ظ„ط¬ظ‡ط§طھ آ» "..lock_phon..
"\n".."ـپà¼¯â”†ط§ظ„ط¯ط®ظˆظ„ آ» "..lock_join..
"\n".."ـپà¼¯â”†ط§ظ„ط§ط¶ط§ظپظ‡ آ» "..lock_add..
"\n".."ـپà¼¯â”†ط§ظ„ط³ظٹظ„ظپظٹ آ» "..lock_self..
"\n".."ـپà¼¯â”†ط§ظ„ط§ظ„ط¹ط§ط¨ آ» "..lock_geam..
"\n".."ـپà¼¯â”†ط§ظ„طھظƒط±ط§ط± آ» "..flood..
"\n".."ـپà¼¯â”†ط§ظ„طھط±ط­ظٹط¨ آ» "..welcome..
"\n".."ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„طھظƒط±ط§ط± آ» "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text)     
end    
if text == "طھط¹ط·ظٹظ„ ط§ظˆط§ظ…ط± ط§ظ„طھط­ط´ظٹط´" and Owner(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظˆط§ظ…ط± ط§ظ„طھط­ط´ظٹط´')
redis:set(bot_id.."Fun_Bots"..msg.chat_id_,"true")
end
if text == "طھظپط¹ظٹظ„ ط§ظˆط§ظ…ط± ط§ظ„طھط­ط´ظٹط´" and Owner(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظˆط§ظ…ط± ط§ظ„طھط­ط´ظٹط´')
redis:del(bot_id.."Fun_Bots"..msg.chat_id_)
end

if text == 'طھظپط¹ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ' and Owner(msg) then 
  if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id..'Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ') 
end
if text == 'طھط¹ط·ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id..'Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ') 
end
if text == 'طھظپط¹ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ ط¨ط§ظ„طµظˆط±ظ‡' and Owner(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:del(bot_id..'Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ ط¨ط§ظ„طµظˆط±ظ‡') 
end
if text == 'طھط¹ط·ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ ط¨ط§ظ„طµظˆط±ظ‡' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:set(bot_id..'Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ ط¨ط§ظ„طµظˆط±ظ‡') 
end
if text == 'طھط¹ظٹظ† ط§ظ„ط§ظٹط¯ظٹ' and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
redis:setex(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
ـپà¼¯â”† ط§ط±ط³ظ„ ط§ظ„ط§ظ† ط§ظ„ظ†طµ
ـپà¼¯â”† ظٹظ…ظƒظ†ظƒ ط§ط¶ط§ظپظ‡ :
- `#username` > ط§ط³ظ… ط§ظ„ظ…ط³طھط®ط¯ظ…
- `#msgs` > ط¹ط¯ط¯ ط±ط³ط§ط¦ظ„ ط§ظ„ظ…ط³طھط®ط¯ظ…
- `#photos` > ط¹ط¯ط¯ طµظˆط± ط§ظ„ظ…ط³طھط®ط¯ظ…
- `#id` > ط§ظٹط¯ظٹ ط§ظ„ظ…ط³طھط®ط¯ظ…
- `#auto` > طھظپط§ط¹ظ„ ط§ظ„ظ…ط³طھط®ط¯ظ…
- `#stast` > ظ…ظˆظ‚ط¹ ط§ظ„ظ…ط³طھط®ط¯ظ… 
- `#edit` > ط¹ط¯ط¯ ط§ظ„ط³ط­ظƒط§طھ
- `#game` > ط§ظ„ظ…ط¬ظˆظ‡ط±ط§طھ
- `#AddMem` > ط¹ط¯ط¯ ط§ظ„ط¬ظ‡ط§طھ
- `#Description` > طھط¹ظ„ظٹظ‚ ط§ظ„طµظˆط±ظ‡
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'ط­ط°ظپ ط§ظ„ط§ظٹط¯ظٹ' or text == 'ظ…ط³ط­ ط§ظ„ط§ظٹط¯ظٹ' then
if Owner(msg) then
redis:del(bot_id.."Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© ظƒظ„ظٹط´ط© ط§ظ„ط§ظٹط¯ظٹ ')
end
return false  
end 

if redis:get(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'ط§ظ„ط؛ط§ط،' then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، طھط¹ظٹظ† ط§ظ„ط§ظٹط¯ظٹ") 
redis:del(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
redis:del(bot_id.."Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
redis:set(bot_id.."Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھط¹ظٹظ† ط§ظ„ط§ظٹط¯ظٹ')    
end

if text == 'ط§ظٹط¯ظٹ' and tonumber(msg.reply_to_message_id_) == 0 and not redis:get(bot_id..'Lock:ID:Bot'..msg.chat_id_) then
if not redis:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
redis:sadd(bot_id.."Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ظ„ط§ ظٹظˆط¬ط¯'
end
local Id = msg.sender_user_id_
local NumMsg = redis:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = redis:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = redis:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = redis:get(bot_id.."Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'طµظˆط±طھظƒ ظپط¯ط´ظٹ ًںککًںک”â‌¤ï¸ڈ',
"طµط§ط±ظ„ظƒ ط´ظƒط¯ ظ…ط®ظ„ظٹظ‡ ",
"ظˆظپط§ظ„ظ„ظ‡ ًںک”ًں’ک",
"ظƒط´ط®ظ‡ ط¨ط±ط¨ ًںک‰ًں’ک",
"ط¯ط؛ظٹط±ظ‡ ط´ط¨ظٹ ظ‡ط° ًںک’",
"ط¹ظ…ط±ظٹ ط§ظ„ط­ظ„ظˆظٹظ† ًں’ک",
}
local Description = Texting[math.random(#Texting)]
local get_id = redis:get(bot_id.."Klesh:Id:Bot"..msg.chat_id_)
if not redis:get(bot_id..'Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,'ـپà¼¯â”†'..Description..'\nـپà¼¯â”†ط§ظٹط¯ظٹظƒ آ» '..Id..'\nـپà¼¯â”†ظ…ط¹ط±ظپظƒ آ» '..UserName_User..'\nـپà¼¯â”†ط±طھط¨طھظƒ آ» '..Status_Gps..'\nـپà¼¯â”†ط±ط³ط§ط¦ظ„ظƒ آ» '..NumMsg..'\nـپà¼¯â”†ط§ظ„ط³ط­ظƒط§طھ آ» '..message_edit..' \nـپà¼¯â”†طھطھظپط§ط¹ظ„ظƒ آ» '..TotalMsg..'\nـپà¼¯â”† ظ…ط¬ظˆظ‡ط±ط§طھظƒ آ» '..Num_Games)
end
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹظƒ طµظˆط±ظ‡ \n'..'\n*ـپà¼¯â”†ط§ظٹط¯ظٹظƒ آ» '..Id..'\nـپà¼¯â”†ظ…ط¹ط±ظپظƒ آ»* ['..UserName_User..']*\nـپà¼¯â”†ط±طھط¨طھظƒ آ» '..Status_Gps..'\nـپà¼¯â”†ط±ط³ط§ط¦ظ„ظƒ آ» '..NumMsg..'\nـپà¼¯â”†ط§ظ„ط³ط­ظƒط§طھ آ» '..message_edit..' \nـپà¼¯â”†طھطھظپط§ط¹ظ„ظƒ آ» '..TotalMsg..'\nـپà¼¯â”† ظ…ط¬ظˆظ‡ط±ط§طھظƒ آ» '..Num_Games..'*') 
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
send(msg.chat_id_, msg.id_,'['..get_id..']') 
else
send(msg.chat_id_, msg.id_,'\n*ـپà¼¯â”†ط§ظٹط¯ظٹظƒ آ» '..Id..'\nـپà¼¯â”†ظ…ط¹ط±ظپظƒ آ»* ['..UserName_User..']*\nـپà¼¯â”†ط±طھط¨طھظƒ آ» '..Status_Gps..'\nـپà¼¯â”†ط±ط³ط§ط¦ظ„ظƒ آ» '..NumMsg..'\nـپà¼¯â”†ط§ظ„ط³ط­ظƒط§طھ آ» '..message_edit..' \nـپà¼¯â”†طھطھظپط§ط¹ظ„ظƒ آ» '..TotalMsg..'\nـپà¼¯â”† ظ…ط¬ظˆظ‡ط±ط§طھظƒ آ» '..Num_Games..'*') 
end
end
end,nil)   
end,nil)   
end
end
if text == 'طھط¹ط·ظٹظ„ ط§ظ„طھظ†ط¸ظٹظپ' and BasicConstructor(msg) then   
if redis:get(bot_id..'Lock:delmsg'..msg.chat_id_)  then
redis:del(bot_id..'Lock:delmsg'..msg.chat_id_) 
Text = '\nـپà¼¯â”† طھظ… طھط¹ط·ظٹظ„ ط§ظ„طھظ†ط¸ظٹظپ' 
else
Text = '\nـپà¼¯â”†ط¨ط§ظ„طھط§ظƒظٹط¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„طھظ†ط¸ظٹظپ'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'طھظپط¹ظٹظ„ ط§ظ„طھظ†ط¸ظٹظپ' and BasicConstructor(msg) then  
if not redis:get(bot_id..'Lock:delmsg'..msg.chat_id_)  then
redis:set(bot_id..'Lock:delmsg'..msg.chat_id_,true) 
Text = '\nـپà¼¯â”† طھظ… طھظپط¹ظٹظ„ ط§ظ„طھظ†ط¸ظٹظپ' 
else
Text = '\nـپà¼¯â”†ط¨ط§ظ„طھط§ظƒظٹط¯ طھظ… طھظپط¹ظٹظ„ ط§ظ„طھظ†ط¸ظٹظپ'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match('^طھظ†ط¸ظٹظپ (%d+)$') and Constructor(msg) and redis:get(bot_id..'Lock:delmsg'..msg.chat_id_) then                
if not redis:get(bot_id..'Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then           
local Number = tonumber(text:match('^طھظ†ط¸ظٹظپ (%d+)$')) 
if Number > 1000 then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھط³طھط·ظٹط¹ طھظ†ط¶ظٹظپ ط§ظƒط«ط± ظ…ظ† *~ 1000* ط±ط³ط§ظ„ظ‡') 
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھظ†ط¸ظٹظپ *~ '..Number..'* ط±ط³ط§ظ„ظ‡ .')  
redis:setex(bot_id..'Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end
end


if text == 'ط§ظٹط¯ظٹ' and tonumber(msg.reply_to_message_id_) > 0 and not redis:get(bot_id..'Lock:ID:Bot'..msg.chat_id_) then
function Function_Co(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”† ط§ظ„ط­ط³ط§ط¨ ظ…ط­ط°ظˆظپ ظ„ط§ طھظˆط¬ط¯ ظ…ط¹ظ„ظˆظ…ط§طھظ‡ ')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ظ„ط§ ظٹظˆط¬ط¯'
end
local Id = data.id_
local NumMsg = redis:get(bot_id..'messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = redis:get(bot_id..'message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = redis:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = redis:get(bot_id.."Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*ـپà¼¯â”†ط§ظٹط¯ظٹظ‡ - '..Id..'\nـپà¼¯â”†ط±ط³ط§ط¦ظ„ظ‡ - '..NumMsg..'\nـپà¼¯â”†ظ…ط¹ط±ظپظ‡ - *['..UserName_User..']*\nـپà¼¯â”†طھظپط§ط¹ظ„ظ‡ - '..TotalMsg..'\nـپà¼¯â”†ط±طھط¨طھظ‡ - '..Status_Gps..'\nـپà¼¯â”†طھط¹ط¯ظٹظ„ط§طھظ‡ - '..message_edit..'\nـپà¼¯â”†ط¬ظ‡ط§طھظ‡ - '..Add_Mem..'\nـپà¼¯â”†ظ†ظˆط¹ ط§ظ„ظƒط´ظپ - ط¨ط§ظ„ط±ط¯ \n*') 
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Co, nil)
return false
end

if text and text:match("^ط§ظٹط¯ظٹ @(.*)$")  and not redis:get(bot_id..'Lock:ID:Bot'..msg.chat_id_) then
local username = text:match("^ط§ظٹط¯ظٹ @(.*)$") 
function Function_Co(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'ظ„ط§ ظٹظˆط¬ط¯'
end
local Id = data.id_
local NumMsg = redis:get(bot_id..'messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = redis:get(bot_id..'message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = redis:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = redis:get(bot_id.."Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*ـپà¼¯â”†ط§ظٹط¯ظٹظ‡ - '..Id..'\nـپà¼¯â”†ط±ط³ط§ط¦ظ„ظ‡ - '..NumMsg..'\nـپà¼¯â”†ظ…ط¹ط±ظپظ‡ - *['..UserName_User..']*\nـپà¼¯â”†طھظپط§ط¹ظ„ظ‡ - '..TotalMsg..'\nـپà¼¯â”†ط±طھط¨طھظ‡ - '..Status_Gps..'\nـپà¼¯â”†طھط¹ط¯ظٹظ„ط§طھظ‡ - '..message_edit..'\nـپà¼¯â”†ط¬ظ‡ط§طھظ‡ - '..Add_Mem..'\nـپà¼¯â”†ظ†ظˆط¹ ط§ظ„ظƒط´ظپ - ط¨ط§ظ„ظ…ط¹ط±ظپ \n*') 
end,nil)   
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط­ط³ط§ط¨ ط¨ظ‡ط§ط°ط§ ط§ظ„ظ…ط¹ط±ظپ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Co, nil)
return false
end
if text == "ط³ظ…ط§ظٹظ„ط§طھ" or text == "ط³ظ…ط§ظٹظ„" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
redis:del(bot_id.."Tshak:Set:Sma"..msg.chat_id_)
Random = {"ًںچڈ","ًںچژ","ًںچگ","ًںچٹ","ًںچ‹","ًںچ‰","ًںچ‡","ًںچ“","ًںچˆ","ًںچ’","ًںچ‘","ًںچچ","ًں¥¥","ًں¥‌","ًںچ…","ًںچ†","ًں¥‘","ًں¥¦","ًں¥’","ًںŒ¶","ًںŒ½","ًں¥•","ًں¥”","ًں¥–","??","ًںچ‍","ًں¥¨","ًںچں","ًں§€","ًں¥ڑ","ًںچ³","ًں¥“","ًں¥©","ًںچ—","ًںچ–","ًںŒ­","ًںچ”","ًںچ ","ًںچ•","ًں¥ھ","ًں¥™","âک•ï¸ڈ","ًںچµ","ًں¥¤","ًںچ¶","ًںچ؛","ًںچ»","ًںڈ€","âڑ½ï¸ڈ","ًںڈˆ","âڑ¾ï¸ڈ","ًںژ¾","ًںڈگ","ًںڈ‰","ًںژ±","ًںڈ“","ًںڈ¸","ًں¥…","ًںژ°","ًںژ®","ًںژ³","ًںژ¯","ًںژ²","ًںژ»","ًںژ¸","ًںژ؛","ًں¥پ","ًںژ¹","ًںژ¼","ًںژ§","ًںژ¤","ًںژ¬","ًںژ¨","ًںژ­","ًںژھ","ًںژں","âŒ”","ًںژ—","ًںڈµ","âŒ”","ًںڈ†","ًں¥Œ","ًں›·","ًںڑ—","ًںڑŒ","ًںڈژ","ًںڑ“","ًںڑ‘","ًںڑڑ","ًںڑ›","ًںڑœ","ًں‡®ًں‡¶","âڑ”","ًں›،","ًں”®","ًںŒ،","ًں’£","âŒ”","ًں“چ","ًں““","ًں“—","âŒ”","ًں“…","ًں“ھ","âŒ”","âŒ”","ًں“­","âڈ°","ًں“؛","ًںژڑ","âکژï¸ڈ","âŒ”"}
SM = Random[math.random(#Random)]
redis:set(bot_id.."Tshak:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹط¯ط² ظ‡ط§ط°ط§ ط§ظ„ط³ظ…ط§ظٹظ„ ? ~ {`"..SM.."`}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak:Random:Sm"..msg.chat_id_) or "").."" and not redis:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then
if not redis:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ط³ظ…ط§ظٹظ„ , ط³ظ…ط§ظٹظ„ط§طھ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "ط§ظ„ط§ط³ط±ط¹" or text == "طھط±طھظٹط¨" then
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
redis:del(bot_id.."Tshak:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"ط³ط­ظˆط±","ط³ظٹط§ط±ظ‡","ط§ط³طھظ‚ط¨ط§ظ„","ظ‚ظ†ظپظ‡","ط§ظٹظپظˆظ†","ط¨ط²ظˆظ†ظ‡","ظ…ط·ط¨ط®","ظƒط±ط³طھظٹط§ظ†ظˆ","ط¯ط¬ط§ط¬ظ‡","ظ…ط¯ط±ط³ظ‡","ط§ظ„ظˆط§ظ†","ط؛ط±ظپظ‡","ط«ظ„ط§ط¬ظ‡","ظƒظ‡ظˆظ‡","ط³ظپظٹظ†ظ‡","ط§ظ„ط¹ط±ط§ظ‚","ظ…ط­ط·ظ‡","ط·ظٹط§ط±ظ‡","ط±ط§ط¯ط§ط±","ظ…ظ†ط²ظ„","ظ…ط³طھط´ظپظ‰","ظƒظ‡ط±ط¨ط§ط،","طھظپط§ط­ظ‡","ط§ط®ط·ط¨ظˆط·","ط³ظ„ظ…ظˆظ†","ظپط±ظ†ط³ط§","ط¨ط±طھظ‚ط§ظ„ظ‡","طھظپط§ط­","ظ…ط·ط±ظ‚ظ‡","ط¨طھظٹطھظ‡","ظ„ظ‡ط§ظ†ظ‡","ط´ط¨ط§ظƒ","ط¨ط§طµ","ط³ظ…ظƒظ‡","ط°ط¨ط§ط¨","طھظ„ظپط§ط²","ط­ط§ط³ظˆط¨","ط§ظ†طھط±ظ†ظٹطھ","ط³ط§ط­ظ‡","ط¬ط³ط±"};
name = KlamSpeed[math.random(#KlamSpeed)]
redis:set(bot_id.."Tshak:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"ط³ط­ظˆط±","ط³ ط± ظˆ ط­")
name = string.gsub(name,"ط³ظٹط§ط±ظ‡","ظ‡ ط± ط³ ظٹ ط§")
name = string.gsub(name,"ط§ط³طھظ‚ط¨ط§ظ„","ظ„ ط¨ ط§ طھ ظ‚ ط³ ط§")
name = string.gsub(name,"ظ‚ظ†ظپظ‡","ظ‡ ظ‚ ظ† ظپ")
name = string.gsub(name,"ط§ظٹظپظˆظ†","ظˆ ظ† ظپ ط§")
name = string.gsub(name,"ط¨ط²ظˆظ†ظ‡","ط² ظˆ ظ‡ ظ†")
name = string.gsub(name,"ظ…ط·ط¨ط®","ط® ط¨ ط· ظ…")
name = string.gsub(name,"ظƒط±ط³طھظٹط§ظ†ظˆ","ط³ طھ ط§ ظ† ظˆ ظƒ ط± ظٹ")
name = string.gsub(name,"ط¯ط¬ط§ط¬ظ‡","ط¬ ط¬ ط§ ط¯ ظ‡")
name = string.gsub(name,"ظ…ط¯ط±ط³ظ‡","ظ‡ ظ… ط¯ ط± ط³")
name = string.gsub(name,"ط§ظ„ظˆط§ظ†","ظ† ط§ ظˆ ط§ ظ„")
name = string.gsub(name,"ط؛ط±ظپظ‡","ط؛ ظ‡ ط± ظپ")
name = string.gsub(name,"ط«ظ„ط§ط¬ظ‡","ط¬ ظ‡ طھ ظ„ ط§")
name = string.gsub(name,"ظƒظ‡ظˆظ‡","ظ‡ ظƒ ظ‡ ظˆ")
name = string.gsub(name,"ط³ظپظٹظ†ظ‡","ظ‡ ظ† ظپ ظٹ ط³")
name = string.gsub(name,"ط§ظ„ط¹ط±ط§ظ‚","ظ‚ ط¹ ط§ ظ„ ط± ط§")
name = string.gsub(name,"ظ…ط­ط·ظ‡","ظ‡ ط· ظ… ط­")
name = string.gsub(name,"ط·ظٹط§ط±ظ‡","ط± ط§ ط· ظٹ ظ‡")
name = string.gsub(name,"ط±ط§ط¯ط§ط±","ط± ط§ ط± ط§ ط¯")
name = string.gsub(name,"ظ…ظ†ط²ظ„","ظ† ط² ظ… ظ„")
name = string.gsub(name,"ظ…ط³طھط´ظپظ‰","ظ‰ ط´ ط³ ظپ طھ ظ…")
name = string.gsub(name,"ظƒظ‡ط±ط¨ط§ط،","ط± ط¨ ظƒ ظ‡ ط§ ط،")
name = string.gsub(name,"طھظپط§ط­ظ‡","ط­ ظ‡ ط§ طھ ظپ")
name = string.gsub(name,"ط§ط®ط·ط¨ظˆط·","ط· ط¨ ظˆ ط§ ط® ط·")
name = string.gsub(name,"ط³ظ„ظ…ظˆظ†","ظ† ظ… ظˆ ظ„ ط³")
name = string.gsub(name,"ظپط±ظ†ط³ط§","ظ† ظپ ط± ط³ ط§")
name = string.gsub(name,"ط¨ط±طھظ‚ط§ظ„ظ‡","ط± طھ ظ‚ ط¨ ط§ ظ‡ ظ„")
name = string.gsub(name,"طھظپط§ط­","ط­ ظپ ط§ طھ")
name = string.gsub(name,"ظ…ط·ط±ظ‚ظ‡","ظ‡ ط· ظ… ط± ظ‚")
name = string.gsub(name,"ط¨طھظٹطھظ‡","ط¨ طھ طھ ظٹ ظ‡")
name = string.gsub(name,"ظ„ظ‡ط§ظ†ظ‡","ظ‡ ظ† ظ„ ظ‡ ظ„")
name = string.gsub(name,"ط´ط¨ط§ظƒ","ط¨ ط´ ط§ ظƒ")
name = string.gsub(name,"ط¨ط§طµ","طµ ط§ ط¨")
name = string.gsub(name,"ط³ظ…ظƒظ‡","ظƒ ط³ ظ… ظ‡")
name = string.gsub(name,"ط°ط¨ط§ط¨","ط¨ ط§ ط¨ ط°")
name = string.gsub(name,"طھظ„ظپط§ط²","طھ ظپ ظ„ ط² ط§")
name = string.gsub(name,"ط­ط§ط³ظˆط¨","ط³ ط§ ط­ ظˆ ط¨")
name = string.gsub(name,"ط§ظ†طھط±ظ†ظٹطھ","ط§ طھ ظ† ط± ظ† ظٹ طھ")
name = string.gsub(name,"ط³ط§ط­ظ‡","ط­ ط§ ظ‡ ط³")
name = string.gsub(name,"ط¬ط³ط±","ط± ط¬ ط³")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹط±طھط¨ظ‡ط§ ~ {"..name.."}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak:Klam:Speed"..msg.chat_id_) or "").."" and not redis:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then
if not redis:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ط§ظ„ط§ط³ط±ط¹ , طھط±طھظٹط¨ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Speed:Tr"..msg.chat_id_,true)
end 

if text == "ط­ط²ظˆط±ظ‡" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
redis:del(bot_id.."Tshak:Set:Hzora"..msg.chat_id_)
Hzora = {"ط§ظ„ط¬ط±ط³","ط¹ظ‚ط±ط¨ ط§ظ„ط³ط§ط¹ظ‡","ط§ظ„ط³ظ…ظƒ","ط§ظ„ظ…ط·ط±","5","ط§ظ„ظƒطھط§ط¨","ط§ظ„ط¨ط³ظ…ط§ط±","7","ط§ظ„ظƒط¹ط¨ظ‡","ط¨ظٹطھ ط§ظ„ط´ط¹ط±","ظ„ظ‡ط§ظ†ظ‡","ط§ظ†ط§","ط§ظ…ظٹ","ط§ظ„ط§ط¨ط±ظ‡","ط§ظ„ط³ط§ط¹ظ‡","22","ط؛ظ„ط·","ظƒظ… ط§ظ„ط³ط§ط¹ظ‡","ط§ظ„ط¨ظٹطھظ†ط¬ط§ظ†","ط§ظ„ط¨ظٹط¶","ط§ظ„ظ…ط±ط§ظٹظ‡","ط§ظ„ط¶ظˆط،","ط§ظ„ظ‡ظˆط§ط،","ط§ظ„ط¶ظ„","ط§ظ„ط¹ظ…ط±","ط§ظ„ظ‚ظ„ظ…","ط§ظ„ظ…ط´ط·","ط§ظ„ط­ظپط±ظ‡","ط§ظ„ط¨ط­ط±","ط§ظ„ط«ظ„ط¬","ط§ظ„ط§ط³ظپظ†ط¬","ط§ظ„طµظˆطھ","ط¨ظ„ظ…"};
name = Hzora[math.random(#Hzora)]
redis:set(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"ط§ظ„ط¬ط±ط³","ط´ظٹط¦ ط§ط°ط§ ظ„ظ…ط³طھظ‡ طµط±ط® ظ…ط§ ظ‡ظˆظ‡ طں")
name = string.gsub(name,"ط¹ظ‚ط±ط¨ ط§ظ„ط³ط§ط¹ظ‡","ط§ط®ظˆط§ظ† ظ„ط§ ظٹط³طھط·ظٹط¹ط§ظ† طھظ…ط¶ظٹظ‡ ط§ظƒط«ط± ظ…ظ† ط¯ظ‚ظٹظ‚ظ‡ ظ…ط¹ط§ ظپظ…ط§ ظ‡ظ…ط§ طں")
name = string.gsub(name,"ط§ظ„ط³ظ…ظƒ","ظ…ط§ ظ‡ظˆ ط§ظ„ط­ظٹظˆط§ظ† ط§ظ„ط°ظٹ ظ„ظ… ظٹطµط¹ط¯ ط§ظ„ظ‰ ط³ظپظٹظ†ط© ظ†ظˆط­ ط¹ظ„ظٹظ‡ ط§ظ„ط³ظ„ط§ظ… طں")
name = string.gsub(name,"ط§ظ„ظ…ط·ط±","ط´ظٹط¦ ظٹط³ظ‚ط· ط¹ظ„ظ‰ ط±ط£ط³ظƒ ظ…ظ† ط§ظ„ط§ط¹ظ„ظ‰ ظˆظ„ط§ ظٹط¬ط±ط­ظƒ ظپظ…ط§ ظ‡ظˆ طں")
name = string.gsub(name,"5","ظ…ط§ ط§ظ„ط¹ط¯ط¯ ط§ظ„ط°ظٹ ط§ط°ط§ ط¶ط±ط¨طھظ‡ ط¨ظ†ظپط³ظ‡ ظˆط§ط¶ظپطھ ط¹ظ„ظٹظ‡ 5 ظٹطµط¨ط­ ط«ظ„ط§ط«ظٹظ† ")
name = string.gsub(name,"ط§ظ„ظƒطھط§ط¨","ظ…ط§ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظ„ظ‡ ط§ظˆط±ط§ظ‚ ظˆظ„ظٹط³ ظ„ظ‡ ط¬ط°ظˆط± طں")
name = string.gsub(name,"ط§ظ„ط¨ط³ظ…ط§ط±","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظ„ط§ ظٹظ…ط´ظٹ ط§ظ„ط§ ط¨ط§ظ„ط¶ط±ط¨ طں")
name = string.gsub(name,"7","ط¹ط§ط¦ظ„ظ‡ ظ…ط¤ظ„ظپظ‡ ظ…ظ† 6 ط¨ظ†ط§طھ ظˆط§ط® ظ„ظƒظ„ ظ…ظ†ظ‡ظ† .ظپظƒظ… ط¹ط¯ط¯ ط§ظپط±ط§ط¯ ط§ظ„ط¹ط§ط¦ظ„ظ‡ ")
name = string.gsub(name,"ط§ظ„ظƒط¹ط¨ظ‡","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ظ…ظˆط¬ظˆط¯ ظˆط³ط· ظ…ظƒط© طں")
name = string.gsub(name,"ط¨ظٹطھ ط§ظ„ط´ط¹ط±","ظ…ط§ ظ‡ظˆ ط§ظ„ط¨ظٹطھ ط§ظ„ط°ظٹ ظ„ظٹط³ ظپظٹظ‡ ط§ط¨ظˆط§ط¨ ظˆظ„ط§ ظ†ظˆط§ظپط° طں ")
name = string.gsub(name,"ظ„ظ‡ط§ظ†ظ‡","ظˆط­ط¯ظ‡ ط­ظ„ظˆظ‡ ظˆظ…ط؛ط±ظˆط±ظ‡ طھظ„ط¨ط³ ظ…ظٹط© طھظ†ظˆط±ظ‡ .ظ…ظ† ظ‡ظٹظ‡ طں ")
name = string.gsub(name,"ط§ظ†ط§","ط§ط¨ظ† ط§ظ…ظƒ ظˆط§ط¨ظ† ط§ط¨ظٹظƒ ظˆظ„ظٹط³ ط¨ط§ط®طھظƒ ظˆظ„ط§ ط¨ط§ط®ظٹظƒ ظپظ…ظ† ظٹظƒظˆظ† طں")
name = string.gsub(name,"ط§ظ…ظٹ","ط§ط®طھ ط®ط§ظ„ظƒ ظˆظ„ظٹط³طھ ط®ط§ظ„طھظƒ ظ…ظ† طھظƒظˆظ† طں ")
name = string.gsub(name,"ط§ظ„ط§ط¨ط±ظ‡","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظƒظ„ظ…ط§ ط®ط·ط§ ط®ط·ظˆظ‡ ظپظ‚ط¯ ط´ظٹط¦ط§ ظ…ظ† ط°ظٹظ„ظ‡ طں ")
name = string.gsub(name,"ط§ظ„ط³ط§ط¹ظ‡","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظٹظ‚ظˆظ„ ط§ظ„طµط¯ظ‚ ظˆظ„ظƒظ†ظ‡ ط§ط°ط§ ط¬ط§ط¹ ظƒط°ط¨ طں")
name = string.gsub(name,"22","ظƒظ… ظ…ط±ظ‡ ظٹظ†ط·ط¨ظ‚ ط¹ظ‚ط±ط¨ط§ ط§ظ„ط³ط§ط¹ظ‡ ط¹ظ„ظ‰ ط¨ط¹ط¶ظ‡ظ…ط§ ظپظٹ ط§ظ„ظٹظˆظ… ط§ظ„ظˆط§ط­ط¯ ")
name = string.gsub(name,"ط؛ظ„ط·","ظ…ط§ ظ‡ظٹ ط§ظ„ظƒظ„ظ…ظ‡ ط§ظ„ظˆط­ظٹط¯ظ‡ ط§ظ„طھظٹ طھظ„ظپط¶ ط؛ظ„ط· ط¯ط§ط¦ظ…ط§ طں ")
name = string.gsub(name,"ظƒظ… ط§ظ„ط³ط§ط¹ظ‡","ظ…ط§ ظ‡ظˆ ط§ظ„ط³ط¤ط§ظ„ ط§ظ„ط°ظٹ طھط®طھظ„ظپ ط§ط¬ط§ط¨طھظ‡ ط¯ط§ط¦ظ…ط§ طں")
name = string.gsub(name,"ط§ظ„ط¨ظٹطھظ†ط¬ط§ظ†","ط¬ط³ظ… ط§ط³ظˆط¯ ظˆظ‚ظ„ط¨ ط§ط¨ظٹط¶ ظˆط±ط§ط³ ط§ط®ط¸ط± ظپظ…ط§ ظ‡ظˆ طں")
name = string.gsub(name,"ط§ظ„ط¨ظٹط¶","ظ…ط§ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ط§ط³ظ…ظ‡ ط¹ظ„ظ‰ ظ„ظˆظ†ظ‡ طں")
name = string.gsub(name,"ط§ظ„ظ…ط±ط§ظٹظ‡","ط§ط±ظ‰ ظƒظ„ ط´ظٹط¦ ظ…ظ† ط¯ظˆظ† ط¹ظٹظˆظ† ظ…ظ† ط§ظƒظˆظ† طں ")
name = string.gsub(name,"ط§ظ„ط¶ظˆط،","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظٹط®طھط±ظ‚ ط§ظ„ط²ط¬ط§ط¬ ظˆظ„ط§ ظٹظƒط³ط±ظ‡ طں")
name = string.gsub(name,"ط§ظ„ظ‡ظˆط§ط،","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظٹط³ظٹط± ط§ظ…ط§ظ…ظƒ ظˆظ„ط§ طھط±ط§ظ‡ طں")
name = string.gsub(name,"ط§ظ„ط¶ظ„","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظٹظ„ط§ط­ظ‚ظƒ ط§ظٹظ†ظ…ط§ طھط°ظ‡ط¨ طں ")
name = string.gsub(name,"ط§ظ„ط¹ظ…ط±","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط، ط§ظ„ط°ظٹ ظƒظ„ظ…ط§ ط·ط§ظ„ ظ‚طµط± طں ")
name = string.gsub(name,"ط§ظ„ظ‚ظ„ظ…","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظٹظƒطھط¨ ظˆظ„ط§ ظٹظ‚ط±ط£ طں")
name = string.gsub(name,"ط§ظ„ظ…ط´ط·","ظ„ظ‡ ط£ط³ظ†ط§ظ† ظˆظ„ط§ ظٹط¹ط¶ ظ…ط§ ظ‡ظˆ طں ")
name = string.gsub(name,"ط§ظ„ط­ظپط±ظ‡","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ط°ط§ ط£ط®ط°ظ†ط§ ظ…ظ†ظ‡ ط§ط²ط¯ط§ط¯ ظˆظƒط¨ط± طں")
name = string.gsub(name,"ط§ظ„ط¨ط­ط±","ظ…ط§ ظ‡ظˆ ط§ظ„ط´ظٹط¦ ط§ظ„ط°ظٹ ظٹط±ظپط¹ ط§ط«ظ‚ط§ظ„ ظˆظ„ط§ ظٹظ‚ط¯ط± ظٹط±ظپط¹ ظ…ط³ظ…ط§ط± طں")
name = string.gsub(name,"ط§ظ„ط«ظ„ط¬","ط§ظ†ط§ ط§ط¨ظ† ط§ظ„ظ…ط§ط، ظپط§ظ† طھط±ظƒظˆظ†ظٹ ظپظٹ ط§ظ„ظ…ط§ط، ظ…طھ ظپظ…ظ† ط§ظ†ط§ طں")
name = string.gsub(name,"ط§ظ„ط§ط³ظپظ†ط¬","ظƒظ„ظٹ ط«ظ‚ظˆط¨ ظˆظ…ط¹ ط°ط§ظ„ظƒ ط§ط­ظپط¶ ط§ظ„ظ…ط§ط، ظپظ…ظ† ط§ظƒظˆظ† طں")
name = string.gsub(name,"ط§ظ„طµظˆطھ","ط§ط³ظٹط± ط¨ظ„ط§ ط±ط¬ظ„ظٹظ† ظˆظ„ط§ ط§ط¯ط®ظ„ ط§ظ„ط§ ط¨ط§ظ„ط§ط°ظ†ظٹظ† ظپظ…ظ† ط§ظ†ط§ طں")
name = string.gsub(name,"ط¨ظ„ظ…","ط­ط§ظ…ظ„ ظˆظ…ط­ظ…ظˆظ„ ظ†طµظپ ظ†ط§ط´ظپ ظˆظ†طµظپ ظ…ط¨ظ„ظˆظ„ ظپظ…ظ† ط§ظƒظˆظ† طں ")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹط­ظ„ ط§ظ„ط­ط²ظˆط±ظ‡ â†“\n {"..name.."}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_) or "").."" and not redis:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then
if not redis:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ط­ط²ظˆط±ظ‡ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Set:Hzora"..msg.chat_id_,true)
end 

if text == "ظ…ط¹ط§ظ†ظٹ" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
redis:del(bot_id.."Tshak:Set:Maany"..msg.chat_id_)
Maany_Rand = {"ظ‚ط±ط¯","ط¯ط¬ط§ط¬ظ‡","ط¨ط·ط±ظٹظ‚","ط¶ظپط¯ط¹","ط¨ظˆظ…ظ‡","ظ†ط­ظ„ظ‡","ط¯ظٹظƒ","ط¬ظ…ظ„","ط¨ظ‚ط±ظ‡","ط¯ظˆظ„ظپظٹظ†","طھظ…ط³ط§ط­","ظ‚ط±ط´","ظ†ظ…ط±","ط§ط®ط·ط¨ظˆط·","ط³ظ…ظƒظ‡","ط®ظپط§ط´","ط§ط³ط¯","ظپط£ط±","ط°ط¦ط¨","ظپط±ط§ط´ظ‡","ط¹ظ‚ط±ط¨","ط²ط±ط§ظپظ‡","ظ‚ظ†ظپط°","طھظپط§ط­ظ‡","ط¨ط§ط°ظ†ط¬ط§ظ†"}
name = Maany_Rand[math.random(#Maany_Rand)]
redis:set(bot_id.."Tshak:Maany"..msg.chat_id_,name)
name = string.gsub(name,"ظ‚ط±ط¯","ًںگ’")
name = string.gsub(name,"ط¯ط¬ط§ط¬ظ‡","ًںگ”")
name = string.gsub(name,"ط¨ط·ط±ظٹظ‚","ًںگ§")
name = string.gsub(name,"ط¶ظپط¯ط¹","ًںگ¸")
name = string.gsub(name,"ط¨ظˆظ…ظ‡","ًں¦‰")
name = string.gsub(name,"ظ†ط­ظ„ظ‡","ًںگ‌")
name = string.gsub(name,"ط¯ظٹظƒ","ًںگ“")
name = string.gsub(name,"ط¬ظ…ظ„","ًںگ«")
name = string.gsub(name,"ط¨ظ‚ط±ظ‡","ًںگ„")
name = string.gsub(name,"ط¯ظˆظ„ظپظٹظ†","ًںگ¬")
name = string.gsub(name,"طھظ…ط³ط§ط­","ًںگٹ")
name = string.gsub(name,"ظ‚ط±ط´","ًں¦ˆ")
name = string.gsub(name,"ظ†ظ…ط±","ًںگ…")
name = string.gsub(name,"ط§ط®ط·ط¨ظˆط·","ًںگ™")
name = string.gsub(name,"ط³ظ…ظƒظ‡","ًںگں")
name = string.gsub(name,"ط®ظپط§ط´","ًں¦‡")
name = string.gsub(name,"ط§ط³ط¯","ًں¦پ")
name = string.gsub(name,"ظپط£ط±","ًںگ­")
name = string.gsub(name,"ط°ط¦ط¨","ًںگ؛")
name = string.gsub(name,"ظپط±ط§ط´ظ‡","ًں¦‹")
name = string.gsub(name,"ط¹ظ‚ط±ط¨","ًں¦‚")
name = string.gsub(name,"ط²ط±ط§ظپظ‡","ًں¦’")
name = string.gsub(name,"ظ‚ظ†ظپط°","ًں¦”")
name = string.gsub(name,"طھظپط§ط­ظ‡","ًںچژ")
name = string.gsub(name,"ط¨ط§ط°ظ†ط¬ط§ظ†","ًںچ†")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹط¯ط² ظ…ط¹ظ†ظ‰ ط§ظ„ط³ظ…ط§ظٹظ„ ~ {"..name.."}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak:Maany"..msg.chat_id_) or "").."" and not redis:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then
if not redis:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ظ…ط¹ط§ظ†ظٹ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Set:Maany"..msg.chat_id_,true)
end 
if text == "ط§ظ„ط¹ظƒط³" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
redis:del(bot_id.."Tshak:Set:Aks"..msg.chat_id_)
katu = {"ط¨ط§ظٹ","ظپظ‡ظ…طھ","ظ…ظˆط²ظٹظ†","ط§ط³ظ…ط¹ظƒ","ط§ط­ط¨ظƒ","ظ…ظˆط­ظ„ظˆ","ظ†ط¶ظٹظپ","ط­ط§ط±ظ‡","ظ†ط§طµظٹ","ط¬ظˆظ‡","ط³ط±ظٹط¹","ظˆظ†ط³ظ‡","ط·ظˆظٹظ„","ط³ظ…ظٹظ†","ط¶ط¹ظٹظپ","ط´ط±ظٹظپ","ط´ط¬ط§ط¹","ط±ط­طھ","ط¹ط¯ظ„","ظ†ط´ظٹط·","ط´ط¨ط¹ط§ظ†","ظ…ظˆط¹ط·ط´ط§ظ†","ط®ظˆط´ ظˆظ„ط¯","ط§ظ†ظٹ","ظ‡ط§ط¯ط¦"}
name = katu[math.random(#katu)]
redis:set(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"ط¨ط§ظٹ","ظ‡ظ„ظˆ")
name = string.gsub(name,"ظپظ‡ظ…طھ","ظ…ط§ظپظ‡ظ…طھ")
name = string.gsub(name,"ظ…ظˆط²ظٹظ†","ط²ظٹظ†")
name = string.gsub(name,"ط§ط³ظ…ط¹ظƒ","ظ…ط§ط³ظ…ط¹ظƒ")
name = string.gsub(name,"ط§ط­ط¨ظƒ","ظ…ط§ط­ط¨ظƒ")
name = string.gsub(name,"ظ…ظˆط­ظ„ظˆ","ط­ظ„ظˆ")
name = string.gsub(name,"ظ†ط¶ظٹظپ","ظˆطµط®")
name = string.gsub(name,"ط­ط§ط±ظ‡","ط¨ط§ط±ط¯ظ‡")
name = string.gsub(name,"ظ†ط§طµظٹ","ط¹ط§ظ„ظٹ")
name = string.gsub(name,"ط¬ظˆظ‡","ظپظˆظƒ")
name = string.gsub(name,"ط³ط±ظٹط¹","ط¨ط·ظٹط،")
name = string.gsub(name,"ظˆظ†ط³ظ‡","ط¶ظˆط¬ظ‡")
name = string.gsub(name,"ط·ظˆظٹظ„","ظ‚ط²ظ…")
name = string.gsub(name,"ط³ظ…ظٹظ†","ط¶ط¹ظٹظپ")
name = string.gsub(name,"ط¶ط¹ظٹظپ","ظ‚ظˆظٹ")
name = string.gsub(name,"ط´ط±ظٹظپ","ظƒظˆط§ط¯")
name = string.gsub(name,"ط´ط¬ط§ط¹","ط¬ط¨ط§ظ†")
name = string.gsub(name,"ط±ط­طھ","ط§ط¬ظٹطھ")
name = string.gsub(name,"ط¹ط¯ظ„","ظ…ظٹطھ")
name = string.gsub(name,"ظ†ط´ظٹط·","ظƒط³ظˆظ„")
name = string.gsub(name,"ط´ط¨ط¹ط§ظ†","ط¬ظˆط¹ط§ظ†")
name = string.gsub(name,"ظ…ظˆط¹ط·ط´ط§ظ†","ط¹ط·ط´ط§ظ†")
name = string.gsub(name,"ط®ظˆط´ ظˆظ„ط¯","ظ…ظˆط®ظˆط´ ظˆظ„ط¯")
name = string.gsub(name,"ط§ظ†ظٹ","ظ…ط·ظٹ")
name = string.gsub(name,"ظ‡ط§ط¯ط¦","ط¹طµط¨ظٹ")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹط¯ط² ط§ظ„ط¹ظƒط³ ~ {"..name.."}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_) or "").."" and not redis:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then
if not redis:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ط§ظ„ط¹ظƒط³ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Set:Aks"..msg.chat_id_,true)
end 

if redis:get(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط¢ ظ„ط§ ظٹظ…ظƒظ†ظƒ طھط®ظ…ظٹظ† ط¹ط¯ط¯ ط§ظƒط¨ط± ظ…ظ† ط§ظ„ { 20 } ط®ظ…ظ† ط±ظ‚ظ… ظ…ط§ ط¨ظٹظ† ط§ظ„{ 1 ظˆ 20 }\n")
return false  end 
local GETNUM = redis:get(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
redis:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
redis:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ…ط¨ط±ظˆظƒ ظپط²طھ ظˆظٹط§ظ†ظ‡ ظˆط®ظ…ظ†طھ ط§ظ„ط±ظ‚ظ… ط§ظ„طµط­ظٹط­\nـپà¼¯â”†طھظ… ط§ط¶ط§ظپط© { 5 } ظ…ظ† ط§ظ„ظ†ظ‚ط§ط· \n")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
redis:incrby(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(redis:get(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
redis:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
redis:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظˆط¨ط³ ظ„ظ‚ط¯ ط®ط³ط±طھ ظپظٹ ط§ظ„ظ„ط¹ط¨ظ‡ \nـپà¼¯â”†ط­ط¸ط¢ ط§ظˆظپط± ظپظٹ ط§ظ„ظ…ط±ظ‡ ط§ظ„ظ‚ط§ط¯ظ…ظ‡ \nـپà¼¯â”†ظƒط§ظ† ط§ظ„ط±ظ‚ظ… ط§ظ„ط°ظٹ طھظ… طھط®ظ…ظٹظ†ظ‡ { "..GETNUM.." }")
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظˆط¨ط³ طھط®ظ…ظٹظ†ظƒ ط؛ظ„ط· \nـپà¼¯â”†ط§ط±ط³ظ„ ط±ظ‚ظ… طھط®ظ…ظ†ظ‡ ظ…ط±ظ‡ ط§ط®ط±ظ‰ ")
end
end
end
end
if text == "ط®ظ…ظ†" or text == "طھط®ظ…ظٹظ†" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end   
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
redis:set(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†ط§ظ‡ظ„ط§ ط¨ظƒ ط¹ط²ظٹط²ظٹ ظپظٹ ظ„ط¹ط¨ط© ط§ظ„طھط®ظ…ظٹظ† :\nظ´â”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پâ”پ\n".."ـپà¼¯â”†ظ…ظ„ط§ط­ط¸ظ‡ ظ„ط¯ظٹظƒ { 3 } ظ…ط­ط§ظˆظ„ط§طھ ظپظ‚ط· ظپظƒط± ظ‚ط¨ظ„ ط§ط±ط³ط§ظ„ طھط®ظ…ظٹظ†ظƒ \n\n".."ـپà¼¯â”†ط³ظٹطھظ… طھط®ظ…ظٹظ† ط¹ط¯ط¯ ظ…ط§ ط¨ظٹظ† ط§ظ„ {1 ظˆ 20} ط§ط°ط§ طھط¹طھظ‚ط¯ ط§ظ†ظƒ طھط³طھط·ظٹط¹ ط§ظ„ظپظˆط² ط¬ط±ط¨ ظˆط§ظ„ظ„ط¹ط¨ ط§ظ„ط§ظ† طں ")
redis:setex(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if redis:get(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط¹ط°ط±ط§ ظ„ط§ ظٹظˆط¬ط¯ ط³ظˆط§ط، { 6 } ط§ط®طھظٹط§ط±ط§طھ ظپظ‚ط· ط§ط±ط³ظ„ ط§ط®طھظٹط§ط±ظƒ ظ…ط±ظ‡ ط§ط®ط±ظ‰\n")
return false  end 
local GETNUM = redis:get(bot_id.."Tshak:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
redis:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ…ط¨ط±ظˆظƒ ظپط²طھ ظˆط·ظ„ط¹طھ ط§ظ„ظ…ط­ظٹط¨ط³ ط¨ظ„ ط§ظٹط¯ ط±ظ‚ظ… { "..NUM.." }\nًںژٹï¸™ظ„ظ‚ط¯ ط­طµظ„طھ ط¹ظ„ظ‰ { 3 }ظ…ظ† ظ†ظ‚ط§ط· ظٹظ…ظƒظ†ظƒ ط§ط³طھط¨ط¯ط§ظ„ظ‡ظ† ط¨ط±ط³ط§ط¦ظ„ ")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
redis:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ظ„ط§ط³ظپ ظ„ظ‚ط¯ ط®ط³ط±طھ \nـپà¼¯â”†ط§ظ„ظ…ط­ظٹط¨ط³ ط¨ظ„ ط§ظٹط¯ ط±ظ‚ظ… { "..GETNUM.." }\nـپà¼¯â”†ط­ط§ظˆظ„ ظ…ط±ظ‡ ط§ط®ط±ظ‰ ظ„ظ„ط¹ط«ظˆط± ط¹ظ„ظ‰ ط§ظ„ظ…ط­ظٹط¨ط³")
end
end
end

if text == "ظ…ط­ظٹط¨ط³" or text == "ط¨ط§طھ" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then   
Num = math.random(1,6)
redis:set(bot_id.."Tshak:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*â‍€       â‍پ     â‍‚      â‍ƒ      â‍„     â‍…
â†“      â†“     â†“      â†“     â†“     â†“
ًں‘ٹ â€¹â€؛ ًں‘ٹ â€¹â€؛ ًں‘ٹ â€¹â€؛ ًں‘ٹ â€¹â€؛ ًں‘ٹ â€¹â€؛ ًں‘ٹ
ـپà¼¯â”†ط§ط®طھط± ظ„ط£ط³طھط®ط±ط§ط¬ ط§ظ„ظ…ط­ظٹط¨ط³ ط§ظ„ط§ظٹط¯ ط§ظ„طھظٹ طھط­ظ…ظ„ ط§ظ„ظ…ط­ظٹط¨ط³ 
ـپà¼¯â”†ط§ظ„ظپط§ط¦ط² ظٹط­طµظ„ ط¹ظ„ظ‰ { 3 } ظ…ظ† ط§ظ„ظ†ظ‚ط§ط· *
]]
send(msg.chat_id_, msg.id_,TEST)
redis:setex(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if text == "ط§ظ„ظ…ط®طھظ„ظپ" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mktlf = {"ًںک¸","âک ","ًںگ¼","ًںگ‡","ًںŒ‘","ًںŒڑ","â­گï¸ڈ","âœ¨","â›ˆ","ًںŒ¥","â›„ï¸ڈ","ًں‘¨â€چًں”¬","ًں‘¨â€چًں’»","ًں‘¨â€چâŒ”","ًں§ڑâ€چâ™€","ًں§œâ€چâ™‚","ًں§‌â€چâ™‚","ًں™چâ€چâ™‚","ًں§–â€چâ™‚","ًں‘¬","ًں•’","ًں•¤","âŒ›ï¸ڈ","ًں“…",};
name = mktlf[math.random(#mktlf)]
redis:del(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_)
redis:set(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"ًںک¸","ًںک¹ًںک¹ًںک¹ًںک¹ًںک¹ًںک¹ًںک¹ًںک¹ًںک¸ًںک¹ًںک¹ًںک¹ًںک¹")
name = string.gsub(name,"âک ","ًں’€ًں’€ًں’€ًں’€ًں’€ًں’€ًں’€âک ًں’€ًں’€ًں’€ًں’€ًں’€")
name = string.gsub(name,"ًںگ¼","ًں‘»ًں‘»ًں‘»ًںگ¼ًں‘»ًں‘»ًں‘»ًں‘»ًں‘»ًں‘»ًں‘»")
name = string.gsub(name,"ًںگ‡","ًں•ٹًں•ٹًں•ٹًں•ٹًں•ٹًںگ‡ًں•ٹًں•ٹًں•ٹًں•ٹ")
name = string.gsub(name,"ًںŒ‘","ًںŒڑًںŒڑًںŒڑًںŒڑًںŒڑًںŒ‘ًںŒڑًںŒڑًںŒڑ")
name = string.gsub(name,"ًںŒڑ","ًںŒ‘ًںŒ‘ًںŒ‘ًںŒ‘ًںŒ‘ًںŒڑًںŒ‘ًںŒ‘ًںŒ‘")
name = string.gsub(name,"â­گï¸ڈ","ًںŒںًںŒںًںŒں????ًںŒںًںŒںًںŒںâ­گï¸ڈًںŒںًںŒںًںŒں")
name = string.gsub(name,"âœ¨","ًں’«ًں’«ًں’«ًں’«ًں’«âœ¨ًں’«ًں’«ًں’«ًں’«")
name = string.gsub(name,"â›ˆ","ًںŒ¨ًںŒ¨ًںŒ¨ًںŒ¨ًںŒ¨â›ˆًںŒ¨ًںŒ¨ًںŒ¨ًںŒ¨")
name = string.gsub(name,"ًںŒ¥","â›…ï¸ڈâ›…ï¸ڈâ›…ï¸ڈâ›…ï¸ڈâ›…ï¸ڈâ›…ï¸ڈًںŒ¥â›…ï¸ڈâ›…ï¸ڈâ›…ï¸ڈâ›…ï¸ڈ")
name = string.gsub(name,"â›„ï¸ڈ","âکƒâکƒâکƒâکƒâکƒâکƒâ›„ï¸ڈâکƒâکƒâکƒâکƒ")
name = string.gsub(name,"ًں‘¨â€چًں”¬","ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چًں”¬ًں‘¨â€چًں”¬ًں‘©â€چًں”¬ًں‘©â€چ??ًں‘©â€چًں”¬")
name = string.gsub(name,"ًں‘¨â€چًں’»","ًں‘©â€چًں’»ًں‘©â€چًں’»ًں‘©â€چâ€چًں’»ًں‘©â€چâ€چًں’»ًں‘©â€چًں’»ًں‘¨â€چًں’»ًں‘©â€چًں’»ًں‘©â€چًں’»ًں‘©â€چًں’»")
name = string.gsub(name,"ًں‘¨â€چâŒ”","ًں‘©â€چâŒ”ًں‘©â€چâŒ”ًں‘©â€چâŒ”ًں‘©â€چâŒ”ًں‘©â€چâŒ”ًں‘©â€چâŒ”ًں‘¨â€چâŒ”ًں‘©â€چâŒ”")
name = string.gsub(name,"ًں‘©â€چًںچ³","ًں‘¨â€چًںچ³ًں‘¨â€چًںچ³ًں‘¨â€چًںچ³ًں‘¨â€چًںچ³ًں‘¨â€چًںچ³ًں‘©â€چًںچ³ًں‘¨â€چًںچ³ًں‘¨â€چًںچ³ًں‘¨â€چًںچ³")
name = string.gsub(name,"ًں§ڑâ€چâ™€","ًں§ڑâ€چâ™‚ًں§ڑâ€چâ™‚ًں§ڑâ€چâ™‚ًں§ڑâ€چâ™‚ًں§ڑâ€چâ™€ًں§ڑâ€چâ™‚ًں§ڑâ€چâ™‚")
name = string.gsub(name,"ًں§œâ€چâ™‚","ًں§œâ€چâ™€ًں§œâ€چâ™€ًں§œâ€چâ™€ًں§œâ€چâ™€ًں§œâ€چâ™€ًں§ڑâ€چâ™‚ًں§œâ€چâ™€ًں§œâ€چâ™€ًں§œâ€چâ™€")
name = string.gsub(name,"ًں§‌â€چâ™‚","ًں§‌â€چâ™€ًں§‌â€چâ™€ًں§‌â€چâ™€ًں§‌â€چâ™€ًں§‌â€چâ™€ًں§‌â€چâ™‚ًں§‌â€چâ™€ًں§‌â€چâ™€ًں§‌â€چâ™€")
name = string.gsub(name,"ًں™چâ€چâ™‚ï¸ڈ","ًں™ژâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈًں™چâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈًں™ژâ€چâ™‚ï¸ڈ")
name = string.gsub(name,"ًں§–â€چâ™‚ï¸ڈ","ًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™‚ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈًں§–â€چâ™€ï¸ڈ")
name = string.gsub(name,"ًں‘¬","ًں‘­ًں‘­ًں‘­ًں‘­ًں‘­ًں‘¬ًں‘­ًں‘­ًں‘­")
name = string.gsub(name,"ًں‘¨â€چًں‘¨â€چًں‘§","ًں‘¨â€چًں‘¨â€چًں‘¦ًں‘¨â€چًں‘¨â€چًں‘¦ًں‘¨â€چًں‘¨â€چًں‘¦ًں‘¨â€چًں‘¨â€چًں‘¦ًں‘¨â€چًں‘¨â€چًں‘§ًں‘¨â€چًں‘¨â€چًں‘¦ًں‘¨â€چًں‘¨â€چًں‘¦")
name = string.gsub(name,"ًں•’","ًں•’ًں•’ًں•’ًں•’ًں•’ًں•’ًں•“ًں•’ًں•’ًں•’")
name = string.gsub(name,"ًں•¤","ًں•¥ًں•¥ًں•¥ًں•¥ًں•¥ًں•¤ًں•¥ًں•¥ًں•¥")
name = string.gsub(name,"âŒ›ï¸ڈ","âڈ³âڈ³âڈ³âڈ³âڈ³âڈ³âŒ›ï¸ڈâڈ³âڈ³")
name = string.gsub(name,"ًں“…","ًں“†ًں“†ًں“†ًں“†ًں“†ًں“†ًں“…ًں“†ًں“†")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹط¯ط² ط§ظ„ط§ط®طھظ„ط§ظپ ~ {"..name.."}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not redis:get(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_) then 
redis:del(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ط§ظ„ظ…ط®طھظ„ظپ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "ط§ظ…ط«ظ„ظ‡" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if redis:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mthal = {"ط¬ظˆط²","ط¶ط±ط§ط·ظ‡","ط§ظ„ط­ط¨ظ„","ط§ظ„ط­ط§ظپظٹ","ط´ظ‚ط±ظ‡","ط¨ظٹط¯ظƒ","ط³ظ„ط§ظٹظ‡","ط§ظ„ظ†ط®ظ„ظ‡","ط§ظ„ط®ظٹظ„","ط­ط¯ط§ط¯","ط§ظ„ظ…ط¨ظ„ظ„","ظٹط±ظƒطµ","ظ‚ط±ط¯","ط§ظ„ط¹ظ†ط¨","ط§ظ„ط¹ظ…ظ‡","ط§ظ„ط®ط¨ط²","ط¨ط§ظ„ط­طµط§ط¯","ط´ظ‡ط±","ط´ظƒظ‡","ظٹظƒط­ظ„ظ‡",};
name = mthal[math.random(#mthal)]
redis:set(bot_id.."Tshak:Set:Amth"..msg.chat_id_,name)
redis:del(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"ط¬ظˆط²","ظٹظ†ط·ظٹ____ظ„ظ„ظ…ط§ط¹ط¯ظ‡ ط³ظ†ظˆظ†")
name = string.gsub(name,"ط¶ط±ط§ط·ظ‡","ط§ظ„ظٹ ظٹط³ظˆظ‚ ط§ظ„ظ…ط·ظٹ ظٹطھط­ظ…ظ„___")
name = string.gsub(name,"ط¨ظٹط¯ظƒ","ط§ظƒظ„___ظ…ط­ط¯ ظٹظپظٹط¯ظƒ")
name = string.gsub(name,"ط§ظ„ط­ط§ظپظٹ","طھط¬ط¯ظٹ ظ…ظ†___ظ†ط¹ط§ظ„")
name = string.gsub(name,"ط´ظ‚ط±ظ‡","ظ…ط¹ ط§ظ„ط®ظٹظ„ ظٹط§___")
name = string.gsub(name,"ط§ظ„ظ†ط®ظ„ظ‡","ط§ظ„ط·ظˆظ„ ط·ظˆظ„___ظˆط§ظ„ط¹ظ‚ظ„ ط¹ظ‚ظ„ ط§ظ„طµط®ظ„ط©")
name = string.gsub(name,"ط³ظ„ط§ظٹظ‡","ط¨ط§ظ„ظˆط¬ظ‡ ط§ظ…ط±ط§ظٹط© ظˆط¨ط§ظ„ط¸ظ‡ط±___")
name = string.gsub(name,"ط§ظ„ط®ظٹظ„","ظ…ظ† ظ‚ظ„ط©___ط´ط¯ظˆ ط¹ظ„ظ‰ ط§ظ„ع†ظ„ط§ط¨ ط³ط±ظˆط¬")
name = string.gsub(name,"ط­ط¯ط§ط¯","ظ…ظˆظƒظ„ ظ…ظ† طµط®ظ… ظˆط¬ظ‡ظ‡ ظƒط§ظ„ ط¢ظ†ظٹ___")
name = string.gsub(name,"ط§ظ„ظ…ط¨ظ„ظ„","___ظ…ط§ ظٹط®ط§ظپ ظ…ظ† ط§ظ„ظ…ط·ط±")
name = string.gsub(name,"ط§ظ„ط­ط¨ظ„","ط§ظ„ظ„ظٹ طھظ„ط¯ط؛ط© ط§ظ„ط­ظٹط© ظٹط®ط§ظپ ظ…ظ† ط¬ط±ط©___")
name = string.gsub(name,"ظٹط±ظƒطµ","ط§ظ„ظ…ط§ظٹط¹ط±ظپ___ظٹظƒظˆظ„ ط§ظ„ظƒط§ط¹ ط¹ظˆط¬ظ‡")
name = string.gsub(name,"ط§ظ„ط¹ظ†ط¨","ط§ظ„ظ…ط§ظٹظ„ظˆط­___ظٹظƒظˆظ„ ط­ط§ظ…ط¶")
name = string.gsub(name,"ط§ظ„ط¹ظ…ظ‡","___ط¥ط°ط§ ط­ط¨طھ ط§ظ„ع†ظ†ط© ط§ط¨ظ„ظٹط³ ظٹط¯ط®ظ„ ط§ظ„ط¬ظ†ط©")
name = string.gsub(name,"ط§ظ„ط®ط¨ط²","ط§ظ†ط·ظٹ___ظ„ظ„ط®ط¨ط§ط² ط­طھظ‰ ظ„ظˆ ظٹط§ظƒظ„ ظ†طµظ‡")
name = string.gsub(name,"ط¨ط§ط­طµط§ط¯","ط§ط³ظ…ط©___ظˆظ…ظ†ط¬ظ„ظ‡ ظ…ظƒط³ظˆط±")
name = string.gsub(name,"ط´ظ‡ط±","ط§ظ…ط´ظٹ__ظˆظ„ط§ طھط¹ط¨ط± ظ†ظ‡ط±")
name = string.gsub(name,"ط´ظƒظ‡","ظٹط§ظ…ظ† طھط¹ط¨ ظٹط§ظ…ظ†__ظٹط§ ظ…ظ† ط¹ظ„ظ‰ ط§ظ„ط­ط§ط¶ط± ظ„ظƒط©")
name = string.gsub(name,"ط§ظ„ظ‚ط±ط¯","__ط¨ط¹ظٹظ† ط§ظ…ظ‡ ط؛ط²ط§ظ„")
name = string.gsub(name,"ظٹظƒط­ظ„ظ‡","ط§ط¬ظ‡___ط¹ظ…ط§ظ‡ط§")
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط³ط±ط¹ ظˆط§ط­ط¯ ظٹظƒظ…ظ„ ط§ظ„ظ…ط«ظ„ ~ {"..name.."}")
return false
end
end
if text == ""..(redis:get(bot_id.."Tshak:Set:Amth"..msg.chat_id_) or "").."" then 
if not redis:get(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_) then 
redis:del(bot_id.."Tshak:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ظپ ظ…ط¨ط±ظˆظƒ ظ„ظ‚ط¯ ظپط²طھ \nـپà¼¯â”†ظ„ظ„ط¹ط¨ ظ…ط±ظ‡ ط§ط®ط±ظ‡ ط§ط±ط³ظ„ ~{ ط§ظ…ط«ظ„ظ‡ }")
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
redis:set(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط§ظ„ط¹ط§ط¨" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end   
redis:del(bot_id.."Tshak:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ظ„ط¹ط§ط¨") 
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط§ظ„ط¹ط§ط¨" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end  
redis:set(bot_id.."Tshak:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ظ„ط¹ط§ط¨") 
end
if text == 'ط§ظ„ط§ظ„ط¹ط§ط¨' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Teext = [[
ـپà¼¯â”†ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط§ظ„ط¹ط§ط¨ ط§ظ„ظ…ظˆط¬ظˆط¯ظ‡
â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ 
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ط¨ط§طھ آ» ط¨ط§طھ
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„طھط®ظ…ظٹظ† آ» ط®ظ…ظ†
ـپà¼¯â”†ظ„ط¹ط¨ظ‡ ط§ظ„ط§ط³ط±ط¹ آ» ط§ظ„ط§ط³ط±ط¹
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ط³ظ…ط§ظٹظ„ط§طھ آ» ط³ظ…ط§ظٹظ„ط§طھ
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ظ…ط®طھظ„ظپ آ» ط§ظ„ظ…ط®طھظ„ظپ
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ط§ظ…ط«ظ„ظ‡ آ» ط§ظ…ط«ظ„ظ‡
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ط¹ظƒط³ آ» ط§ظ„ط¹ظƒط³ 
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ط­ط²ظˆط±ظ‡ آ» ط­ط²ظˆط±ظ‡
ـپà¼¯â”†ظ„ط¹ط¨ط© ط§ظ„ظ…ط¹ط§ظ†ظٹ آ» ظ…ط¹ط§ظ†ظٹ
â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ 
ـپà¼¯â”†ظ…ط¬ظˆظ‡ط±ط§طھظٹ آ» ظ„ط¹ط±ط¶ ط¹ط¯ط¯ ط§ظ„ط§ط±ط¨ط§ط­
ـپà¼¯â”†ط¨ظٹط¹ ظ…ط¬ظˆظ‡ط±ط§طھظٹ + ط§ظ„ط¹ط¯ط¯ آ» ظ„ط³طھط¨ط¯ط§ظ„ ظƒظ„ ظ…ط¬ظˆظ‡ط±ظ‡ ط¨50 ط±ط³ط§ظ„ظ‡
]]
send(msg.chat_id_, msg.id_,Teext) 
end
if text == 'ط±ط³ط§ط¦ظ„ظٹ' then
local nummsg = redis:get(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = 'ـپà¼¯â”†ط¹ط¯ط¯ ط±ط³ط§ط¦ظ„ظƒ ظ‡ظ†ط§ *~ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ظ…ط³ط­ ط±ط³ط§ط¦ظ„ظٹ' then
redis:del(bot_id..'messageUser'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'ـپà¼¯â”†طھظ… ظ…ط³ط­ ط¬ظ…ظٹط¹ ط±ط³ط§ط¦ظ„ظƒ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ط³ط­ظƒط§طھظٹ' or text == 'طھط¹ط¯ظٹظ„ط§طھظٹ' then
local edit = redis:get(bot_id..'message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = 'ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„طھط¹ط¯ظٹظ„ط§طھ ظ‡ظ†ط§ *~ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ظ…ط³ط­ ط³ط­ظƒط§طھظٹ' or text == 'ظ…ط³ط­ طھط¹ط¯ظٹظ„ط§طھظٹ' then
redis:del(bot_id..'message_edit'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'ـپà¼¯â”†طھظ… ظ…ط³ط­ ط¬ظ…ظٹط¹ طھط¹ط¯ظٹظ„ط§طھظƒ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ط¬ظ‡ط§طھظٹ' then
local addmem = redis:get(bot_id.."Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = 'ـپà¼¯â”†ط¹ط¯ط¯ ط¬ظ‡ط§طھظƒ ط§ظ„ظ…ط¶ط§ظپظ‡ ظ‡ظ†ط§ *~ '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'ظ…ط³ط­ ط¬ظ‡ط§طھظٹ' then
redis:del(bot_id..'Add:Memp'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = 'ـپà¼¯â”†طھظ… ظ…ط³ط­ ط¬ظ…ظٹط¹ ط¬ظ‡ط§طھظƒ ط§ظ„ظ…ط¶ط§ظپظ‡ '
send(msg.chat_id_, msg.id_,Text) 
end
if text == "ظ…ط¬ظˆظ‡ط±ط§طھظٹ" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end 
local Num = redis:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "ـپà¼¯â”†ظ„ظ… طھظ„ط¹ط¨ ط§ظٹ ظ„ط¹ط¨ظ‡ ظ„ظ„ط­طµظˆظ„ ط¹ظ„ظ‰ ط¬ظˆط§ظ‡ط±"
else
Text = "ـپà¼¯â”†ط¹ط¯ط¯ ط¬ظˆط§ظ‡ط± ط§ظ„طھظٹ ط±ط­ط¨طھظ‡ط§ ظ‡ظٹ *~ { "..Num.." } ظ…ط¬ظˆظ‡ط±ظ‡ *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^ط¨ظٹط¹ ظ…ط¬ظˆظ‡ط±ط§طھظٹ (%d+)$") then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local NUMPY = text:match("^ط¨ظٹط¹ ظ…ط¬ظˆظ‡ط±ط§طھظٹ (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*ـپà¼¯â”†ظ„ط§ ط§ط³طھط·ظٹط¹ ط§ظ„ط¨ظٹط¹ ط§ظ‚ظ„ ظ…ظ† 1 *") 
return false 
end
if tonumber(redis:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹظƒ ط¬ظˆط§ظ‡ط± ظ…ظ† ط§ظ„ط§ظ„ط¹ط§ط¨ \nـپà¼¯â”†ط§ط°ط§ ظƒظ†طھ طھط±ظٹط¯ ط±ط¨ط­ ط§ظ„ط¬ظˆط§ظ‡ط± \nـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ط§ظ„ط¹ط§ط¨ ظˆط§ط¨ط¯ط£ ط§ظ„ظ„ط¹ط¨ ! ") 
else
local NUM_GAMES = redis:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\nـپà¼¯â”†ظ„ظٹط³ ظ„ط¯ظٹظƒ ط¬ظˆط§ظ‡ط± ط¨ظ‡ط§ط°ط§ ط§ظ„ط¹ط¯ط¯ \nـپà¼¯â”†ظ„ط²ظٹط§ط¯ط© ظ…ط¬ظˆظ‡ط±ط§طھظƒ ظپظٹ ط§ظ„ظ„ط¹ط¨ظ‡ \nـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ط§ظ„ط¹ط§ط¨ ظˆط§ط¨ط¯ط£ ط§ظ„ظ„ط¹ط¨ !") 
return false 
end
local NUMNKO = (NUMPY * 50)
redis:decrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY)  
redis:incrby(bot_id.."messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†طھظ… ط®طµظ… *~ { "..NUMPY.." }* ظ…ظ† ظ…ط¬ظˆظ‡ط±ط§طھظƒ \nـپà¼¯â”†ظˆطھظ… ط§ط¶ط§ظپط©* ~ { "..(NUMPY * 50).." } ط±ط³ط§ظ„ظ‡ ط§ظ„ظ‰ ط±ط³ط§ظ„ظƒ *")
end 
return false 
end
if text ==("ظ…ط³ط­") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if redis:get(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ط§ظ„ط؛ط§ط،$") then 
redis:del(bot_id.."Tshak:id:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ظ…ط± ") 
redis:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
redis:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = redis:get(bot_id.."Tshak:id:user"..msg.chat_id_)  
redis:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
redis:incrby(bot_id.."messageUser"..msg.chat_id_..":"..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط¶ط§ظپط© ظ„ظ‡ {"..numadded.."} ظ…ظ† ط§ظ„ط±ط³ط§ط¦ظ„")  
end
if redis:get(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ط§ظ„ط؛ط§ط،$") then 
redis:del(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ظ…ط± ") 
redis:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
redis:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = redis:get(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط¶ط§ظپط© ظ„ظ‡ {"..numadded.."} ظ…ظ† ط§ظ„ظ…ط¬ظˆظ‡ط±ط§طھ")  
end
------------------------------------------------------------
if text and text:match("^ط§ط¶ظپ ط±ط³ط§ط¦ظ„ (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end    
taha = text:match("^ط§ط¶ظپ ط±ط³ط§ط¦ظ„ (%d+)$")
redis:set(bot_id.."Tshak:id:user"..msg.chat_id_,taha)  
redis:setex(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "âœ‰ï¸™ط§ط±ط³ظ„ ظ„ظٹ ط¹ط¯ط¯ ط§ظ„ط±ط³ط§ط¦ظ„ ط§ظ„ط§ظ†") 
return false
end
if text and text:match("^ط§ط¶ظپ ظ…ط¬ظˆظ‡ط±ط§طھ (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end  
taha = text:match("^ط§ط¶ظپ ظ…ط¬ظˆظ‡ط±ط§طھ (%d+)$")
redis:set(bot_id.."Tshak:idgem:user"..msg.chat_id_,taha)  
redis:setex(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظˆظ‡ط±ط§طھ ط§ظ„ط§ظ†") 
return false
end
if text and text:match("^ط§ط¶ظپ ظ…ط¬ظˆظ‡ط±ط§طھ (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
local Num = text:match("^ط§ط¶ظپ ظ…ط¬ظˆظ‡ط±ط§طھ (%d+)$")
function reply(extra, result, success)
redis:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط¶ط§ظپط© ظ„ظ‡ {"..Num.."} ظ…ظ† ط§ظ„ظ…ط¬ظˆظ‡ط±ط§طھ")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^ط§ط¶ظپ ط±ط³ط§ط¦ظ„ (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^ط§ط¶ظپ ط±ط³ط§ط¦ظ„ (%d+)$")
function reply(extra, result, success)
redis:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
redis:incrby(bot_id.."messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†طھظ… ط§ط¶ط§ظپط© ظ„ظ‡ {"..Num.."} ظ…ظ† ط§ظ„ط±ط³ط§ط¦ظ„")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == "طھظ†ط¸ظٹظپ ط§ظ„ظ…ط´طھط±ظƒظٹظ†" and DevCo(msg) then
local pv = redis:smembers(bot_id..'UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33mآ»آ» THE USER IS SAVE ME â†“\nآ»آ» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mآ»آ» THE USER IS BLOCK ME â†“\nآ»آ» '..pv[i]..'\n\27[1;37m')
redis:srem(bot_id..'UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط´طھط±ظƒظٹظ† ظˆظ‡ظ…ظٹظٹظ†')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ط´طھط±ظƒظٹظ† ط§ظ„ط§ظ† ~ '..#pv..'\nـپà¼¯â”†طھظ… ط§ظ„ط¹ط«ظˆط± ط¹ظ„ظ‰ ~ '..sendok..' ظ…ط´طھط±ظƒ ظ‚ط§ظ… ط¨ط­ط¸ط± ط§ظ„ط¨ظˆطھ\nـپà¼¯â”†ط§طµط¨ط­ ط¹ط¯ط¯ ط§ظ„ظ…ط´طھط±ظƒظٹظ† ط§ظ„ط§ظ† ~ '..ok..' ظ…ط´طھط±ظƒ *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "طھظ†ط¸ظٹظپ ط§ظ„ظƒط±ظˆط¨ط§طھ" and DevCo(msg) then
local group = redis:smembers(bot_id..'Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mآ»آ» THE BOT IS NOT ADMIN â†“\nآ»آ» '..group[i]..'\n\27[1;37m')
redis:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
redis:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;35mآ»آ» THE BOT IS LEFT GROUP â†“\nآ»آ» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
redis:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;36mآ»آ» THE BOT IS KICKED GROUP â†“\nآ»آ» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
redis:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ ظ…ط¬ظ…ظˆط¹ط§طھ ظˆظ‡ظ…ظٹظ‡ ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\nـپà¼¯â”† طھظ… ط§ط²ط§ظ„ط© ~ '..q..' ظ…ط¬ظ…ظˆط¹ط§طھ ظ…ظ† ط§ظ„ط¨ظˆطھ'
end
if w == 0 then
storm = ''
else
storm = '\nـپà¼¯â”† طھظ… ط§ط²ط§ظ„ط© ~'..w..' ظ…ط¬ظ…ظˆط¹ظ‡ ظ„ط§ظ† ط§ظ„ط¨ظˆطھ ط¹ط¶ظˆ'
end
send(msg.chat_id_, msg.id_,'*ـپà¼¯â”† ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„ط§ظ† ~ '..#group..' ظ…ط¬ظ…ظˆط¹ظ‡ '..storm..''..taha..'\nـپà¼¯â”†ط§طµط¨ط­ ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„ط§ظ† ~ '..sendok..' ظ…ط¬ظ…ظˆط¹ط§طھ*\n')   
end
end
end,nil)
end
return false
end
if text == ("طھط­ط¯ظٹط« ط§ظ„ط³ظˆط±ط³") and DevCo(msg) then  
send(msg.chat_id_,msg.id_,'ـپà¼¯â”†طھظ… ط§ظ„طھط­ط¯ظٹط«')
os.execute('rm -rf korpica.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/korapica-Team/korpica/master/korpica.lua')
os.execute('wget https://raw.githubusercontent.com/korapica-Team/korpica/master/start.lua')
dofile('korpica.lua')  
return false
end
if text == "ط±ط§ط³ظ„ظ†ظٹ" then
rpl = {"ظ‡ط§ ظ‡ظ„ط§ظˆ","ط§ظ†ط·ظ‚","ظƒظˆظ„"};
sender = rpl[math.random(#rpl)]
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendmessage?chat_id=' .. msg.sender_user_id_ .. '&text=' .. URL.escape(sender))
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط²ط®ط±ظپظ‡" and Owner(msg) then
send(msg.chat_id_, msg.id_, 'âŒ¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط²ط®ط±ظپظ‡')
redis:set(bot_id.."zhrf_Bots"..msg.chat_id_,"close")
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط²ط®ط±ظپظ‡" and Owner(msg) then
send(msg.chat_id_, msg.id_,'âŒ¯ طھظ… طھظپط¹ظٹظ„ ط§ظ„ط²ط®ط±ظپظ‡')
redis:set(bot_id.."zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^ط²ط®ط±ظپظ‡ (.*)$") and redis:get(bot_id.."zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^ط²ط®ط±ظپظ‡ (.*)$")
zh = https.request('https://forhassan.ml/Black/hso.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\nâŒ”ï¸ڈï¸™ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط²ط®ط±ظپظ‡ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  `"..v.."` \n"
end
send(msg.chat_id_, msg.id_, t..'â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰\nـپà¼¯â”†ط§ط¶ط؛ط· ط¹ظ„ظ‰ ط§ظ„ط§ط³ظ… ظ„ظٹطھظ… ظ†ط³ط®ظ‡')
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط§ط¨ط±ط§ط¬" and Owner(msg) then
send(msg.chat_id_, msg.id_, 'âŒ¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ط¨ط±ط§ط¬')
redis:set(bot_id.."brj_Bots"..msg.chat_id_,"close")
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط§ط¨ط±ط§ط¬" and Owner(msg) then
send(msg.chat_id_, msg.id_,'âŒ¯ طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ط¨ط±ط§ط¬')
redis:set(bot_id.."brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^ط¨ط±ط¬ (.*)$") and redis:get(bot_id.."brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^ط¨ط±ط¬ (.*)$")
gk = https.request('https://forhassan.ml/Black/br.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_, br.ok.hso)
end
if text == "طھط¹ط·ظٹظ„ ط­ط³ط§ط¨ ط§ظ„ط¹ظ…ط±" and Owner(msg) then
send(msg.chat_id_, msg.id_, 'âŒ¯ طھظ… طھط¹ط·ظٹظ„ ط­ط³ط§ط¨ ط§ظ„ط¹ظ…ط±')
redis:set(bot_id.."age_Bots"..msg.chat_id_,"close")
end
if text == "طھظپط¹ظٹظ„ ط­ط³ط§ط¨ ط§ظ„ط¹ظ…ط±" and Owner(msg) then
send(msg.chat_id_, msg.id_,'âŒ¯ طھظ… طھظپط¹ظٹظ„ ط­ط³ط§ط¨ ط§ظ„ط¹ظ…ط±')
redis:set(bot_id.."age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^ط§ط­ط³ط¨ (.*)$") and redis:get(bot_id.."age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^ط§ط­ط³ط¨ (.*)$")
ge = https.request('https://forhassan.ml/Black/age.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
send(msg.chat_id_, msg.id_, ag.ok.hso)
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط§ظ†ط³طھط§" and Owner(msg) then
send(msg.chat_id_, msg.id_, 'âŒ¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ظ†ط³طھط§')
redis:set(bot_id.."insta_bot"..msg.chat_id_,"close")
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط§ظ†ط³طھط§" and Owner(msg) then
send(msg.chat_id_, msg.id_,'âŒ¯ طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ظ†ط³طھط§')
redis:set(bot_id.."insta_bot"..msg.chat_id_,"open")
end
if text and text:match("^ظ…ط¹ظ„ظˆظ…ط§طھ (.*)$") and redis:get(bot_id.."insta_bot"..msg.chat_id_) == "open" then
local Textni = text:match("^ظ…ط¹ظ„ظˆظ…ط§طھ (.*)$")
data,res = https.request('https://forhassan.ml/Black/insta.php?username='..URL.escape(Textni)..'')
if res == 200 then
muaed = json:decode(data)
if muaed.Info == true then
local filee = download_to_file(muaed.ph,msg.sender_user_id_..'.jpg')
sendPhoto(msg.chat_id_, msg.id_,'./'..msg.sender_user_id_..'.jpg',muaed.info)     
os.execute('rm -rf ./'..msg.sender_user_id_..'.jpg') 
end
end
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط§ظپظ„ط§ظ…" and Owner(msg) then
send(msg.chat_id_, msg.id_, 'âŒ¯ طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ظپظ„ط§ظ…')
redis:set(bot_id.."movie_bot"..msg.chat_id_,"close")
end
if text == "طھظپط¹ظٹظ„ ط§ظ„ط§ظپظ„ط§ظ…" and Owner(msg) then
send(msg.chat_id_, msg.id_,'âŒ¯ طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ظپظ„ط§ظ…')
redis:set(bot_id.."movie_bot"..msg.chat_id_,"open")
end

if text and text:match("^ظپظ„ظ… (.*)$") and redis:get(bot_id.."movie_bot"..msg.chat_id_) == "open" then
local Textm = text:match("^ظپظ„ظ… (.*)$")
data,res = https.request('https://forhassan.ml/Black/movie.php?serch='..URL.escape(Textm)..'')
if res == 200 then
getmo = json:decode(data)
if getmo.Info == true then
local Text ='ظ‚طµظ‡ ط§ظ„ظپظ„ظ…'..getmo.info
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ظ…ط´ط§ظ‡ط¯ظ‡ ط§ظ„ظپظ„ظ… ط¨ط¬ظˆط¯ظ‡ 240',url=getmo.sd}},
{{text = 'ظ…ط´ط§ظ‡ط¯ظ‡ ط§ظ„ظپظ„ظ… ط¨ط¬ظˆط¯ظ‡ 480', url=getmo.Web},{text = 'ظ…ط´ط§ظ‡ط¯ظ‡ ط§ظ„ظپظ„ظ… ط¨ط¬ظˆط¯ظ‡ 1080', url=getmo.hd}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if text == "ط؛ظ†ظٹظ„ظٹ" then
data,res = https.request('https://forhassan.ml/Black/audios.php')
if res == 200 then
audios = json:decode(data)
if audios.Info == true then
local done = download_to_file(audios.info,msg.sender_user_id_..'.mp3')
sendAudio(msg.chat_id_,msg.id_,'./'..msg.sender_user_id_..'.mp3','ط§ظ‡ط¯ط§ط، ظ…ظ† ط§ظ„ط¨ظˆطھ ظ„ظƒًں’—','طھظ… ط§ط®طھظٹط§ط± ط§ظ„ظ…ظ‚ط·ط¹ ط§ظ„طµظˆطھظٹ ط®طµظٹطµط§ ظ„ظƒ','end')
os.execute('rm -rf ./'..msg.sender_user_id_..'.mp3') 
end
end
end
if text and text:match("^ظƒظˆظ„ (.*)$") then
local Textxt = text:match("^ظƒظˆظ„ (.*)$")
send(msg.chat_id_, msg.id_, Textxt)
end
if text == 'طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ' and DevCo(msg) then  
redis:del(bot_id..'Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ ') 
end
if text == 'طھط¹ط·ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ' and DevCo(msg) then  
redis:set(bot_id..'Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ') 
end
if text and text:match("^طھط¹ظٹظ† ط¹ط¯ط¯ ط§ظ„ط§ط¹ط¶ط§ط، (%d+)$") and DevCo(msg) then
local Num = text:match("طھط¹ظٹظ† ط¹ط¯ط¯ ط§ظ„ط§ط¹ط¶ط§ط، (%d+)$") 
redis:set(bot_id..'Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”† طھظ… ظˆط¶ط¹ ط¹ط¯ط¯ ط§ظ„ط§ط¹ط¶ط§ط، *~'..Num..'* ط¹ط¶ظˆ')
end
if text =='ط§ظ„ط§ط­طµط§ط¦ظٹط§طھ' and DevBot(msg) then
local Groups = redis:scard(bot_id..'Chek:Groups')  
local Users = redis:scard(bot_id..'UsersBot')  
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ط­طµط§ط¦ظٹط§طھ ط§ظ„ط¨ظˆطھ \n\nـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ *~ '..Groups..'\nـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ط´طھط±ظƒظٹظ† ~ '..Users..'*')
end
if text == 'ط¬ظ„ط¨ ظ†ط³ط®ظ‡ ط§ط­طھظٹط§ط·ظٹظ‡' and DevCo(msg) then
local list = redis:smembers(bot_id..'Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Co Chat'
ASAS = redis:smembers(bot_id.."Basic:Constructor"..v)
MNSH = redis:smembers(bot_id.."Constructor"..v)
MDER = redis:smembers(bot_id.."Manager"..v)
MOD = redis:smembers(bot_id.."Mod:User"..v)
link = redis:get(bot_id.."Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Co":"'..NAME..'",'
else
t = t..',"'..v..'":{"Co":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'ـپà¼¯â”† ط¹ط¯ط¯ ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„طھظٹ ظپظٹ ط§ظ„ط¨ظˆطھ { '..#list..'}')
end
if text == 'ط§ظ„ظ…ط·ظˆط±' or text == 'ظ…ط·ظˆط±' or text == 'ط§ظ„ظ…ط·ظˆط±ظٹظ†' then
local Text_Dev = redis:get(bot_id..'Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
local Name = 'ـپà¼¯â”†ظ…ط·ظˆط± ط§ظ„ط¨ظˆطھ  : [ '..UserName..' ]'
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
end
end
if text == 'ط§ظ„ظ…ظ„ظپط§طھ' and DevCo(msg) then
t = 'ـپà¼¯â”†ط¬ظ…ظٹط¹ ط§ظ„ظ…ظ„ظپط§طھ : \n â€” â€” â€” â€” â€” â€” â€” â€” â€” \n'
i = 0
for v in io.popen('ls Co_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*~ '..v..'*\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "ظ…طھط¬ط± ط§ظ„ظ…ظ„ظپط§طھ" or text == 'ط§ظ„ظ…طھط¬ط±' then
if DevCo(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/korpica/files_korpica/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\nـپà¼¯â”†ط§ظ‡ظ„ط§ ط¨ظƒ ظپظٹ ظ…طھط¬ط± ظ…ظ„ظپط§طھ ظƒظˆط±ط¨ظٹظƒط§\nـپà¼¯â”†ظٹظˆط¬ط¯ ظپظٹ ط§ظ„ظ…طھط¬ط± ظ…ظ„ظپ ط§ظ„ط±ط¯ظˆط¯\nـپà¼¯â”†ظٹطھظ… ط§ط¯ط±ط§ط¬ ط§ظ„ظ…ظ„ظپط§طھ ظپظٹ ط§ظ„طھط­ط¯ظٹط«ط§طھ ط§ظ„ظ‚ط§ط¯ظ…ظ‡ \n â€” â€” â€” â€” â€” â€” â€” â€” â€” \n"
local TextE = "\n â€” â€” â€” â€” â€” â€” â€” â€” â€” \nـپà¼¯â”†طھط¯ظ„ ط¹ظ„ط§ظ…ط© (âœ”) ط§ظ„ظ…ظ„ظپ ظ…ظپط¹ظ„\n".."ـپà¼¯â”†طھط¯ظ„ ط¹ظ„ط§ظ…ط© (âœ–) ط§ظ„ظ…ظ„ظپ ظ…ط¹ط·ظ„\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("Co_Files/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(âœ”)"
else
CeckFile = "(âœ–)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."آ»* {`"..name..'`} آ» '..CeckFile..'\n[-  About to the file]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”† ظ„ط§ ظٹظˆط¬ط¯ ط§طھطµط§ظ„ ظ…ظ† ط§ظ„ api \n") 
end
return false
end
end

if text and text:match("^(طھط¹ط·ظٹظ„ ظ…ظ„ظپ) (.*)(.lua)$") and DevCo(msg) then
local name_t = {string.match(text, "^(طھط¹ط·ظٹظ„ ظ…ظ„ظپ) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Co_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*ـپà¼¯â”† ط§ظ„ظ…ظ„ظپ آ» {"..file.."}\nـپà¼¯â”† طھظ… طھط¹ط·ظٹظ„ظ‡ ظˆط­ط°ظپظ‡ ط¨ظ†ط¬ط§ط­ \nâœ“*"
else
t = "*ـپà¼¯â”† ط¨ط§ظ„طھط§ظƒظٹط¯ طھظ… طھط¹ط·ظٹظ„ ظˆط­ط°ظپ ظ…ظ„ظپ آ» {"..file.."} \nâœ“*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/korpica/files_korpica/master/files_korpica/"..file)
if res == 200 then
os.execute("rm -fr Co_Files/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('korpica.lua')  
else
send(msg.chat_id_, msg.id_,"*ـپà¼¯â”† ط¹ط°ط±ط§ ظ„ط§ ظٹظˆط¬ط¯ ظ‡ط§ظƒط°ط§ ظ…ظ„ظپ ظپظٹ ط§ظ„ظ…طھط¬ط± *\n") 
end
return false
end
if text and text:match("^(طھظپط¹ظٹظ„ ظ…ظ„ظپ) (.*)(.lua)$") and DevCo(msg) then
local name_t = {string.match(text, "^(طھظپط¹ظٹظ„ ظ…ظ„ظپ) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("Co_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*ـپà¼¯â”† ط¨ط§ظ„طھط§ظƒظٹط¯ طھظ… طھظ†ط²ظٹظ„ ظˆطھظپط¹ظٹظ„ ظ…ظ„ظپ آ» {"..file.."} \nâœ“*"
else
t = "*ـپà¼¯â”† ط§ظ„ظ…ظ„ظپ آ» {"..file.."}\nـپà¼¯â”† طھظ… طھظ†ط²ظٹظ„ظ‡ ظˆطھظپط¹ظٹظ„ظ‡ ط¨ظ†ط¬ط§ط­ \n*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/korpica/files_korpica/master/files_korpica/"..file)
if res == 200 then
local chek = io.open("Co_Files/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('korpica.lua')  
else
send(msg.chat_id_, msg.id_,"*ـپà¼¯â”† ط¹ط°ط±ط§ ظ„ط§ ظٹظˆط¬ط¯ ظ‡ط§ظƒط°ط§ ظ…ظ„ظپ ظپظٹ ط§ظ„ظ…طھط¬ط± *\n") 
end
return false
end
if text == "ظ…ط³ط­ ط¬ظ…ظٹط¹ ط§ظ„ظ…ظ„ظپط§طھ" and DevCo(msg) then
os.execute("rm -fr Co_Files/*")
send(msg.chat_id_,msg.id_,"ـپà¼¯â”†طھظ… ط­ط°ظپ ط¬ظ…ظٹط¹ ط§ظ„ظ…ظ„ظپط§طھ")
return false
end
if text == 'ظ†ظ‚ظ„ ط§ظ„ط§ط­طµط§ط¦ظٹط§طھ' and DevCo(msg) then
local Users = redis:smembers(''..bot_id.."userss")
local Groups = redis:smembers(''..bot_id..'groups') 
for i = 1, #Groups do
redis:sadd(bot_id..'Chek:Groups',Groups[i])  
end
for i = 1, #Users do
redis:sadd(bot_id..'UsersBot',Users[i])  
end
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… ظ†ظ‚ظ„ : '..#Groups..' ظƒط±ظˆط¨\nـپà¼¯â”†طھظ… ظ†ظ‚ظ„ : '..#Users..' ظ…ط´طھط±ظƒ \nـپà¼¯â”†ظ…ظ† ط§ظ„طھط­ط¯ظٹط« ط§ظ„ظ‚ط¯ظٹظ… ط§ظ„ظ‰ ط§ظ„طھط­ط¯ظٹط« ط§ظ„ط¬ط¯ظٹط¯')
end
if text == 'ط­ط°ظپ ظƒظ„ظٹط´ظ‡ ط§ظ„ظ…ط·ظˆط±' and DevCo(msg) then
redis:del(bot_id..'Text_Dev')
send(msg.chat_id_, msg.id_,'ـپà¼¯â”† طھظ… ط­ط°ظپ ظƒظ„ظٹط´ظ‡ ط§ظ„ظ…ط·ظˆط±')
end
if text == 'ظˆط¶ط¹ ظƒظ„ظٹط´ظ‡ ط§ظ„ظ…ط·ظˆط±' and DevCo(msg) then
redis:set(bot_id..'Set:Text_Dev'..msg.chat_id_,true)
send(msg.chat_id_,msg.id_,'ـپà¼¯â”† ط§ط±ط³ظ„ ط§ظ„ظƒظ„ظٹط´ظ‡ ط§ظ„ط§ظ†')
return false
end
if text and redis:get(bot_id..'Set:Text_Dev'..msg.chat_id_) then
if text == 'ط§ظ„ط؛ط§ط،' then 
redis:del(bot_id..'Set:Text_Dev'..msg.chat_id_)
send(msg.chat_id_,msg.id_,'ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ظپط¸ ظƒظ„ظٹط´ط© ط§ظ„ظ…ط·ظˆط±')
return false
end
redis:set(bot_id..'Text_Dev',text)
redis:del(bot_id..'Set:Text_Dev'..msg.chat_id_)
send(msg.chat_id_,msg.id_,'ـپà¼¯â”†طھظ… ط­ظپط¸ ظƒظ„ظٹط´ط© ط§ظ„ظ…ط·ظˆط±')
return false
end
if text == 'ط±ظپط¹ ط§ظ„ظ†ط³ط®ظ‡ ط§ظ„ط§ط­طھظٹط§ط·ظٹظ‡' and DevCo(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == "طھط­ط¯ظٹط«" and DevCo(msg) then
dofile("korpica.lua")  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„طھط­ط¯ظٹط«")
end

if text == 'ط§ظ„ط³ظˆط±ط³' or text == 'ط³ظˆط±ط³' or text == 'ظٹط§ط³ظˆط±ط³' or text == 'ظٹط§ ط³ظˆط±ط³' then  
local url,res = https.request('https://forhassan.ml/korpica/korp.php?id='..msg.sender_user_id_)
data = JSON.decode(url)
if data.Ch_Member.info ~= true then
send(msg.chat_id_,msg.id_,'- ط´طھط±ظƒ ظپظٹ ظ‚ظ†ط§ط© ط§ظ„ط¨ظˆطھ ط§ظˆظ„ط¢ @korpica .')   
return false 
end
Text = [[
WeLCoMe TeAM KOrAPiCa âˆ´
â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ ً–¤‚
à¼¯â”†[KOrAPiCa TeAm](http://t.me/korpica) âˆ´
à¼¯â”†[INfO KOrAPiCa](https://t.me/infokora) âˆ´
à¼¯â”†[ChAnEl](https://t.me/H6HHHH) âˆ´
à¼¯â”†[DeVeLoPeR](https://t.me/iE1BOT) âˆ´
â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ ً–¤‚
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == 'ط±ط§ط¨ط· ط§ظ„ط­ط°ظپ' or text == 'ط¨ظˆطھ ط§ظ„ط­ط°ظپ' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[âŒ” ï¸™  @LC6BOT   ]]
send(msg.chat_id_, msg.id_,Text)
end
if text == 'ط§ظ„ط§ظˆط§ظ…ط±' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
ـپà¼¯â”† ظ‡ظ†ط§ظƒ {5} ط§ظˆط§ظ…ط± ظ„ط¹ط±ط¶ظ‡ط§
 â€” â€” â€” â€” â€” â€” â€” â€” â€”
ـپà¼¯â”† ظ…1 آ» ظ„ط¹ط±ط¶ ط§ظˆط§ظ…ط± ط§ظ„ط­ظ…ط§ظٹظ‡
ـپà¼¯â”† ظ…2 آ» ظ„ط¹ط±ط¶ ط§ظˆط§ظ…ط± ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡
ـپà¼¯â”† ظ…3 آ» ظ„ط¹ط±ط¶ ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¯ط±ط§ط،
ـپà¼¯â”† ظ…4 آ» ظ„ط¹ط±ط¶ ط§ظˆط§ظ…ط± ط§ظ„ظ…ظ†ط´ط¦ظٹظ†
ـپà¼¯â”† ظ…5 آ» ظ„ط¹ط±ط¶ ط§ظˆط§ظ…ط± ط§ظ„ظ…ط·ظˆط±ظٹظ†
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
[ـپà¼¯â”†Ch Source](t.me/infokora)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'ظ…1' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط­ظ…ط§ظٹظ‡ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ظ‚ظپظ„/ظپطھط­ + ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ط§ط¯ظ†ط§ظ‡ 
ـپà¼¯â”†ظ‚ظپظ„/ظپطھط­ + ط§ظ„ط§ظ…ط± ط¨ط§ظ„طھظ‚ظٹط¯ â€¢ ط¨ط§ظ„ط·ط±ط¯ â€¢ ط¨ط§ظ„ظƒطھظ…
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ط§ظ„ط±ظˆط§ط¨ط·
ـپà¼¯â”†ط§ظ„ظ…ط¹ط±ظپ
ـپà¼¯â”†ط§ظ„طھط§ظƒ
ـپà¼¯â”†ط§ظ„ط´ط§ط±ط­ظ‡
ـپà¼¯â”†ط§ظ„طھط¹ط¯ظٹظ„
ـپà¼¯â”†ط§ظ„طھط«ط¨ظٹطھ
ـپà¼¯â”†ط§ظ„ظ…طھط­ط±ظƒظ‡
ـپà¼¯â”†ط§ظ„ظ…ظ„ظپط§طھ
ـپà¼¯â”†ط§ظ„طµظˆط±

ـپà¼¯â”†ط§ظ„ظ…ظ„طµظ‚ط§طھ
ـپà¼¯â”†ط§ظ„ظپظٹط¯ظٹظˆ
ـپà¼¯â”†ط§ظ„ط§ظ†ظ„ط§ظٹظ†
ـپà¼¯â”†ط§ظ„ط¯ط±ط¯ط´ظ‡
ـپà¼¯â”†ط§ظ„طھظˆط¬ظٹظ‡
ـپà¼¯â”†ط§ظ„ط§ط؛ط§ظ†ظٹ
ـپà¼¯â”†ط§ظ„طµظˆطھ
ـپà¼¯â”†ط§ظ„ط¬ظ‡ط§طھ
ـپà¼¯â”†ط§ظ„ط§ط´ط¹ط§ط±ط§طھ

ـپà¼¯â”†ط§ظ„ظ…ط§ط±ظƒط¯ط§ظˆظ†
ـپà¼¯â”†ط§ظ„ط¨ظˆطھط§طھ
ـپà¼¯â”†ط§ظ„طھظƒط±ط§ط±
ـپà¼¯â”†ط§ظ„ظƒظ„ط§ظٹط´
ـپà¼¯â”†ط§ظ„ط³ظٹظ„ظپظٹ
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
[ـپà¼¯â”†Ch Source](t.me/infokora)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'ظ…2' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡
 â€” â€” â€” â€” â€” â€” â€” â€” â€”  
 ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„طھط±ط­ظٹط¨
 ـپà¼¯â”†ط§ط¶ظپ /ظ…ط³ط­ طµظ„ط§ط­ظٹظ‡
ـپà¼¯â”†ظˆط¶ط¹ طھظƒط±ط§ط± + ط§ظ„ط¹ط¯ط¯
ـپà¼¯â”†ط±ظپط¹/طھظ†ط²ظٹظ„ ظ…ظ…ظٹط²
ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظƒط±ظˆط¨
ـپà¼¯â”†طھط§ظƒ ظ„ظ„ظƒظ„
 â€” â€” â€” â€” â€” â€” â€” â€” â€”
ـپà¼¯â”†ظƒطھظ…
ـپà¼¯â”†ط­ط¸ط±
ـپà¼¯â”†ط·ط±ط¯
ـپà¼¯â”†ظ…ظ†ط¹
ـپà¼¯â”†طھظ‚ظٹط¯
 â€” â€” â€” â€” â€” â€” â€” â€” â€”
 ـپà¼¯â”†ط§ظ„ظ…ظƒطھظˆظ…ظٹظ†
ـپà¼¯â”†ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ†
ـپà¼¯â”†ط§ظ„ظ…ظ…ظٹط²ظٹظ†
ـپà¼¯â”†ط§ظ„طµظ„ط§ط­ظٹط§طھ
ـپà¼¯â”†ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ظ…ظ†ط¹
 â€” â€” â€” â€” â€” â€” â€” â€” â€”
ـپà¼¯â”†ط§ظ„ط؛ط§ط، ظƒطھظ…
ـپà¼¯â”†ط§ظ„ط؛ط§ط، ط­ط¸ط±
ـپà¼¯â”†ط§ظ„ط؛ط§ط، ظ…ظ†ط¹
ـپà¼¯â”†ط§ظ„ط؛ط§ط، طھظ‚ظٹط¯
 â€” â€” â€” â€” â€” â€” â€” â€” â€”
ـپà¼¯â”†ط§ظ„ط؛ط§ط، طھط«ط¨ظٹطھ
ـپà¼¯â”†ط§ظ„ط§ط¹ط¯ط§ط¯ط§طھ
ـپà¼¯â”†طھط«ط¨ظٹطھ
ـپà¼¯â”†ط§ظ„ط±ط§ط¨ط·
ـپà¼¯â”†ط§ظ„ظ‚ظˆط§ظ†ظٹظ†
ـپà¼¯â”†ط§ظ„طھط±ط­ظٹط¨
ـپà¼¯â”†ط§ظٹط¯ظٹ
ـپà¼¯â”†ط¬ظ‡ط§طھظٹ
ـپà¼¯â”†ط³ط­ظƒط§طھظٹ
ـپà¼¯â”†ط±ط³ط§ط¦ظ„ظٹ
ـپà¼¯â”†ظƒط´ظپ ط§ظ„ط¨ظˆطھط§طھ
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ظˆط¶ط¹ ط§ط³ظ…
ـپà¼¯â”†ظˆط¶ط¹ ط±ط§ط¨ط·
ـپà¼¯â”†ظˆط¶ط¹ طµظˆط±ظ‡
ـپà¼¯â”†ظˆط¶ط¹ ظˆطµظپ
ـپà¼¯â”†ظˆط¶ط¹ ظ‚ظˆط§ظ†ظٹظ†
ـپà¼¯â”†ظˆط¶ط¹ طھط±ط­ظٹط¨
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ظ…ظ†ط¹
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ظ…ظٹط²ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ظƒطھظˆظ…ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ط·ط±ظˆط¯ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ‚ظˆط§ظ†ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ط¨ظˆطھط§طھ
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„طµظˆط±ظ‡
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„طµظ„ط§ط­ظٹط§طھ
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ط±ط§ط¨ط·
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
[ـپà¼¯â”†Ch Source](t.me/infokora)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'ظ…3' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¯ظٹط±
â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ط±ظپط¹ ط§ظ„ظ‚ظٹظˆط¯
ـپà¼¯â”†ظƒط´ظپ ط§ظ„ظ‚ظٹظˆط¯
ـپà¼¯â”†طھظ†ط²ظٹظ„ ط§ظ„ظƒظ„
ـپà¼¯â”†ط±ظپط¹ ط§ط¯ظ…ظ†
ـپà¼¯â”† طھظ†ط²ظٹظ„ ط§ط¯ظ…ظ†
ـپà¼¯â”†ط±ظپط¹ ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡
ـپà¼¯â”†ط§ظ„ط§ط¯ظ…ظ†ظٹظ‡
ـپà¼¯â”†طھط¹ظٹظ† ط§ظ„ط§ظٹط¯ظٹ
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ط§ظٹط¯ظٹ
ـپà¼¯â”†ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±
ـپà¼¯â”†ط§ط¶ظپ ط±ط¯
ـپà¼¯â”†ط­ط°ظپ ط±ط¯
ـپà¼¯â”†طھظ†ط¸ظٹظپ + ط¹ط¯ط¯
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط±ظپط¹
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط§ط¨ط±ط§ط¬
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ط·ط±ط¯ظ†ظٹ
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط²ط®ط±ظپظ‡
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط­ط³ط§ط¨ ط§ظ„ط¹ظ…ط±
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط­ط¸ط±/ط§ظ„ط·ط±ط¯
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ظ„ط¹ط¨ظ‡/ط§ظ„ط§ظ„ط¹ط§ط¨
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط§ظٹط¯ظٹ ط¨ط§ظ„طµظˆط±ظ‡
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظˆط§ظ…ط± ط§ظ„طھط­ط´ظٹط´
ـپà¼¯â”†طھظپط¹ظٹظ„/طھط¹ط·ظٹظ„ ط§ظ„ط±ط§ط¨ط·/ط¬ظ„ط¨ ط§ظ„ط±ط§ط¨ط·
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
[ـپà¼¯â”†Ch Source](t.me/infokora)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'ظ…4' and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ† 
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ط±ظپط¹/طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ
ـپà¼¯â”†ط±ظپط¹/طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦
ـپà¼¯â”†ط§ظ„ظ…ظ†ط´ط¦ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ظ†ط´ط¦ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ط±ط¯ظˆط¯ ط§ظ„ظ…ط¯ظٹط±
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط§ظ„ظ…ظ†ط´ط¦ظٹظ†
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ط±ظپط¹/طھظ†ط²ظٹظ„ ظ…ط¯ظٹط±
ـپà¼¯â”†ط§ظ„ظ…ط¯ط±ط§ط،
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ط¯ط±ط§ط،
ـپà¼¯â”†طھط¹ظٹظ†/ظ…ط³ط­ ط§ظ„ط§ظٹط¯ظٹ
ـپà¼¯â”†ط§ط¶ظپ/ط­ط°ظپ ط§ظ…ط±
ـپà¼¯â”†ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¶ط§ظپظ‡
ـپà¼¯â”†ط­ط°ظپ/ظ…ط³ط­ ط§ظ„ط§ظˆط§ظ…ط± ط§ظ„ظ…ط¶ط§ظپظ‡
ـپà¼¯â”†ط§ط¶ظپ ط±ط³ط§ط¦ظ„ + ط§ظ„ط¹ط¯ط¯ ط¨ط§ظ„ط±ط¯
ـپà¼¯â”†ط§ط¶ظپ ظ…ط¬ظˆظ‡ط±ط§طھ + ط§ظ„ط¹ط¯ط¯ ط¨ط§ظ„ط±ط¯
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
[ـپà¼¯â”†Ch Source](t.me/infokora)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'ظ…5' and DevBot(msg) then
Text = [[
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ  
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†طھط­ط¯ظٹط« 
ـپà¼¯â”†ط§ظ„ظ…ظ„ظپط§طھ 
ـپà¼¯â”†ط§ظ„ظ…طھط¬ط± 
ـپà¼¯â”†ط­ط¸ط± ط¹ط§ظ…
ـپà¼¯â”†ط§ظ„ط؛ط§ط، ط§ظ„ط¹ط§ظ…
ـپà¼¯â”†ط§ظ„ظ…ط·ظˆط±ظٹظ†
ـپà¼¯â”†ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط± 
ـپà¼¯â”†ط§ظˆط§ظ…ط± ط§ظ„ظ…ط·ظˆط± 
ـپà¼¯â”†ط§ط¶ظپ ط±ط¯ ظ„ظ„ظƒظ„ 
ـپà¼¯â”†ط­ط°ظپ ط±ط¯ ظ„ظ„ظƒظ„ 
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ط·ظˆط±ظٹظ†
ـپà¼¯â”†ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ…
ـپà¼¯â”†طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ 
ـپà¼¯â”†طھظپط¹ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ 
ـپà¼¯â”†طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡
ـپà¼¯â”†طھظپط¹ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ط©
ـپà¼¯â”† طھط­ط¯ظٹط« ط§ظ„ط³ظˆط±ط³
ـپà¼¯â”†ظ…ط³ط­ ط±ط¯ظˆط¯ ط§ظ„ظ…ط·ظˆط±
ـپà¼¯â”†ظ…ط³ط­ ط¬ظ…ظٹط¹ ط§ظ„ظ…ظ„ظپط§طھ
ـپà¼¯â”†ط§ط¶ظپ /ط­ط°ظپ ظ…ط·ظˆط± 
ـپà¼¯â”†ظˆط¶ط¹ ظƒظ„ظٹط´ظ‡ ط§ظ„ظ…ط·ظˆط± 
ـپà¼¯â”†ط­ط°ظپ ظƒظ„ظٹط´ظ‡ ط§ظ„ظ…ط·ظˆط± 
ـپà¼¯â”†طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ 
ـپà¼¯â”†طھط¹ط·ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ
ـپà¼¯â”†طھظپط¹ظٹظ„ ظ…ظ„ظپ + ط§ط³ظ… ط§ظ„ظ…ظ„ظپ
ـپà¼¯â”†طھط¹ط·ظٹظ„ ظ…ظ„ظپ + ط§ط³ظ… ط§ظ„ظ…ظ„ظپ
ـپà¼¯â”† طھط¹ظٹظ† ط¹ط¯ط¯ ط§ظ„ط§ط¹ط¶ط§ط، + ط§ظ„ط¹ط¯ط¯
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
ـپà¼¯â”†ط؛ط§ط¯ط± 
ـپà¼¯â”†ط§ط°ط§ط¹ظ‡ 
ـپà¼¯â”†ط±ظپط¹ ظ…ظ†ط´ط¦ 
ـپà¼¯â”†ط§ط°ط§ط¹ظ‡ ط®ط§طµ 
ـپà¼¯â”†ط§ظ„ط§ط­طµط§ط¦ظٹط§طھ 
ـپà¼¯â”†ط؛ط§ط¯ط± + ط§ظ„ط§ظٹط¯ظٹ
ـپà¼¯â”†طھظپط¹ظٹظ„ /طھط¹ط·ظٹظ„
ـپà¼¯â”†ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡
ـپà¼¯â”†ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھط«ط¨ظٹطھ 
ـپà¼¯â”†ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ† 
ـپà¼¯â”†ط±ظپط¹/طھظ†ط²ظٹظ„ ظ…ظ†ط´ط¦ ط§ط³ط§ط³ظٹ
ـپà¼¯â”†ظ…ط³ط­ ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ†
 â€” â€” â€” â€” â€” â€” â€” â€” â€” 
[ـپà¼¯â”†Ch Source](t.me/infokora)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end

end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 

if text == 'طھظپط¹ظٹظ„' and DevBot(msg) then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(redis:get(bot_id..'Num:Add:Bot') or 0) and not DevCo(msg) then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ط¯ط¯ ط§ط¹ط¶ط§ط، ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ط§ظ‚ظ„ ظ…ظ† *~ {'..(redis:get(bot_id..'Num:Add:Bot') or 0)..'* ط¹ط¶ظˆ')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if redis:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ظ…ظپط¹ظ„ظ‡ ط³ط§ط¨ظ‚ط§ ')
else
Reply_Status(msg,result.id_,'reply_Add','ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ '..chat.title_..'')
redis:sadd(bot_id..'Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ظ„ط§ ظٹظˆط¬ط¯'
end
Text = 'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ظ…ط¬ظ…ظˆط¹ظ‡ ط¬ط¯ظٹط¯ظ‡\n'..
'\nـپà¼¯â”†ط¨ظˆط§ط³ط·ط© ~ '..Name..''..
'\nـپà¼¯â”†ط§ظٹط¯ظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ `'..IdChat..'`'..
'\nـپà¼¯â”†ط¹ط¯ط¯ ط§ط¹ط¶ط§ط، ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ *~ '..NumMember..'*'..
'\nـپà¼¯â”†ط§ط³ظ… ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ ['..NameChat..']'..
'\nـپà¼¯â”†ط§ظ„ط±ط§ط¨ط· ~ ['..LinkGp..']'
if not DevCo(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'طھط¹ط·ظٹظ„' and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not redis:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ط³ط§ط¨ظ‚ط§ ')
else
Reply_Status(msg,result.id_,'reply_Add','ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ '..chat.title_..'')
redis:srem(bot_id..'Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ظ„ط§ ظٹظˆط¬ط¯'
end
Text = 'ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ظ…ط¬ظ…ظˆط¹ظ‡ ط¬ط¯ظٹط¯ظ‡\n'..
'\nـپà¼¯â”†ط¨ظˆط§ط³ط·ط© ~ '..Name..''..
'\nـپà¼¯â”†ط§ظٹط¯ظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ `'..IdChat..'`'..
'\nـپà¼¯â”†ط§ط³ظ… ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ ['..NameChat..']'..
'\nـپà¼¯â”†ط§ظ„ط±ط§ط¨ط· ~ ['..LinkGp..']'
if not DevCo(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'طھظپط¹ظٹظ„' and not DevBot(msg) and not redis:get(bot_id..'Free:Add:Bots') then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ظٹط±ط¬ظ‰ طھط±ظ‚ظٹطھظٹ !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'ط§ظ„ظ…ظ†ط´ط¦'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'ط§ظ„ط§ط¯ظ…ظ†'
else 
var= 'ط¹ط¶ظˆ'
end
if redis:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ظ…ظپط¹ظ„ظ‡ ط³ط§ط¨ظ‚ط§ ')
else
if tonumber(data.member_count_) < tonumber(redis:get(bot_id..'Num:Add:Bot') or 0) and not DevCo(msg) then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ط¯ط¯ ط§ط¹ط¶ط§ط، ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ط§ظ‚ظ„ ظ…ظ† *~ {'..(redis:get(bot_id..'Num:Add:Bot') or 0)..'* ط¹ط¶ظˆ')
return false
end
Reply_Status(msg,result.id_,'reply_Add','ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ '..chat.title_..'')
redis:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
redis:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'ظ„ط§ ظٹظˆط¬ط¯'
end
Text = 'ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ظ…ط¬ظ…ظˆط¹ظ‡ ط¬ط¯ظٹط¯ظ‡\n'..
'\nـپà¼¯â”†ط¨ظˆط§ط³ط·ط© ~ '..Name..''..
'\nـپà¼¯â”†ظ…ظˆظ‚ط¹ظ‡ ظپظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ '..AddPy..'' ..
'\nـپà¼¯â”†ط§ظٹط¯ظٹ ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ `'..IdChat..'`'..
'\nـپà¼¯â”†ط¹ط¯ط¯ ط§ط¹ط¶ط§ط، ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ *~ '..NumMember..'*'..
'\nـپà¼¯â”†ط§ط³ظ… ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡ ~ ['..NameChat..']'..
'\nـپà¼¯â”†ط§ظ„ط±ط§ط¨ط· ~ ['..LinkGp..']'
if not DevCo(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end

if Chat_Type == 'UserBot' then
if text == '/start' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = redis:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ظ€ظ„ظٹظƒ ط§ظ„ط§ط´ظ€طھà¢ھط§ظƒ ظپظٹ ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ ط§ظˆظ„ط¢ . \n ـپà¼¯â”†ظ‚ظ†ظ€ط§ط© ط§ظ„ط¨ظ€ظˆطھ â†گ  ['..redis:get(bot_id..'add:ch:username')..']')
end
return false
end  
if DevCo(msg) then
local Text = 'ـپà¼¯â”†ظ…ط±ط­ط¨ط§ ط¨ظƒ ظپظٹ ط§ظˆط§ظ…ط± ط§ظ„ظ…ط·ظˆط± ط§ظ„ط¬ط§ظ‡ط²ظ‡'
local keyboard = {
{'ط§ظ„ط§ط­طµط§ط¦ظٹط§طھ âŒ”'},
{'طھظپط¹ظٹظ„ ط§ظ„طھظˆط§طµظ„ âŒ”','طھط¹ط·ظٹظ„ ط§ظ„طھظˆط§طµظ„ âŒ”'},
{'طھظ†ط¸ظٹظپ ط§ظ„ظƒط±ظˆط¨ط§طھ âŒ”','طھظ†ط¸ظٹظپ ط§ظ„ظ…ط´طھط±ظƒظٹظ† âŒ”'},
{'طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ âŒ”','طھط¹ط·ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ âŒ”'},
{'ط§ط°ط§ط¹ظ‡ ط®ط§طµ âŒ”','ط§ظ„ظ…ط·ظˆط±ظٹظ† âŒ”','ط§ط°ط§ط¹ظ‡ âŒ”'},
{'ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡ âŒ”','ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡ ط®ط§طµ âŒ”'},
{'طھظپط¹ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ âŒ”','طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ âŒ”'},
{'طھظپط¹ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ظ‡ âŒ”','طھط¹ط·ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ظ‡ âŒ”'},
{'ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ… âŒ”','ظ…ط³ط­ ط§ظ„ظ…ط·ظˆط±ظٹظ† âŒ”'},
{'ط­ط°ظپ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ âŒ”','ط¶ط¹ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ âŒ”'},
{'- طھط¹ط·ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ âŒ” .'},
{'- طھط؛ظٹط± ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .','ط­ط°ظپ ط±ط³ط§ظ„ظ‡ ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .'},
{'- طھظپط¹ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ âŒ” .'},
{'- ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ âŒ” .'},
{'- طھط¹ظٹظ† ظ‚ظ†ط§ط© ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .','- طھط؛ظٹط± ط±ط³ط§ظ„ظ‡ ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .'},
{'طھط­ط¯ظٹط« ط§ظ„ط³ظˆط±ط³ âŒ”','طھط­ط¯ظٹط« ط§ظ„ظ…ظ„ظپط§طھ âŒ”'},
{'ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ… âŒ”'},
{'ط¬ظ„ط¨ ظ†ط³ط®ظ‡ ط§ط­طھظٹط§ط·ظٹظ‡ âŒ”'},
{'ط§ظ„ط؛ط§ط، âŒ”'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
else
if not redis:get(bot_id..'Start:Time'..msg.sender_user_id_) then
local start = redis:get(bot_id.."Start:Bot")  
if start then 
Test = start
else
Test = 'ـپà¼¯â”†ظ…ط±ط­ط¨ط§ ط§ظ†ط§ ط¨ظˆطھ ط­ظ…ط§ظٹط© ظƒط±ظˆط¨ط§طھ\nـپà¼¯â”†ظˆط¶ظٹظپطھظٹ ط­ظ…ط§ظٹط© ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ ظ…ظ† ط§ظ„ط³ط¨ط§ظ… ظˆط§ظ„طھظپظ„ظٹط´ ظˆط§ظ„ط®...\nـپà¼¯â”†ظ„طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ط¶ظپظ†ظٹ ط§ظ„ظ‰ ظ…ط¬ظ…ظˆط¹ط§طھظƒ ظ‚ظ… ط¨ط±ظپط¹ظٹ ظ…ط´ط±ظپ ط«ظ… ط§ط±ط³ظ„ طھظپط¹ظٹظ„ \nـپà¼¯â”†ظ…ط¹ط±ظپ ط§ظ„ظ…ط·ظˆط± ['..UserName..']'
end 
send(msg.chat_id_, msg.id_, Test) 
end
end
redis:setex(bot_id..'Start:Time'..msg.sender_user_id_,60,true)
return false
end
if not DevCo(msg) and not redis:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not redis:get(bot_id..'Texting:In:Bv') then
send(msg.sender_user_id_,msg.id_,'ـپà¼¯â”†طھظ…طھ ط§ط±ط³ط§ظ„ ط±ط³ط§ظ„طھظƒ ط§ظ„ظ‰ ~ ['..UserName..']')    
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'ـپà¼¯â”†طھظ… ط§ط±ط³ط§ظ„ ط§ظ„ظ…ظ„طµظ‚ ظ…ظ† ~ ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevCo(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'ط­ط¸ط±' then
sendText(Id_Sudo,'ـپà¼¯â”† ظ„ط´ط®طµ آ» ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nـپà¼¯â”† طھظ… ط­ط¸ط±ظ‡ ظ…ظ† ط§ظ„طھظˆط§طµظ„ ',msg.id_/2097152/0.5,'md')
redis:sadd(bot_id..'BaN:In:User',data.id_)  
return false  
end 
if text =='ط§ظ„ط؛ط§ط، ط§ظ„ط­ط¸ط±' then
sendText(Id_Sudo,'ـپà¼¯â”†ط§ظ„ط´ط®طµ آ» ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nـپà¼¯â”† طھظ… ط§ظ„ط؛ط§ط، ط­ط¸ط±ظ‡ ظ…ظ† ط§ظ„طھظˆط§طµظ„ ',msg.id_/2097152/0.5,'md')
redis:srem(bot_id..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\nـپà¼¯â”† ظپط´ظ„ ط§ط±ط³ط§ظ„ ط±ط³ط§ظ„طھظƒ ظ„ط§ظ† ط§ظ„ط¹ط¶ظˆ ظ‚ط§ظ… ط¨ط­ط¸ط± ط§ظ„ط¨ظˆطھ') 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
Text = 'ـپà¼¯â”†طھظ…طھ ط§ط±ط³ط§ظ„ ط§ظ„ط±ط³ط§ظ„ظ‡ ط§ظ„ظٹظ‡ .. '
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)   
Text = 'ـپà¼¯â”†طھظ…طھ ط§ط±ط³ط§ظ„ ط§ظ„ظ…ظ„طµظ‚ ط§ظ„ظٹظ‡ .. '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = 'ـپà¼¯â”†طھظ…طھ ط§ط±ط³ط§ظ„ ط§ظ„طµظˆط±ظ‡ ط§ظ„ظٹظ‡ .. '
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)    
Text = 'ـپà¼¯â”†طھظ…طھ ط§ط±ط³ط§ظ„ ط§ظ„ظ…طھط­ط±ظƒظ‡ ط§ظ„ظٹظ‡ .. '
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)    
Text = 'ـپà¼¯â”†طھظ…طھ ط§ط±ط³ط§ظ„ ط§ظ„ط¨طµظ…ظ‡ ط§ظ„ظٹظ‡ .. '
end     
sendText(Id_Sudo,Text..'\n'..'ـپà¼¯â”† ~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if DevCo(msg) then
if text == 'طھظپط¹ظٹظ„ ط§ظ„طھظˆط§طµظ„ âŒ”' then  
redis:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”† طھظ… طھظپط¹ظٹظ„ ط§ظ„طھظˆط§طµظ„ ') 
end
if text == 'طھط¹ط·ظٹظ„ ط§ظ„طھظˆط§طµظ„ âŒ”' then  
redis:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”† طھظ… طھط¹ط·ظٹظ„ ط§ظ„طھظˆط§طµظ„ ') 
end
if text =='ط§ظ„ط§ط­طµط§ط¦ظٹط§طھ âŒ”' then
local Groups = redis:scard(bot_id..'Chek:Groups')  
local Users = redis:scard(bot_id..'UsersBot')  
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ط­طµط§ط¦ظٹط§طھ ط§ظ„ط¨ظˆطھ \n\nـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ *~ '..Groups..'\nـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ط´طھط±ظƒظٹظ† ~ '..Users..'*')
end
if text == "طھظ†ط¸ظٹظپ ط§ظ„ظ…ط´طھط±ظƒظٹظ† âŒ”" then
local pv = redis:smembers(bot_id..'UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33mآ»آ» THE USER IS SAVE ME â†“\nآ»آ» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31mآ»آ» THE USER IS BLOCK ME â†“\nآ»آ» '..pv[i]..'\n\27[1;37m')
redis:srem(bot_id..'UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط´طھط±ظƒظٹظ† ظˆظ‡ظ…ظٹظٹظ†')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*ـپà¼¯â”†ط¹ط¯ط¯ ط§ظ„ظ…ط´طھط±ظƒظٹظ† ط§ظ„ط§ظ† ~ '..#pv..'\nـپà¼¯â”†طھظ… ط§ظ„ط¹ط«ظˆط± ط¹ظ„ظ‰ ~ '..sendok..' ظ…ط´طھط±ظƒ ظ‚ط§ظ… ط¨ط­ط¸ط± ط§ظ„ط¨ظˆطھ\nـپà¼¯â”†ط§طµط¨ط­ ط¹ط¯ط¯ ط§ظ„ظ…ط´طھط±ظƒظٹظ† ط§ظ„ط§ظ† ~ '..ok..' ظ…ط´طھط±ظƒ *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "طھظ†ط¸ظٹظپ ط§ظ„ظƒط±ظˆط¨ط§طھ âŒ”" then
local group = redis:smembers(bot_id..'Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34mآ»آ» THE BOT IS NOT ADMIN â†“\nآ»آ» '..group[i]..'\n\27[1;37m')
redis:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
redis:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;35mآ»آ» THE BOT IS LEFT GROUP â†“\nآ»آ» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
redis:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
print('\27[30;36mآ»آ» THE BOT IS KICKED GROUP â†“\nآ»آ» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
redis:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ظ„ط§ طھظˆط¬ط¯ ظ…ط¬ظ…ظˆط¹ط§طھ ظˆظ‡ظ…ظٹظ‡ ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\nـپà¼¯â”† طھظ… ط§ط²ط§ظ„ط© ~ '..q..' ظ…ط¬ظ…ظˆط¹ط§طھ ظ…ظ† ط§ظ„ط¨ظˆطھ'
end
if w == 0 then
storm = ''
else
storm = '\nـپà¼¯â”† طھظ… ط§ط²ط§ظ„ط© ~'..w..' ظ…ط¬ظ…ظˆط¹ظ‡ ظ„ط§ظ† ط§ظ„ط¨ظˆطھ ط¹ط¶ظˆ'
end
send(msg.chat_id_, msg.id_,'*ـپà¼¯â”† ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„ط§ظ† ~ '..#group..' ظ…ط¬ظ…ظˆط¹ظ‡ '..storm..''..taha..'\nـپà¼¯â”†ط§طµط¨ط­ ط¹ط¯ط¯ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„ط§ظ† ~ '..sendok..' ظ…ط¬ظ…ظˆط¹ط§طھ*\n')   
end
end
end,nil)
end
return false
end
if text == 'طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ âŒ”' then
redis:del(bot_id..'Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\nـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ ') 
end
if text == 'طھط¹ط·ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ âŒ”' then
redis:set(bot_id..'Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\nـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط¨ظˆطھ ط§ظ„ط®ط¯ظ…ظٹ') 
end
if text=="ط§ط°ط§ط¹ظ‡ ط®ط§طµ âŒ”" and msg.reply_to_message_id_ == 0 then
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط³ظˆط§ط، ~ { ظ…ظ„طµظ‚, ظ…طھط­ط±ظƒظ‡, طµظˆط±ظ‡, ط±ط³ط§ظ„ظ‡ }\nـپà¼¯â”†ظ„ظ„ط®ط±ظˆط¬ ط§ط±ط³ظ„ ط§ظ„ط؛ط§ط، ") 
return false
end 
if text=="ط§ط°ط§ط¹ظ‡ âŒ”" and msg.reply_to_message_id_ == 0 then
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط³ظˆط§ط، ~ { ظ…ظ„طµظ‚, ظ…طھط­ط±ظƒظ‡, طµظˆط±ظ‡, ط±ط³ط§ظ„ظ‡ }\nـپà¼¯â”†ظ„ظ„ط®ط±ظˆط¬ ط§ط±ط³ظ„ ط§ظ„ط؛ط§ط، ") 
return false
end  
if text=="ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡ âŒ”" and msg.reply_to_message_id_ == 0  then
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„طھظˆط¬ظٹظ‡ ط§ظ„ط§ظ†") 
return false
end 
if text=="ط§ط°ط§ط¹ظ‡ ط¨ط§ظ„طھظˆط¬ظٹظ‡ ط®ط§طµ âŒ”" and msg.reply_to_message_id_ == 0  then
if redis:get(bot_id.."Status:Bc") and not DevCo(msg) then 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط°ط§ط¹ظ‡ ظ…ط¹ط·ظ„ظ‡ ظ…ظ† ظ‚ط¨ظ„ ط§ظ„ظ…ط·ظˆط± ط§ظ„ط§ط³ط§ط³ظٹ")
return false
end
redis:setex(bot_id.."Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„طھظˆط¬ظٹظ‡ ط§ظ„ط§ظ†") 
return false
end 
if text == "طھظپط¹ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ âŒ”" then
redis:del(bot_id.."Status:Bc") 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ " ) 
return false
end 
if text == "طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡ âŒ”" then
redis:set(bot_id.."Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ط°ط§ط¹ظ‡") 
return false
end 
if text == "طھظپط¹ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ظ‡ âŒ”" then
redis:del(bot_id.."Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ظ…ط؛ط§ط¯ط±ط© ط§ظ„ط¨ظˆطھ") 
return false 
end
if text == "طھط¹ط·ظٹظ„ ط§ظ„ظ…ط؛ط§ط¯ط±ظ‡ âŒ”" then
redis:set(bot_id.."Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ظ…ط؛ط§ط¯ط±ط© ط§ظ„ط¨ظˆطھ") 
return false 
end
if text and redis:get(bot_id..'Start:Bots') then
if text == 'ط§ظ„ط؛ط§ط، âŒ”' then   
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط­ظپط¸ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ") 
redis:del(bot_id..'Start:Bots') 
return false
end
redis:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… ط­ظپط¸ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ') 
redis:del(bot_id..'Start:Bots') 
return false
end
if text == 'ط¶ط¹ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ âŒ”' then
redis:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„ظƒظ„ظٹط´ظ‡ ط§ظ„ط§ظ†') 
return false
end
if text == 'ط­ط°ظپ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ âŒ”' then
redis:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… ط­ط°ظپ ظƒظ„ظٹط´ظ‡ ط³طھط§ط±طھ') 
end
if text and text:match("^- طھط؛ظٹط± ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .$") and DevCo(msg) then  
redis:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط­ط³ظ†ط¢ ط§ط±ط³ظ„ ظ„ظٹ ظ…ط¹ط±ظپ ط§ظ„ظ‚ظ†ط§ط©')
return false  
end
if text and text:match("^- طھط؛ظٹط± ط±ط³ط§ظ„ظ‡ ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .$") and DevCo(msg) then  
redis:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط­ط³ظ†ط¢ ط§ط±ط³ظ„ ظ„ظٹ ط§ظ„ظ†طµ ط§ظ„ط°ظٹ طھط±ظٹط¯ظ‡')
return false  
end
if text == "ط­ط°ظپ ط±ط³ط§ظ„ظ‡ ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” ." and DevCo(msg) then  
redis:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ظ…ط³ط­ ط±ط³ط§ظ„ظ‡ ط§ظ„ط§ط´طھط±ط§ظƒ ")
return false  
end
if text and text:match("^- طھط¹ظٹظ† ظ‚ظ†ط§ط© ط§ظ„ط§ط´طھط±ط§ظƒ âŒ” .$") and DevCo(msg) then  
redis:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط­ط³ظ†ط¢ ط§ط±ط³ظ„ ظ„ظٹ ظ…ط¹ط±ظپ ط§ظ„ظ‚ظ†ط§ط©')
return false  
end
if text == "- طھظپط¹ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ âŒ” ." and DevCo(msg) then  
if redis:get(bot_id..'add:ch:id') then
local addchusername = redis:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ ظ…ظپط¹ظ„ \nـپà¼¯â”†ط¹ظ„ظ‰ ط§ظ„ظ‚ظ†ط§ط© آ» ["..addchusername.."]")
else
redis:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ط§ظ‡ظ„ط§ ط¹ط²ظٹط²ظٹ ط§ظ„ظ…ط·ظˆط± \nـپà¼¯â”†ط§ط±ط³ظ„ ط§ظ„ط§ظ† ظ…ط¹ط±ظپ ظ‚ظ†ط§طھظƒ")
end
return false  
end
if text == "- طھط¹ط·ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ âŒ” ." and DevCo(msg) then  
redis:del(bot_id..'add:ch:id')
redis:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… طھط¹ط·ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ ")
return false  
end
if text == "- ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ âŒ” ." and DevCo(msg) then  
if redis:get(bot_id..'add:ch:username') then
local addchusername = redis:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ \nـپà¼¯â”†ط¹ظ„ظ‰ ط§ظ„ظ‚ظ†ط§ط© آ» ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ‚ظ†ط§ط© ظپظٹ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ ")
end
return false  
end
if redis:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ط§ظ„ط؛ط§ط،$") then 
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ظ…ط± ")
redis:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
redis:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({    
ID = "SearchPublicChat",    
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط§ظ„ظ…ط¹ط±ظپ ظ„ط§ ظٹظˆط¬ط¯ ظپظٹظ‡ ظ‚ظ†ط§ط©')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, 'ـپà¼¯â”†ط¹ط°ط§ ظ„ط§ ظٹظ…ظƒظ†ظƒ ظˆط¶ط¹ ظ…ط¹ط±ظپ ط­ط³ط§ط¨ط§طھ ظپظٹ ط§ظ„ط§ط´طھط±ط§ظƒ ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ط°ط§ ظ„ط§ ظٹظ…ظƒظ†ظƒ ظˆط¶ط¹ ظ…ط¹ط±ظپ ظ…ط¬ظ…ظˆط¹ظ‡ ط¨ط§ظ„ط§ط´طھط±ط§ظƒ ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط§ظ„ط¨ظˆطھ ط§ط¯ظ…ظ† ظپظٹ ط§ظ„ظ‚ظ†ط§ط© \nـپà¼¯â”†طھظ… طھظپط¹ظٹظ„ ط§ظ„ط§ط´طھط±ط§ظƒ ط§ظ„ط§ط¬ط¨ط§ط±ظٹ ظپظٹ \nـپà¼¯â”†ط§ظٹط¯ظٹ ط§ظ„ظ‚ظ†ط§ط© ('..data.id_..')\nـپà¼¯â”†ظ…ط¹ط±ظپ ط§ظ„ظ‚ظ†ط§ط© ([@'..data.type_.channel_.username_..'])')
redis:set(bot_id..'add:ch:id',data.id_)
redis:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†ط¹ط°ط±ط¢ ط§ظ„ط¨ظˆطھ ظ„ظٹط³ ط§ط¯ظ…ظ† ط¨ط§ظ„ظ‚ظ†ط§ظ‡ ')
end
return false  
end
end,nil)
end
if redis:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^ط§ظ„ط؛ط§ط،$") then 
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„ط؛ط§ط، ط§ظ„ط§ظ…ط± ")
redis:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
redis:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
redis:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,'ـپà¼¯â”†طھظ… طھط؛ظٹظٹط± ط±ط³ط§ظ„ط© ط§ظ„ط§ط´طھط±ط§ظƒ ')
end
if text == ("ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ… âŒ”") and DevCo(msg) then
redis:del(bot_id.."GBan:User")
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”†طھظ… ظ…ط³ط­ ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ…")
return false
end
if text == ("ظ…ط³ط­ ط§ظ„ظ…ط·ظˆط±ظٹظ† âŒ”") and DevCo(msg) then
redis:del(bot_id.."Sudo:User")
send(msg.chat_id_, msg.id_, "\nـپà¼¯â”† طھظ… ظ…ط³ط­ ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ط·ظˆط±ظٹظ†  ")
end
if text == ("ظ‚ط§ط¦ظ…ظ‡ ط§ظ„ط¹ط§ظ… âŒ”") and DevCo(msg) then
local list = redis:smembers(bot_id.."GBan:User")
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ط§ظ„ظ…ط­ط¸ظˆط±ظٹظ† ط¹ط§ظ… \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط­ط¸ظˆط±ظٹظ† ط¹ط§ظ…"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("ط§ظ„ظ…ط·ظˆط±ظٹظ† âŒ”") and DevCo(msg) then
local list = redis:smembers(bot_id.."Sudo:User")
t = "\nـپà¼¯â”†ظ‚ط§ط¦ظ…ط© ظ…ط·ظˆط±ظٹظ† ط§ظ„ط¨ظˆطھ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ظ…ط·ظˆط±ظٹظ†"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'ط¬ظ„ط¨ ظ†ط³ط®ظ‡ ط§ط­طھظٹط§ط·ظٹظ‡ âŒ”' then
local list = redis:smembers(bot_id..'Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'Co Chat'
ASAS = redis:smembers(bot_id.."Basic:Constructor"..v)
MNSH = redis:smembers(bot_id.."Constructor"..v)
MDER = redis:smembers(bot_id.."Manager"..v)
MOD = redis:smembers(bot_id.."Mod:User"..v)
link = redis:get(bot_id.."Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"Co":"'..NAME..'",'
else
t = t..',"'..v..'":{"Co":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'ـپà¼¯â”† ط¹ط¯ط¯ ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„طھظٹ ظپظٹ ط§ظ„ط¨ظˆطھ { '..#list..'}')
end
if text == "طھط­ط¯ظٹط« ط§ظ„ط³ظˆط±ط³ âŒ”" then
send(msg.chat_id_,msg.id_,'ـپà¼¯â”†طھظ… ط§ظ„طھط­ط¯ظٹط«')
os.execute('rm -rf korpica.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/korapica-Team/korpica/master/korpica.lua')
os.execute('wget https://raw.githubusercontent.com/korapica-Team/korpica/master/start.lua')
dofile('korpica.lua')  
return false
end
if text == "طھط­ط¯ظٹط« ط§ظ„ظ…ظ„ظپط§طھ âŒ”" then
dofile("korpica.lua")  
send(msg.chat_id_, msg.id_, "ـپà¼¯â”†طھظ… ط§ظ„طھط­ط¯ظٹط«")
end
end
end --- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
redis:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then  
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then   
if redis:get(bot_id.."Lock:tagservr"..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false
end    
end   
if text and not redis:sismember(bot_id..'Spam:Group'..msg.sender_user_id_,text) then
redis:del(bot_id..'Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
redis:set(bot_id..'User:Name'..msg.sender_user_id_,data.username_)
end;end,nil)   
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
redis:set(bot_id.."Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = redis:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = redis:get(bot_id.."Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "del" then   
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
------------------------------------------------------------------------
if text and redis:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = redis:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
redis:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
redis:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
redis:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†طھظ… ط§ط²ط§ظ„ط© ط§ظ„ط§ظ…ط± ظ…ظ† ط§ظ„ظ…ط¬ظ…ظˆط¹ظ‡")  
else
send(msg.chat_id_, msg.id_,"ـپà¼¯â”†ظ„ط§ ظٹظˆط¬ط¯ ط§ظ…ط± ط¨ظ‡ط§ط°ط§ ط§ظ„ط§ط³ظ… طھط§ظƒط¯ ظ…ظ† ط§ظ„ط§ظ…ط± ظˆط§ط¹ط¯ ط§ظ„ظ…ط­ط§ظˆظ„ظ‡")  
end
redis:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = redis:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (redis:get(bot_id.."Name:Bot") or "ظƒظˆط±ط¨ظٹظƒط§")
if not redis:get(bot_id.."Fun_Bots"..msg.chat_id_) then
if text ==  ""..Name_Bot..' ط´ظ†ظˆ ط±ط¦ظٹظƒ ط¨ظ‡ط§ط°ط§' and tonumber(msg.reply_to_message_id_) > 0 then     
function FunBot(extra, result, success) 
local Fun = {'ظ„ظˆظƒظٹ ظˆط²ط§ط­ظپ ظ…ظ† ط³ط§ط¹ ط²ط­ظپظ„ظٹ ظˆط­ط¶ط±طھظ‡ ًںک’','ط®ظˆط´ ظˆظ„ط¯ ظˆ ظˆط±ط¯ظ‡ ظ…ط§ظ„ ط§ظ„ظ„ظ‡ ًں™„','ظٹظ„ط¹ط¨ ط¹ ط§ظ„ط¨ظ†ط§طھ ًں™„', 'ظˆظ„ط¯ ط²ط§ظٹط¹طھظ‡ ط§ظ„ظƒط§ط¹ ًںک¶ًں™ٹ','طµط§ظƒ ظٹط®ط¨ظ„ ظˆظ…ط¹ط¶ظ„ ','ظ…ط­ظ„ظˆ ظˆط´ظˆط§ط±ط¨ظ‡ ط¬ظ†ظ‡ط§ ظ…ظƒظ†ط§ط³ظ‡ ًںک‚ًں¤·ًںڈ¼â€چâ™€ï¸ڈ','ط§ظ…ظˆطھ ط¹ظ„ظٹظ‡ ًںŒ‌','ظ‡ظˆظ‡ ط؛ظٹط± ط§ظ„ط­ط¨ ظ…ط§ظ„ ط§ظ†ظٹ â‌¤ï¸ڈ','ظ…ظˆ ط®ظˆط´ ظˆظ„ط¯ طµط±ط§ط­ظ‡ âک¹ï¸ڈ','ط§ط¯ط¨ط³ط² ظˆظ…ظٹط­طھط±ظ… ط§ظ„ط¨ظ†ط§طھ  ', 'ظپط¯ ظˆط§ط­ط¯ ظ‚ط°ط± ًں™„ًںک’','ظ…ط§ط·ظٹظ‚ظ‡ ظƒظ„ ظ…ط§ ط§ظƒظ…ط´ظ‡ ط±ظٹط­طھظ‡ ط¬ظ†ظ‡ط§ ط¨ط®ط§ط® ط¨ظپ ط¨ط§ظپ ظ…ط§ظ„ ط­ط´ط±ط§طھ ًںک‚ًں¤·â€چâ™€ï¸ڈ','ظ…ظˆ ط®ظˆط´ ظˆظ„ط¯ ًں¤“' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' ط´ظ†ظˆ ط±ط¦ظٹظƒ ط¨ظ‡ط§ظٹ' and tonumber(msg.reply_to_message_id_) > 0 then    
function FunBot(extra, result, success) 
local Fun = {'ط§ظ„ظƒط¨ط¯ ظ…ط§ظ„ ط§ظ†ظٹ ظ‡ظٹظ‡ ','ط®طھظˆظ„ظٹ ظ…ط§ط­ط¨ظ‡ط§ ','ط®ط§ظ†طھظ†ظٹ ظˆظٹظ‡ طµط¯ظٹظ‚ظٹ ًںک”','ط¨ط³ ظ„ظˆ ط§ظ„ظƒظپظ‡ط§ ط§ظ„ظ‡ ط§ط¹ط¶ظ‡ط§ ًں’”','ط®ظˆط´ ط¨ظ†ظٹظ‡ ط¨ط³ ط¹ط¯ظ‡ ظ…ظƒط³ط±ط§طھ ط²ط§ظٹط¯ظ‡ ظˆظ†ط§ظ‚طµظ‡ ظ…ظ†ط§ ظˆظ…ظ†ط§ ظˆظ‡ظٹظ‡ طھط¯ط±ظٹ ط¨ظ†ظپط³ظ‡ط§ ًںک’','ط¬ط°ط§ط¨ظ‡ ظˆظ…ظ†ط§ظپظ‚ظ‡ ط³ظˆطھظ„ظٹ ظ…ط´ظƒظ„ظ‡ ظˆظٹظ‡ ط§ظ„ط­ط¨ ظ…ط§ظ„طھظٹ ','ط¦ظˆظˆظˆظˆظˆظˆظˆظˆظپ ط§ظ…ظˆطھ ط¹ ط±ط¨ظ‡ط§ ','ط¯ظٹط±ظˆ ط¨ط§ظ„ظƒظ… ظ…ظ†ظ‡ط§ طھظ„ط¹ط¨ ط¹ ط§ظ„ظˆظ„ط¯ ًںک¶ ط¶ط­ظƒطھ ط¹ ظˆط§ط­ط¯ ظ‚ط·طھظ‡ ط§ظٹظپظˆظ† 7 ','طµط¯ظٹظ‚طھظٹ ظˆط®طھظٹ ظˆط±ظˆط­ظٹ ظˆط­ظٹط§طھظٹ ','ظپط¯ ظˆط­ط¯ظ‡ ظ…ظ†ط­ط±ظپظ‡ ًںک¥','ط³ط§ظƒظ†ظ‡ ط¨ط§ظ„ط¹ظ„ط§ظˆظٹ ظˆظ†طھظ‡ ط­ط¯ط¯ ط¨ط¹ط¯ ظ„ط³ط§ظ†ظ‡ط§ ظ„ط³ط§ظ† ط¯ظ„ط§ظ„ظ‡ ًں™„ًں¤گ','ط§ظ… ط³ط­ظˆط±ظ‡ ط³ط­ط±طھ ط§ط®ظˆظٹط§ ظˆط¹ظ„ظƒطھظ‡ 6 ط³ظ†ظˆط§طھ ًں¤•','ظ…ط§ط­ط¨ظ‡ط§ ًں™پ','ط¨ظ„ظ‡ ظ‡ط§ظٹ ط¬ظ‡ط±ظ‡ طھط³ط¦ظ„ ط¹ظ„ظٹظ‡ط§ طں ','ط¨ط±ط¨ظƒ ط¦ظ†طھظ‡ ظˆط§ظ„ظ„ظ‡ ظپط§ط±ط؛ ظˆط¨ط·ط±ط§ظ† ظˆظ…ط§ط¹ط¯ظƒ ط´ظٹ طھط³ظˆظٹ ط¬ط§ظٹ طھط³ط¦ظ„ ط¹ ط¨ظ†ط§طھ ط§ظ„ط¹ط§ظ„ظ… ظˆظ„ظٹ ظٹظ„ظ‡ ًںڈ¼','ظٹط§ط®ظٹ ط¨ظ†ظٹظ‡ ط­ط¨ظˆط¨ظ‡ ط¨ط³ ظ„ط¨ط¹ط±ظƒ ظ…ط¹ظ…ظٹ ط¹ظ„ظٹظ‡ط§ طھط´ط±ط¨ ظ‡ظˆط§ظٹ ًںک¹' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end    
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
------------------------------------------------------------------------
Co_Started_Bot(msg,data)
Co_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
redis:incr(bot_id..'message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if redis:get(bot_id.."Lock:edit"..msg.chat_id_) and not Text and not BasicConstructor(result) then
local list = redis:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "\nـپà¼¯â”† ط§ظ„ظ…ظ†ط´ط¦ظٹظ† ط§ظ„ط§ط³ط§ط³ظٹظ† طھط¹ط§ظ„ظˆ ظ…ط®ط±ط¨ \nâ”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ â”‰ \n"
for k,v in pairs(list) do
local username = redis:get(bot_id.."User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "ـپà¼¯â”†ظ…ط§ظƒظˆ ظ…ظ†ط´ط´ط¦ظٹظ† ظٹط´ظˆظپظˆظ„ظƒ ط¬ط§ط±ظ‡"
end
Reply_Status(result,result.sender_user_id_,"reply","ـپà¼¯â”†ظ‚ط§ظ… ط¨ط§ظ„طھط¹ط¯ظٹظ„ ط¹ظ„ظ‰ ط§ظ„ظ…ظٹط¯ظٹط§"..t)  
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not Addictive(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if redis:get(bot_id.."Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if redis:get(bot_id.."Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if redis:get(bot_id.."Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("/") then
if redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if redis:get(bot_id.."Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local Co_Msg = redis:get(bot_id.."Add:Filter:Rp2"..text..result.chat_id_)   
if Co_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","ـپà¼¯â”†"..Co_Msg)  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = redis:get(bot_id..'Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;redis:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) redis:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) redis:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) redis:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print('\27[30;32mآ»آ» ظٹط±ط¬ظ‰ ط§ظ„ط§ظ†ظ†طھط¶ط§ط± ظ„ط­ظٹظ† طھظ†ط¸ظٹظپ ط§ظ„ظ…ط¬ظ…ظˆط¹ط§طھ ط§ظ„ظˆظ‡ظ…ظٹظ‡ آ«آ«\n\27[1;37m')
local list = redis:smembers(bot_id..'UsersBot')  
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = redis:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
redis:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
redis:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
redis:srem(bot_id..'Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
redis:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
redis:sadd(bot_id..'Chek:Groups',v)  
end end,nil)
end;CleangGroups();end;end

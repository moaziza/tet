if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
redis:set(bot_id.."NightRang:Get:Id:Msg:Pin"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = redis:get(bot_id.."NightRang:Get:Id:Msg:Pin"..msg.chat_id_)
if Msg_Pin and redis:get(bot_id.."NightRang:lockpin"..msg.chat_id_) then
Pin_Message(msg.chat_id_,Msg_Pin)
end
end
end
--------------------------------------------------------------------------------------------------------------
if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Spam:User") then 
if msg.sender_user_id_ ~= bot_id then
floods = redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Spam:User") or "nil"
Num_Msg_Max = redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5
Time_Spam = redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") or 5
local post_count = tonumber(redis:get(bot_id.."NightRang:Spam:Cont"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5) then 
local ch = msg.chat_id_
local type = redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Spam:User") 
NotSpam(msg,type)  
end
redis:setex(bot_id.."NightRang:Spam:Cont"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam") then
Num_Msg_Max = redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam") 
end
if redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") then
Time_Spam = redis:hget(bot_id.."NightRang:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") 
end 
end
end 
--------------------------------------------------------------------------------------------------------------
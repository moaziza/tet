if text == '/start' or text == 'العوده' then  
if AddChannel(msg.sender_user_id_) == false then
local UU_Le2 = database:get(bot_id..'text:ch:user')
if UU_Le2 then
send(msg.chat_id_, msg.id_,'['..UU_Le2..']')
else
send(msg.chat_id_, msg.id_,' 🕊 لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n  🕊 اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if DevSoFi(msg) then
local bl = 'انت الان المطور الاساسي في البوت \n سورس مسلم\n يمكنك تحكم في البوتات من الكيبورد أسفل \n[تابع جديدنا](t.me/UU_Le2)'
local keyboard = {
{'قناه السورس','مبرمج السورس'},
{'ضع اسم للبوت'},
{'اوامر التفعيل','اوامر التعطيل'},
{'اوامر الاشتراك','اوامر الاذاعه'},
{'اوامر المسح','اوامر الردود'},
{'اوامر الجلب','الاحصائيات'},
{'المشتركين','الجروبات '},
{'تحديث السورس'},
{'معلومات السيرفر','الغاء'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
else
if not database:get(bot_id..'Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
SourceDRAGONr = start
else
SourceDRAGONr = '🕊اهلا عزيزي\n🕊انا بوت اسمي مسلم\n🕊اختصاصي حمايه الكروبات\n🕊من تكرار والسبام والتوجيه والخ…\n🕊لتفعيلي اتبع الاخطوات…↓\n🕊اضفني الي مجموعتك وقم بترقيتي ادمن واكتب كلمه { تفعيل }  ويستطيع ←{ منشئ او المشرفين } بتفعيل فقط\n[🕊معرف المطور '
end 
send(msg.chat_id_, msg.id_, SourceDRAGONr) 
end
if not database:get(bot_id..'Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
keyboard = start
else
keyboard = {
{'مبرمج السورس'},
{'◤━───━𝑬𝑳𝑴𝑼𝑺𝑳𝑰𝑴━───━◥'},
{'قناة السورس','بوت التواصل'},
{'◤━───━𝑬𝑳𝑴𝑼𝑺𝑳𝑰𝑴━───━◥'},
{'تويت','صراحه'},
{'◤━───━𝑬𝑳𝑴𝑼𝑺𝑳𝑰𝑴━───━◥'},
{'انصحنى','كتبات'},
{'◤━───━𝑬𝑳𝑴𝑼𝑺𝑳𝑰𝑴━───━◥'},
{'مطور','انا مين'},
}
end
send_inline_key(msg.chat_id_, msg.id_, keyboard) 
end
end
database:setex(bot_id..'Start:Time'..msg.sender_user_id_,300,true)
return false
end
if text == 'اوامر الاذاعه' then  
local bl = 'مرحبا بك في اوامر الاذاعه..💘🙂'
local keyboard = {
{'اذاعه بالتوجيه خاص'},
{'اذاعه بالتوجيه'},
{'اذاعه خاص','اذاعه'},
{'اذاعه بالتثبيت'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'اوامر الاشتراك' then  
local bl = 'مرحبا بك في اوامر الاشتراك الاجباري..🌚💘'
local keyboard = {
{'تفعيل الاشتراك الاجباري','تعطيل الاشتراك الاجباري'},
{'الاشتراك الاجباري','وضع قناة الاشتراك'},
{'تغير الاشتراك'},
{'حذف رساله الاشتراك'},
{'تغير رساله الاشتراك'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'اوامر التفعيل' then  
local bl = 'مرحبا بك في اوامر التفعيل..🌚♥️'
local keyboard = {
{'تفعيل الاذاعه'},
{'تفعيل التواصل'},
{'تفعيل المغادره'},
{'تفعيل البوت الخدمي'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'اوامر التعطيل' then  
local bl = 'مرحبا بك في اوامر التعطيل..🌚💘'
local keyboard = {
{'تعطيل الاذاعه'},
{'تعطيل التواصل'},
{'تعطيل المغاده'},
{'تعطيل البوت الخدمي'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'اوامر الردود' then  
local bl = 'مرحبا بك في اوامر الردود..🥺💘'
local keyboard = {
{'اضف رد عام','مسح رد عام'},
{'الردود العامه'},
{'اضف رد متعدد','مسح رد متعدد'},
{'الردود المتعدده'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'اوامر الجلب' then  
local bl = 'مرحبا بك في اوامر الجلب والاحضار..🌚♥️'
local keyboard = {
{'جلب نسخه الاحتياطيه'},
{'جلب المشتركين'},
{'جلب المطورين'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
if text == 'اوامر المسح' then  
local bl = 'مرحبا بك في اوامر المسح..💛🌚'
local keyboard = {
{'مسح المطورين','المطورين'},
{'مسح الثانوين','الثانوين'},
{'مسح الجروبات','مسح المشتركين'},
{'مسح قائمه العام','قائمه العام'},
{'العوده'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
end
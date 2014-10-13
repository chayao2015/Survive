--package.cpath = "Survive/?.so"
local Db = require "Survive/common/db"
local Cjson = require "cjson"
local Sche = require "lua/sche"
--local Base64 = require "base64"
Db.Init("127.0.0.1",6379)

while not Db.Finish() do
	Sche.Yield()
end

Db.Command(string.format("set 测试1-toredis %s",Cjson.encode({"127.0.0.1",6379})))
Db.Command(string.format("set 测试1-togroup %s",Cjson.encode({"127.0.0.1",9001})))
Db.Command(string.format("set 测试1-gate1 %s",Cjson.encode({"192.168.0.87",9000})))
Db.Command(string.format("set 测试1-game1 %s",Cjson.encode({"127.0.0.1",9002})))
function EDRV_Init()
	ELAN_Trace('WS DEMO v005')

	local host = ELAN_GetIPString()
	local port = ELAN_GetIPPort()

 	local sHTTP =   "GET / HTTP/1.1\r\n"
					.. "Host: " .. host .. "\r\n"
					.. "Connection: Upgrade\r\n"
					.. "Upgrade: websocket\r\n"
					.. "Sec-WebSocket-Key: Iv8io/9s+lYFgZWcXczP8Q==\r\n"
					.. "Sec-WebSocket-Version: 13\r\n"
					.. "\r\n"

	ELAN_Trace("Connecting to "..host..":"..port)
	local iSocketID, sMsg = ELAN_CreateWebSocket(host, port, sHTTP)

	ELAN_SendWebSocketMsg(iSocketID, "Hi this is ELAN client.")

	-- Set websocket ping time to 60s
	-- TODO: implement client-side Ping w/ connection teardown
	-- if (ELAN_SetWebSocketPingTime(iSocketID, 59000) == false) then
	--		ELAN_Trace("Failed to set websocket ping timeout")
	-- end
end

function EDRV_ExecuteFunction(funcName)
	ELAN_Trace('ExecuteFunction '..funcName)
	if (funcName == "Sample Command 1") then
		ELAN_Trace('Sample Command 1!')
	end
end

function EDRV_StopExecuteFunction(funcName)
	ELAN_Trace('StopExecuteFunction '..funcName)
	if (funcName == "Sample Command 1") then
		-- Execute Command 1
		ELAN_Trace('Sample Command 1 stopped!')
	end
end

function EDRV_RepeatExecuteFunction(funcName)
	ELAN_Trace('RepeatExecuteFunction '..funcName)
	if (funcName == "Sample Command 1") then
		-- Execute Command 1
		ELAN_Trace('Sample Command 1 repeated!')
	end
end

function EDRV_RecvWebSocket(iSocketID, sFrameType, sMsg)
	ELAN_Trace("Got WS data: "..sMsg)
end

function EDRV_WebSocketPingTimeout(iSocketID)
	ELAN_Trace('Websocket ping timeout exceeded! Do something!')
end


























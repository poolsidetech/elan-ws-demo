-- Stubs for VS Code and/or Test Harness
-- Use with the lua-language-server extension: https://marketplace.visualstudio.com/items?itemName=sumneko.lua

function ELAN_Trace(s)
end

function ELAN_GetConfigurationString(sKey)
end

function ELAN_RegisterVariableString(a, b)
end

function ELAN_GetOAuthRedirectURI()
end

function ELAN_GetOAuthState()
end

function ELAN_GetOAuthRefreshToken()
end

function ELAN_GetOAuthTokenTTL()
end

function ELAN_InitOAuthorizeURL()
end

function ELAN_GetOAuthRefreshToken()
end

function ELAN_SaveOAuthRefreshToken(sToken)
end

function ELAN_GetOAuthAccessToken()
end

function ELAN_SaveOAuthAccessToken(sToken)
end

function ELAN_SetOAuthTokenExpiration(sToken)
end

function ELAN_NotifyOAuthStatus(sStatus)
end

function ELAN_CreateJSONMsg(hJSON)
end

function ELAN_DeleteJSONMsg(hJSON)
end

function ELAN_FindJSONValueByKey(hJSON, hChildNode, sKey)
end

function ELAN_FindJSONNode(hJSON, hChildNode, sKey, sType, bRecurse)
end

function ELAN_GetJSONSubNodeCount(hJSON, hChildNode)
end

function ELAN_GetJSONSubNode(hJSON, hChildNode, iZeroBasedIndex)
end

function ELAN_CreateSSLClientSocket(sHost, iPort)
end

function ELAN_DoHTTPExchange(hSslSocket, sHttpHeaders, sHttpContent, iSize)
end

function ELAN_CreateWebSocket(sHostName, iPort, sHttpHeaders)
end

function ELAN_SetWebSocketPingTime(iSocketId, iPingTimeMs)
end
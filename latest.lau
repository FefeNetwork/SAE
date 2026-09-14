--[[ Protected by Lua Guard ]]

( function (...) local _IlIIllIIIl = { Mode = "\065\085\084\079", StealRange = 0xF, TeleportRange = 0x1F4, DelayBetweenEggs = 0.3, TeleportDelay = 0.05, EggNameFilter = "", IgnoreCollected = true, MaxEggsPerCycle = 0xA, SilentSteal = false, AntiAFK = true, ShowNotifications = true, LogToConsole = true } local Players = game:GetService("\080\108\097\121\101\114\115") local RunService = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _lIllIlllll = game:GetService("\087\111\114\107\115\112\097\099\101") local StarterGui = game:GetService("\083\116\097\114\116\101\114\071\117\105") local _IIlllIllIl = game:GetService("\086\105\114\116\117\097\108\085\115\101\114") local _lIIlIIlIIl = Players.LocalPlayer local _lIlIIIIlll = _lIIlIIlIIl.Character or _lIIlIIlIIl.CharacterAdded:Wait() local _lIlIIIllIl = _lIlIIIIlll:WaitForChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _lllllIIllI = {} local _lIlllIlIll = true local _IIlIIIllII = 0x0 local function _lIIllIIIIl(title, text) if _IlIIllIIIl.ShowNotifications then pcall( function () StarterGui:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = title, Text = text, Duration = 0x3 }) end
 ) end
 if _IlIIllIIIl.LogToConsole then print("\091" .. title .. "\093\032" .. text) end
 end
 local function _IlIlllIlII(object) if not object or not object.Parent then return false end
 local _llIlIIllIl = string.lower(object.Name) if string.find(_llIlIIllIl, "\101\103\103") then return true end
 if object:FindFirstChildOfClass("\067\108\105\099\107\068\101\116\101\099\116\111\114") then return true end
 if object:FindFirstChildOfClass("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") then return true end
 if object:GetAttribute("\073\115\069\103\103") or object:GetAttribute("\069\103\103\084\121\112\101") then return true end
 if object:GetAttribute("\069\103\103") then return true end
 return false end
 local function _IIllllllIl(_IlllIlIIII) if not _IlllIlIIII or not _IlllIlIIII.Parent then return false end
 if _IlIIllIIIl.IgnoreCollected then if _IlllIlIIII:GetAttribute("\067\111\108\108\101\099\116\101\100") then return false end
 if _lllllIIllI[_IlllIlIIII] then return false end
 end
 if _IlIIllIIIl.EggNameFilter ~= "" then if not string.find(string.lower(_IlllIlIIII.Name), string.lower(_IlIIllIIIl.EggNameFilter)) then return false end
 end
 return true end
 local function _IllIlIIIII() local _llIIIlIIII = {} for _, descendant in ipairs(_lIllIlllll:GetDescendants()) do if _IlIlllIlII(descendant) and _IIllllllIl(descendant) then table.insert(_llIIIlIIII, descendant) end
 end
 return _llIIIlIIII end
 local function _lllIlllIII() local _llIIIlIIII = _IllIlIIIII() local _IlIlllllll = nil local _IIllllIIII = math.huge for _, _IlllIlIIII in ipairs(_llIIIlIIII) do if _IlllIlIIII:IsA("\066\097\115\101\080\097\114\116") then local _IIlIlIIlIl = (_lIlIIIllIl.Position - _IlllIlIIII.Position).Magnitude if _IIlIlIIlIl < _IIllllIIII then _IIllllIIII = _IIlIlIIlIl _IlIlllllll = _IlllIlIIII end
 end
 end
 return _IlIlllllll, _IIllllIIII end
 local function _lllIIllIII(_IlllIlIIII) if not _IlllIlIIII:IsA("\066\097\115\101\080\097\114\116") then return false end
 local _IlllIIllII = _lIlIIIllIl.CFrame _lIlIIIllIl.CFrame = _IlllIlIIII.CFrame RunService.RenderStepped:Wait() _lIlIIIllIl.CFrame = _IlllIIllII return true end
 local function _llIIIIlIII(_IlllIlIIII) local _llIlIIIIIl = _IlllIlIIII:FindFirstChildOfClass("\067\108\105\099\107\068\101\116\101\099\116\111\114") if _llIlIIIIIl then pcall( function () fireclickdetector(_llIlIIIIIl) end
 ) return true end
 return false end
 local function _lIllIIIIlI(_IlllIlIIII) local _lIlIlIIlIl = _IlllIlIIII:FindFirstChildOfClass("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") if _lIlIlIIlIl then pcall( function () fireproximityprompt(_lIlIlIIlIl) end
 ) return true end
 return false end
 local function _IIlIIllIIl(_IlllIlIIII) local _llllllllIl = {"\067\111\108\108\101\099\116", "\083\116\101\097\108", "\080\105\099\107\117\112", "\071\101\116\069\103\103", "\067\108\097\105\109", "\084\111\117\099\104", "\069\103\103\067\111\108\108\101\099\116\101\100"} for _, remote in ipairs(game:GetDescendants()) do if remote:IsA("\082\101\109\111\116\101\069\118\101\110\116") or remote:IsA("\082\101\109\111\116\101\070\117\110\099\116\105\111\110") then for _, name in ipairs(_llllllllIl) do if string.find(string.lower(remote.Name), string.lower(name)) then pcall( function () if remote:IsA("\082\101\109\111\116\101\069\118\101\110\116") then remote:FireServer(_IlllIlIIII) else remote:InvokeServer(_IlllIlIIII) end
 end
 ) return true end
 end
 end
 end
 return false end
 local function _lllIIIlllI(_IlllIlIIII) if not _IlllIlIIII or not _IlllIlIIII.Parent then return false end
 local _IIlIlIlIll = false if _IlIIllIIIl.Mode == "\083\073\076\069\078\084" or _IlIIllIIIl.SilentSteal then _IIlIlIlIll = _IIlIIllIIl(_IlllIlIIII) end
 if not _IIlIlIlIll then _IIlIlIlIll = _lIllIIIIlI(_IlllIlIIII) end
 if not _IIlIlIlIll then _IIlIlIlIll = _llIIIIlIII(_IlllIlIIII) end
 if not _IIlIlIlIll then _IIlIlIlIll = _lllIIllIII(_IlllIlIIII) end
 if _IIlIlIlIll then _lllllIIllI[_IlllIlIIII] = true _IIlIIIllII = _IIlIIIllII + 0x1 end
 return _IIlIlIlIll end
 local function _IIlIllIlll() local _llIIIlIIII = _IllIlIIIII() for _, _IlllIlIIII in ipairs(_llIIIlIIII) do if not _IlllIlIIII:IsA("\066\097\115\101\080\097\114\116") then continue end
 local _IIlIlIIlIl = (_lIlIIIllIl.Position - _IlllIlIIII.Position).Magnitude if _IIlIlIIlIl <= _IlIIllIIIl.StealRange then _lllIIIlllI(_IlllIlIIII) wait(_IlIIllIIIl.DelayBetweenEggs) end
 end
 end
 local function _IIlIIIIIIl() local _llIIIlIIII = _IllIlIIIII() for i = 0x1, math.min(#_llIIIlIIII, _IlIIllIIIl.MaxEggsPerCycle) do local _IlllIlIIII = _llIIIlIIII[i] if _IlllIlIIII:IsA("\066\097\115\101\080\097\114\116") then _lIlIIIllIl.CFrame = _IlllIlIIII.CFrame + Vector3.new(0x0, 0x3, 0x0) wait(_IlIIllIIIl.TeleportDelay) _lllIIIlllI(_IlllIlIIII) wait(_IlIIllIIIl.DelayBetweenEggs) end
 end
 end
 local function _IIIIIIlIIl() local _llIIIlIIII = _IllIlIIIII() for _, _IlllIlIIII in ipairs(_llIIIlIIII) do _lllIIIlllI(_IlllIlIIII) wait(_IlIIllIIIl.DelayBetweenEggs) end
 end
 local function _lIlllIlIlI() local _llIIIlIIII = _IllIlIIIII() for _, _IlllIlIIII in ipairs(_llIIIlIIII) do if _IlllIlIIII:IsA("\066\097\115\101\080\097\114\116") then _lIlIIIllIl.CFrame = _IlllIlIIII.CFrame _lllIIIlllI(_IlllIlIIII) end
 end
 end
 local function _llIlllIIll() local _llIIIlIIII = _IllIlIIIII() for _, _IlllIlIIII in ipairs(_llIIIlIIII) do if _IlllIlIIII:IsA("\066\097\115\101\080\097\114\116") then local _IIlIlIIlIl = (_lIlIIIllIl.Position - _IlllIlIIII.Position).Magnitude if _IIlIlIIlIl <= _IlIIllIIIl.TeleportRange then _lIlIIIllIl.CFrame = _IlllIlIIII.CFrame + Vector3.new(0x0, 0x3, 0x0) wait(_IlIIllIIIl.TeleportDelay) _lllIIIlllI(_IlllIlIIII) wait(_IlIIllIIIl.DelayBetweenEggs) end
 end
 end
 end
 local function _lIIIlIIlIl() _lIIllIIIIl("\069\103\103\032\083\116\101\097\108\101\114", "\083\116\097\114\116\101\100\032\105\110\032\109\111\100\101\058\032" .. _IlIIllIIIl.Mode) while _lIlllIlIll do local _IIlIlIlIll, err = pcall( function () if _IlIIllIIIl.Mode == "\065\085\084\079" then _IIlIllIlll() elseif _IlIIllIIIl.Mode == "\084\069\076\069\080\079\082\084" then _IIlIIIIIIl() elseif _IlIIllIIIl.Mode == "\083\073\076\069\078\084" then _IIIIIIlIIl() elseif _IlIIllIIIl.Mode == "\077\065\083\083" then _lIlllIlIlI() elseif _IlIIllIIIl.Mode == "\083\069\076\069\067\084\073\086\069" then _llIlllIIll() end
 end
 ) if not _IIlIlIlIll then warn("\091\069\103\103\032\083\116\101\097\108\101\114\093\032\069\114\114\111\114\058\032" .. tostring(err)) end
 wait(0.1) end
 end
 if _IlIIllIIIl.AntiAFK then _lIIlIIlIIl.Idled:Connect( function () _IIlllIllIl:CaptureController() _IIlllIllIl:ClickButton2(Vector2.new()) _lIIllIIIIl("\065\110\116\105\045\065\070\075", "\073\100\108\101\032\100\101\116\101\099\116\101\100\044\032\112\114\101\118\101\110\116\101\100\032\107\105\099\107\046") end
 ) end
 _lIIlIIlIIl.CharacterAdded:Connect( function (newChar) _lIlIIIIlll = newChar _lIlIIIllIl = newChar:WaitForChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") _lIIllIIIIl("\069\103\103\032\083\116\101\097\108\101\114", "\067\104\097\114\097\099\116\101\114\032\114\101\115\112\097\119\110\101\100\044\032\114\101\097\116\116\097\099\104\101\100\046") end
 ) _lIIIlIIlIl() end
 )(...)

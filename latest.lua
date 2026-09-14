--[[ Protected by Lua Guard ]]

( function (...) local _lllIllIlIl = { Mode = "\065\085\084\079", StealRange = 0xF, TeleportRange = 0x1F4, DelayBetweenEggs = 0.3, TeleportDelay = 0.05, EggNameFilter = "", IgnoreCollected = true, MaxEggsPerCycle = 0xA, SilentSteal = false, AntiAFK = true, ShowNotifications = true, LogToConsole = true } local Players = game:GetService("\080\108\097\121\101\114\115") local RunService = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _lIIIIlIlll = game:GetService("\087\111\114\107\115\112\097\099\101") local StarterGui = game:GetService("\083\116\097\114\116\101\114\071\117\105") local _IIlIllIlII = game:GetService("\086\105\114\116\117\097\108\085\115\101\114") local _lIIIlllIIl = Players.LocalPlayer local _IIIllIIIII = _lIIIlllIIl.Character or _lIIIlllIIl.CharacterAdded:Wait() local _IIIIIlIlll = _IIIllIIIII:WaitForChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _lllIlIlIll = {} local _lIIIIIIIlI = true local function _IllIllIIIl(title, text) if _lllIllIlIl.ShowNotifications then pcall( function () StarterGui:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = title, Text = text, Duration = 0x3 }) end
 ) end
 if _lllIllIlIl.LogToConsole then print("\091" .. title .. "\093\032" .. text) end
 end
 local function _llllllIIll(object) if not object or not object.Parent then return false end
 local _IllIllIlll = string.lower(object.Name) if string.find(_IllIllIlll, "\101\103\103") then return true end
 if object:FindFirstChildOfClass("\067\108\105\099\107\068\101\116\101\099\116\111\114") then return true end
 if object:FindFirstChildOfClass("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") then return true end
 if object:GetAttribute("\073\115\069\103\103") or object:GetAttribute("\069\103\103\084\121\112\101") or object:GetAttribute("\069\103\103") then return true end
 return false end
 local function _IIlIIlIIll(object) if not object or not object.Parent then return false end
 if _lllIllIlIl.IgnoreCollected then if object:GetAttribute("\067\111\108\108\101\099\116\101\100") or _lllIlIlIll[object] then return false end
 end
 if _lllIllIlIl.EggNameFilter ~= "" then if not string.find(string.lower(object.Name), string.lower(_lllIllIlIl.EggNameFilter)) then return false end
 end
 return true end
 local function _IIlIlllllI() local _IlllIIlllI = {} for _, descendant in ipairs(_lIIIIlIlll:GetChildren()) do if _llllllIIll(descendant) and _IIlIIlIIll(descendant) then table.insert(_IlllIIlllI, descendant) end
 end
 return _IlllIIlllI end
 local _lIIIIIlIlI = nil local function _IllllllIII(target) if _lIIIIIlIlI and _lIIIIIlIlI.Parent then pcall( function () if _lIIIIIlIlI:IsA("\082\101\109\111\116\101\069\118\101\110\116") then _lIIIIIlIlI:FireServer(target) else _lIIIIIlIlI:InvokeServer(target) end
 end
 ) return true end
 local _lIIllIIlII = {"\099\111\108\108\101\099\116", "\115\116\101\097\108", "\112\105\099\107\117\112", "\103\101\116\101\103\103", "\099\108\097\105\109", "\116\111\117\099\104", "\101\103\103\099\111\108\108\101\099\116\101\100"} for _, remote in ipairs(game:GetDescendants()) do if remote:IsA("\082\101\109\111\116\101\069\118\101\110\116") or remote:IsA("\082\101\109\111\116\101\070\117\110\099\116\105\111\110") then for _, _IllIllIlll in ipairs(_lIIllIIlII) do if string.find(string.lower(remote.Name), _IllIllIlll) then _lIIIIIlIlI = remote pcall( function () if remote:IsA("\082\101\109\111\116\101\069\118\101\110\116") then remote:FireServer(target) else remote:InvokeServer(target) end
 end
 ) return true end
 end
 end
 end
 return false end
 local function _IIIlIlIIlI(target) if not target or not target.Parent then return false end
 local _IIIIIlIlII = false if _lllIllIlIl.Mode == "\083\073\076\069\078\084" or _lllIllIlIl.SilentSteal then _IIIIIlIlII = _IllllllIII(target) end
 if not _IIIIIlIlII then local _lIllIllIII = target:FindFirstChildOfClass("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") if _lIllIllIII then pcall( function () fireproximityprompt(_lIllIllIII) end
 ) _IIIIIlIlII = true end
 end
 if not _IIIIIlIlII then local _IIlIIlllIl = target:FindFirstChildOfClass("\067\108\105\099\107\068\101\116\101\099\116\111\114") if _IIlIIlllIl then pcall( function () fireclickdetector(_IIlIIlllIl) end
 ) _IIIIIlIlII = true end
 end
 if _IIIIIlIlII then _lllIlIlIll[target] = true end
 return _IIIIIlIlII end
 local function _lIIllllIIl() local _IlllIIlllI = _IIlIlllllI() for _, target in ipairs(_IlllIIlllI) do if target:IsA("\066\097\115\101\080\097\114\116") then local _lIIIllllIl = (_IIIIIlIlll.Position - target.Position).Magnitude if _lIIIllllIl <= _lllIllIlIl.StealRange then _IIIlIlIIlI(target) task.wait(_lllIllIlIl.DelayBetweenEggs) end
 end
 end
 end
 local function _IlIIIIIIIl() _IllIllIIIl("\069\103\103\032\083\116\101\097\108\101\114", "\083\116\097\114\116\101\100\032\105\110\032\109\111\100\101\058\032" .. _lllIllIlIl.Mode) while _lIIIIIIIlI do pcall( function () if _lllIllIlIl.Mode == "\065\085\084\079" then _lIIllllIIl() end
 end
 ) task.wait(0.2) end
 end
 if _lllIllIlIl.AntiAFK then _lIIIlllIIl.Idled:Connect( function () _IIlIllIlII:CaptureController() _IIlIllIlII:ClickButton2(Vector2.new()) _IllIllIIIl("\065\110\116\105\045\065\070\075", "\080\114\101\118\101\110\116\101\100\032\105\100\108\101\032\107\105\099\107\046") end
 ) end
 _lIIIlllIIl.CharacterAdded:Connect( function (newChar) _IIIllIIIII = newChar _IIIIIlIlll = newChar:WaitForChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") end
 ) task.spawn(_IlIIIIIIIl) end
 )(...)

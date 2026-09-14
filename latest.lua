--[[ Protected by Lua Guard ]]

( function (...) local _lIllIlIIII = { Mode = "\065\085\084\079", ScanRadius = 0x64, StealRange = 0xF, DelayBetweenEggs = 0.5, DelayBetweenScans = 1.0, MaxEggsPerCycle = 0x3, AntiAFK = true, ShowNotifications = true, LogToConsole = true } local Players = game:GetService("\080\108\097\121\101\114\115") local RunService = game:GetService("\082\117\110\083\101\114\118\105\099\101") local _IIllllIIll = game:GetService("\087\111\114\107\115\112\097\099\101") local StarterGui = game:GetService("\083\116\097\114\116\101\114\071\117\105") local _llllIIIIIl = game:GetService("\086\105\114\116\117\097\108\085\115\101\114") local _IIIIIlIllI = Players.LocalPlayer local _IlIllIllII = {} local _llIllIlllI = 0x0 local _llIIIIIIlI = {} local _IIlIllllll = 0x0 local _lIlllIlIIl = true local _IIIIlIllIl = 0x0 local function _lIllIIIIll(title, text) local _IlIIIIllII = tick() if _IlIIIIllII - _IIIIlIllIl < 0x1 then return end
 _IIIIlIllIl = _IlIIIIllII if _lIllIlIIII.ShowNotifications then pcall( function () StarterGui:SetCore("\083\101\110\100\078\111\116\105\102\105\099\097\116\105\111\110", { Title = title, Text = text, Duration = 0x2 }) end
 ) end
 if _lIllIlIIII.LogToConsole then print("\091" .. title .. "\093\032" .. text) end
 end
 local function _IlllIIlIIl(object) if not object or not object.Parent then return false end
 local _IIlIIlIlll = string.lower(object.Name) if string.find(_IIlIIlIlll, "\101\103\103", 0x1, true) then return true end
 if object:GetAttribute("\073\115\069\103\103") then return true end
 return false end
 local function _IIIIIlIIlI() local _IlIIIIllII = tick() if _IlIIIIllII - _llIllIlllI < _lIllIlIIII.DelayBetweenScans then return _IlIllIllII end
 _llIllIlllI = _IlIIIIllII local _lIlIllIlIl = {} local _IlIIIIlIII = _IIIIIlIllI.Character local _IllIIlllIl = _IlIIIIlIII and _IlIIIIlIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IllIIlllIl then return _IlIllIllII end
 local _IIIIlllIlI = _IllIIlllIl.Position for _, obj in ipairs(_IIllllIIll:GetChildren()) do if _IlllIIlIIl(obj) and not _llIIIIIIlI[obj] then if obj:IsA("\066\097\115\101\080\097\114\116") then local _lllIlllIIl = (_IIIIlllIlI - obj.Position).Magnitude if _lllIlllIIl <= _lIllIlIIII.ScanRadius then table.insert(_lIlIllIlIl, obj) end
 end
 end
 for _, child in ipairs(obj:GetChildren()) do if _IlllIIlIIl(child) and not _llIIIIIIlI[child] then if child:IsA("\066\097\115\101\080\097\114\116") then local _lllIlllIIl = (_IIIIlllIlI - child.Position).Magnitude if _lllIlllIIl <= _lIllIlIIII.ScanRadius then table.insert(_lIlIllIlIl, child) end
 end
 end
 end
 end
 _IlIllIllII = _lIlIllIlIl return _IlIllIllII end
 local function _IIIlIIlllI() local _IllIIIIIIl = _IIIIIlIIlI() local _IlIIIIlIII = _IIIIIlIllI.Character local _IllIIlllIl = _IlIIIIlIII and _IlIIIIlIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IllIIlllIl then return nil, math.huge end
 local _IIIIIIllIl = nil local _lIIlIlllll = math.huge local _IIIIlllIlI = _IllIIlllIl.Position for _, _IIllIIIIIl in ipairs(_IllIIIIIIl) do if _IIllIIIIIl.Parent and _IIllIIIIIl:IsA("\066\097\115\101\080\097\114\116") then local _lllIlllIIl = (_IIIIlllIlI - _IIllIIIIIl.Position).Magnitude if _lllIlllIIl < _lIIlIlllll then _lIIlIlllll = _lllIlllIIl _IIIIIIllIl = _IIllIIIIIl end
 end
 end
 return _IIIIIIllIl, _lIIlIlllll end
 local function _IlIlIllIll(_IIllIIIIIl) local _lIlIlllIII = _IIllIIIIIl:FindFirstChildOfClass("\067\108\105\099\107\068\101\116\101\099\116\111\114") if _lIlIlllIII then pcall( function () fireclickdetector(_lIlIlllIII) end
 ) return true end
 return false end
 local function _lIIIlIIllI(_IIllIIIIIl) local _llIIlllIll = _IIllIIIIIl:FindFirstChildOfClass("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") if _llIIlllIll then pcall( function () fireproximityprompt(_llIIlllIll) end
 ) return true end
 return false end
 local function _llllllIIII(_IIllIIIIIl) local _IlIIIIlIII = _IIIIIlIllI.Character local _IllIIlllIl = _IlIIIIlIII and _IlIIIIlIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IllIIlllIl or not _IIllIIIIIl:IsA("\066\097\115\101\080\097\114\116") then return false end
 local _IIlllIIIll = _IllIIlllIl.CFrame _IllIIlllIl.CFrame = _IIllIIIIIl.CFrame RunService.RenderStepped:Wait() _IllIIlllIl.CFrame = _IIlllIIIll return true end
 local function _IIIlIIllll(_IIllIIIIIl) if not _IIllIIIIIl or not _IIllIIIIIl.Parent then return false end
 local _llIllllIlI = false _llIllllIlI = _lIIIlIIllI(_IIllIIIIIl) if not _llIllllIlI then _llIllllIlI = _IlIlIllIll(_IIllIIIIIl) end
 if not _llIllllIlI then _llIllllIlI = _llllllIIII(_IIllIIIIIl) end
 if _llIllllIlI then _llIIIIIIlI[_IIllIIIIIl] = true _IIlIllllll = _IIlIllllll + 0x1 for i = #_IlIllIllII, 0x1, -0x1 do if _IlIllIllII[i] == _IIllIIIIIl then table.remove(_IlIllIllII, i) end
 end
 end
 return _llIllllIlI end
 local function _lIIIIllIII() local _IllIIIIIIl = _IIIIIlIIlI() local _IlIIIIlIII = _IIIIIlIllI.Character local _IllIIlllIl = _IlIIIIlIII and _IlIIIIlIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IllIIlllIl then return end
 local _llIIlIIllI = 0x0 for i = #_IllIIIIIIl, 0x1, -0x1 do if _llIIlIIllI >= _lIllIlIIII.MaxEggsPerCycle then break end
 local _IIllIIIIIl = _IllIIIIIIl[i] if _IIllIIIIIl.Parent and _IIllIIIIIl:IsA("\066\097\115\101\080\097\114\116") then local _lllIlllIIl = (_IllIIlllIl.Position - _IIllIIIIIl.Position).Magnitude if _lllIlllIIl <= _lIllIlIIII.StealRange then _IIIlIIllll(_IIllIIIIIl) _llIIlIIllI = _llIIlIIllI + 0x1 wait(_lIllIlIIII.DelayBetweenEggs) end
 end
 end
 end
 local function _lllIlIllII() local _IIllIIIIIl, _lllIlllIIl = _IIIlIIlllI() if not _IIllIIIIIl then return end
 local _IlIIIIlIII = _IIIIIlIllI.Character local _IllIIlllIl = _IlIIIIlIII and _IlIIIIlIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IllIIlllIl then return end
 _IllIIlllIl.CFrame = _IIllIIIIIl.CFrame + Vector3.new(0x0, 0x3, 0x0) wait(0.1) _IIIlIIllll(_IIllIIIIIl) wait(_lIllIlIIII.DelayBetweenEggs) end
 local function _lllIIIllIl() local _IllIIIIIIl = _IIIIIlIIlI() local _IlIIIIlIII = _IIIIIlIllI.Character local _IllIIlllIl = _IlIIIIlIII and _IlIIIIlIII:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if not _IllIIlllIl then return end
 local _llIIlIIllI = 0x0 for i = #_IllIIIIIIl, 0x1, -0x1 do if _llIIlIIllI >= _lIllIlIIII.MaxEggsPerCycle then break end
 local _IIllIIIIIl = _IllIIIIIIl[i] if _IIllIIIIIl.Parent and _IIllIIIIIl:IsA("\066\097\115\101\080\097\114\116") then _IllIIlllIl.CFrame = _IIllIIIIIl.CFrame + Vector3.new(0x0, 0x3, 0x0) wait(0.1) _IIIlIIllll(_IIllIIIIIl) _llIIlIIllI = _llIIlIIllI + 0x1 wait(_lIllIlIIII.DelayBetweenEggs) end
 end
 end
 local function _IlllIIllll() _lIllIIIIll("\069\103\103\032\083\116\101\097\108\101\114", "\083\116\097\114\116\101\100\058\032" .. _lIllIlIIII.Mode) while _lIlllIlIIl do local _llIllllIlI, err = pcall( function () if _lIllIlIIII.Mode == "\065\085\084\079" then _lIIIIllIII() elseif _lIllIlIIII.Mode == "\078\069\065\082\069\083\084" then _lllIlIllII() elseif _lIllIlIIII.Mode == "\084\069\076\069\080\079\082\084" then _lllIIIllIl() end
 end
 ) if not _llIllllIlI then warn("\091\069\103\103\032\083\116\101\097\108\101\114\093\032" .. tostring(err)) end
 wait(_lIllIlIIII.DelayBetweenScans) end
 end
 if _lIllIlIIII.AntiAFK then _IIIIIlIllI.Idled:Connect( function () _llllIIIIIl:CaptureController() _llllIIIIIl:ClickButton2(Vector2.new()) end
 ) end
 _IIIIIlIllI.CharacterAdded:Connect( function (newChar) newChar:WaitForChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") _IlIllIllII = {} _llIllIlllI = 0x0 end
 ) _IlllIIllll() end
 )(...)

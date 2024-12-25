--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 81) then
			v19 = v0(v3(v30, 1, 1));
			return "";
		else
			local v81 = 0;
			local v82;
			while true do
				if (v81 == 0) then
					v82 = v2(v0(v30, 16));
					if v19 then
						local v105 = v5(v82, v19);
						v19 = nil;
						return v105;
					else
						return v82;
					end
					break;
				end
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v83 = 0 - 0;
			local v84;
			while true do
				if (v83 == ((1637 - (1523 + 114)) - 0)) then
					v84 = (v31 / (((3 + 0) - 1) ^ (v32 - 1))) % (2 ^ (((v33 - (2 - 1)) - (v32 - (620 - (555 + 64)))) + ((1328 - 396) - (857 + (1139 - (68 + 997))))));
					return v84 - (v84 % (569 - (367 + 201)));
				end
			end
		else
			local v85 = 927 - (214 + 713);
			local v86;
			while true do
				if (v85 == 0) then
					v86 = 2 ^ (v32 - (1 + 0));
					return (((v31 % (v86 + v86)) >= v86) and (1 + 0)) or (877 - (282 + 595));
				end
			end
		end
	end
	local function v21()
		local v34 = 1270 - (226 + 1044);
		local v35;
		while true do
			if ((4 - 3) == v34) then
				return v35;
			end
			if (v34 == (117 - (8 + 24 + 85))) then
				v35 = v1(v16, v18, v18);
				v18 = v18 + (958 - (892 + 65)) + 0;
				v34 = 1;
			end
		end
	end
	local function v22()
		local v36 = (0 - 0) - 0;
		local v37;
		local v38;
		while true do
			if (v36 == (1 - (0 + 0))) then
				return (v38 * (469 - (846 - 633))) + v37;
			end
			if (v36 == 0) then
				v37, v38 = v1(v16, v18, v18 + (352 - (87 + 263)));
				v18 = v18 + (182 - (67 + 113));
				v36 = (953 - (802 + 150)) + 0;
			end
		end
	end
	local function v23()
		local v39, v40, v41, v42 = v1(v16, v18, v18 + 3);
		v18 = v18 + (10 - 6);
		return (v42 * (30433252 - 13656036)) + (v41 * 65536) + (v40 * (187 + 69)) + v39;
	end
	local function v24()
		local v43 = v23();
		local v44 = v23();
		local v45 = 1;
		local v46 = (v20(v44, 998 - (915 + 82), 56 - 36) * ((2 + 0) ^ (41 - (15 - 6)))) + v43;
		local v47 = v20(v44, 1208 - (1069 + (556 - (145 + 293))), 70 - 39);
		local v48 = ((v20(v44, 32) == ((431 - (44 + 386)) - 0)) and -1) or (1 + 0);
		if (v47 == 0) then
			if (v46 == (0 - 0)) then
				return v48 * (0 + 0);
			else
				v47 = 792 - (368 + 423);
				v45 = 0 - 0;
			end
		elseif (v47 == ((3551 - (998 + 488)) - (10 + 8))) then
			return ((v46 == (0 - 0)) and (v48 * (((141 + 302) - (341 + 75 + 26)) / (0 - 0)))) or (v48 * NaN);
		end
		return v8(v48, v47 - 1023) * (v45 + (v46 / ((1 + 1) ^ (824 - (201 + 571)))));
	end
	local function v25(v49)
		local v50;
		if not v49 then
			v49 = v23();
			if (v49 == 0) then
				return "";
			end
		end
		v50 = v3(v16, v18, (v18 + v49) - (1139 - (116 + 1022)));
		v18 = v18 + v49;
		local v51 = {};
		for v65 = 4 - 3, #v50 do
			v51[v65] = v2(v1(v3(v50, v65, v65)));
		end
		return v6(v51);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v52 = (function()
			return 0;
		end)();
		local v53 = (function()
			return;
		end)();
		local v54 = (function()
			return;
		end)();
		local v55 = (function()
			return;
		end)();
		local v56 = (function()
			return;
		end)();
		local v57 = (function()
			return;
		end)();
		local v58 = (function()
			return;
		end)();
		while true do
			if (v52 == (2 + 0)) then
				for v93 = #"\\", v23() do
					local v94 = (function()
						return 0;
					end)();
					local v95 = (function()
						return;
					end)();
					local v96 = (function()
						return;
					end)();
					while true do
						if (v94 == (0 - 0)) then
							local v106 = (function()
								return 0;
							end)();
							while true do
								if (v106 == (1 - 0)) then
									v94 = (function()
										return 1;
									end)();
									break;
								end
								if (v106 ~= (241 - (187 + 54))) then
								else
									v95 = (function()
										return 0;
									end)();
									v96 = (function()
										return nil;
									end)();
									v106 = (function()
										return 1;
									end)();
								end
							end
						end
						if (v94 ~= 1) then
						else
							while true do
								if (v95 ~= 0) then
								else
									v96 = (function()
										return v21();
									end)();
									if (v20(v96, #",", #"[") == 0) then
										local v113 = (function()
											return 780 - (162 + 618);
										end)();
										local v114 = (function()
											return;
										end)();
										local v115 = (function()
											return;
										end)();
										local v116 = (function()
											return;
										end)();
										local v117 = (function()
											return;
										end)();
										while true do
											if (v113 == (2 + 0)) then
												while true do
													if (v114 == #"<") then
														local v227 = (function()
															return 0 + 0;
														end)();
														local v228 = (function()
															return;
														end)();
														while true do
															if (v227 ~= (0 - 0)) then
															else
																v228 = (function()
																	return 0 - 0;
																end)();
																while true do
																	if (0 ~= v228) then
																	else
																		v117 = (function()
																			return {v22(),v22(),nil,nil};
																		end)();
																		if (v115 == (0 + 0)) then
																			local v358 = (function()
																				return 0;
																			end)();
																			local v359 = (function()
																				return;
																			end)();
																			while true do
																				if (v358 ~= 0) then
																				else
																					v359 = (function()
																						return 1636 - (1373 + 263);
																					end)();
																					while true do
																						if (v359 ~= 0) then
																						else
																							v117[#"91("] = (function()
																								return v22();
																							end)();
																							v117[#".dev"] = (function()
																								return v22();
																							end)();
																							break;
																						end
																					end
																					break;
																				end
																			end
																		elseif (v115 == #"{") then
																			v117[#"asd"] = (function()
																				return v23();
																			end)();
																		elseif (v115 == (1002 - (451 + 549))) then
																			v117[#"xxx"] = (function()
																				return v23() - ((1 + 1) ^ (24 - 8));
																			end)();
																		elseif (v115 == #"-19") then
																			local v374 = (function()
																				return 0;
																			end)();
																			local v375 = (function()
																				return;
																			end)();
																			while true do
																				if (v374 == 0) then
																					v375 = (function()
																						return 0 - 0;
																					end)();
																					while true do
																						if (v375 ~= 0) then
																						else
																							v117[#"91("] = (function()
																								return v23() - (2 ^ 16);
																							end)();
																							v117[#".com"] = (function()
																								return v22();
																							end)();
																							break;
																						end
																					end
																					break;
																				end
																			end
																		end
																		v228 = (function()
																			return 1385 - (746 + 638);
																		end)();
																	end
																	if (v228 ~= 1) then
																	else
																		v114 = (function()
																			return 2;
																		end)();
																		break;
																	end
																end
																break;
															end
														end
													end
													if (v114 == 0) then
														local v229 = (function()
															return 0;
														end)();
														while true do
															if (v229 == 0) then
																v115 = (function()
																	return v20(v96, 1 + 1, #"91(");
																end)();
																v116 = (function()
																	return v20(v96, #"asd1", 6);
																end)();
																v229 = (function()
																	return 1 - 0;
																end)();
															end
															if (v229 ~= 1) then
															else
																v114 = (function()
																	return #",";
																end)();
																break;
															end
														end
													end
													if (v114 == #"-19") then
														if (v20(v116, #"xnx", #"91(") ~= #"!") then
														else
															v117[#"?id="] = (function()
																return v58[v117[#".dev"]];
															end)();
														end
														v53[v93] = (function()
															return v117;
														end)();
														break;
													end
													if (v114 ~= (343 - (218 + 123))) then
													else
														local v231 = (function()
															return 0;
														end)();
														local v232 = (function()
															return;
														end)();
														while true do
															if (v231 == (1581 - (1535 + 46))) then
																v232 = (function()
																	return 0 + 0;
																end)();
																while true do
																	if (v232 ~= (0 + 0)) then
																	else
																		if (v20(v116, #"}", #"~") == #".") then
																			v117[562 - (306 + 254)] = (function()
																				return v58[v117[1 + 1]];
																			end)();
																		end
																		if (v20(v116, 3 - 1, 2) == #"~") then
																			v117[#"asd"] = (function()
																				return v58[v117[#"xnx"]];
																			end)();
																		end
																		v232 = (function()
																			return 1468 - (899 + 568);
																		end)();
																	end
																	if (v232 == (1 + 0)) then
																		v114 = (function()
																			return #"-19";
																		end)();
																		break;
																	end
																end
																break;
															end
														end
													end
												end
												break;
											end
											if (v113 ~= 1) then
											else
												local v119 = (function()
													return 0 - 0;
												end)();
												while true do
													if (v119 ~= 0) then
													else
														v116 = (function()
															return nil;
														end)();
														v117 = (function()
															return nil;
														end)();
														v119 = (function()
															return 1;
														end)();
													end
													if (1 == v119) then
														v113 = (function()
															return 605 - (268 + 335);
														end)();
														break;
													end
												end
											end
											if (v113 == 0) then
												local v120 = (function()
													return 290 - (60 + 230);
												end)();
												local v121 = (function()
													return;
												end)();
												while true do
													if (v120 == (572 - (426 + 146))) then
														v121 = (function()
															return 0;
														end)();
														while true do
															if (v121 == (0 + 0)) then
																v114 = (function()
																	return 0;
																end)();
																v115 = (function()
																	return nil;
																end)();
																v121 = (function()
																	return 1457 - (282 + 1174);
																end)();
															end
															if (v121 == (812 - (569 + 242))) then
																v113 = (function()
																	return 1;
																end)();
																break;
															end
														end
														break;
													end
												end
											end
										end
									end
									break;
								end
							end
							break;
						end
					end
				end
				for v97 = #"~", v23() do
					v54[v97 - #"["] = (function()
						return v28();
					end)();
				end
				return v56;
			end
			if (#"," == v52) then
				local v89 = (function()
					return 0 - 0;
				end)();
				local v90 = (function()
					return;
				end)();
				while true do
					if (v89 == (0 + 0)) then
						v90 = (function()
							return 1024 - (706 + 318);
						end)();
						while true do
							if ((1253 - (721 + 530)) == v90) then
								v52 = (function()
									return 2;
								end)();
								break;
							end
							if (v90 == 0) then
								v57 = (function()
									return v23();
								end)();
								v58 = (function()
									return {};
								end)();
								v90 = (function()
									return 1272 - (945 + 326);
								end)();
							end
							if (v90 ~= (2 - 1)) then
							else
								for v108 = #"[", v57 do
									local v109 = (function()
										return 0;
									end)();
									local v110 = (function()
										return;
									end)();
									local v111 = (function()
										return;
									end)();
									local v112 = (function()
										return;
									end)();
									while true do
										if (v109 == 0) then
											local v118 = (function()
												return 0;
											end)();
											while true do
												if ((0 + 0) ~= v118) then
												else
													v110 = (function()
														return 700 - (271 + 429);
													end)();
													v111 = (function()
														return nil;
													end)();
													v118 = (function()
														return 1;
													end)();
												end
												if (v118 == 1) then
													v109 = (function()
														return 1 + 0;
													end)();
													break;
												end
											end
										end
										if (v109 == 1) then
											v112 = (function()
												return nil;
											end)();
											while true do
												if (v110 == #"{") then
													if (v111 == #"<") then
														v112 = (function()
															return v21() ~= 0;
														end)();
													elseif (v111 == 2) then
														v112 = (function()
															return v24();
														end)();
													elseif (v111 ~= #"xnx") then
													else
														v112 = (function()
															return v25();
														end)();
													end
													v58[v108] = (function()
														return v112;
													end)();
													break;
												end
												if (0 == v110) then
													local v123 = (function()
														return 1500 - (1408 + 92);
													end)();
													local v124 = (function()
														return;
													end)();
													while true do
														if (v123 == 0) then
															v124 = (function()
																return 1086 - (461 + 625);
															end)();
															while true do
																if (v124 ~= (1289 - (993 + 295))) then
																else
																	v110 = (function()
																		return #"}";
																	end)();
																	break;
																end
																if (v124 == 0) then
																	v111 = (function()
																		return v21();
																	end)();
																	v112 = (function()
																		return nil;
																	end)();
																	v124 = (function()
																		return 1;
																	end)();
																end
															end
															break;
														end
													end
												end
											end
											break;
										end
									end
								end
								v56[#"19("] = (function()
									return v21();
								end)();
								v90 = (function()
									return 2;
								end)();
							end
						end
						break;
					end
				end
			end
			if ((0 + 0) == v52) then
				local v91 = (function()
					return 0;
				end)();
				local v92 = (function()
					return;
				end)();
				while true do
					if ((1171 - (418 + 753)) ~= v91) then
					else
						v92 = (function()
							return 0 + 0;
						end)();
						while true do
							if ((0 + 0) == v92) then
								v53 = (function()
									return {};
								end)();
								v54 = (function()
									return {};
								end)();
								v92 = (function()
									return 1 + 0;
								end)();
							end
							if (v92 ~= 1) then
							else
								v55 = (function()
									return {};
								end)();
								v56 = (function()
									return {v53,v54,nil,v55};
								end)();
								v92 = (function()
									return 2;
								end)();
							end
							if (v92 == (1 + 1)) then
								v52 = (function()
									return #"\\";
								end)();
								break;
							end
						end
						break;
					end
				end
			end
		end
	end
	local function v29(v59, v60, v61)
		local v62 = v59[1];
		local v63 = v59[531 - (406 + 123)];
		local v64 = v59[3];
		return function(...)
			local v67 = v62;
			local v68 = v63;
			local v69 = v64;
			local v70 = v27;
			local v71 = 1770 - (1749 + 20);
			local v72 = -(1 + 0);
			local v73 = {};
			local v74 = {...};
			local v75 = v12("#", ...) - 1;
			local v76 = {};
			local v77 = {};
			for v87 = 0 + 0, v75 do
				if (v87 >= v69) then
					v73[v87 - v69] = v74[v87 + (1146 - (466 + 679))];
				else
					v77[v87] = v74[v87 + 1];
				end
			end
			local v78 = (v75 - v69) + (2 - (4 - 3));
			local v79;
			local v80;
			while true do
				local v88 = 0 - (0 - 0);
				while true do
					if ((v88 == 1) or (4951 < 4430)) then
						if (v80 <= (1935 - (106 + 1794))) then
							if (v80 <= (6 + 11)) then
								if (v80 <= 8) then
									if (v80 <= (1 + (5 - 3))) then
										if (v80 <= (2 - 1)) then
											if (v80 == (0 - 0)) then
												v77[v79[116 - (4 + 110)]] = v79[587 - (57 + 527)];
											else
												v77[v79[1429 - (41 + 1386)]] = v61[v79[106 - (17 + 86)]];
											end
										elseif (v80 == (2 + 0)) then
											v77[v79[3 - (326 - (45 + 280))]] = v79[8 - 5] + v77[v79[4]];
										else
											local v130 = 166 - (118 + 4 + 39 + 5);
											local v131;
											local v132;
											local v133;
											while true do
												if (v130 == (2 - 0)) then
													if ((96 == 96) and (v132 > (0 - 0))) then
														if ((v133 <= v77[v131 + 1 + 0 + 0]) or (2739 > 4008)) then
															v71 = v79[1 + 0 + 2];
															v77[v131 + (5 - 2)] = v133;
														end
													elseif ((v133 >= v77[v131 + (66 - (30 + 35))]) or (23 == 1134)) then
														local v350 = 0 + 0 + 0;
														while true do
															if (v350 == (1257 - (1043 + 214))) then
																v71 = v79[3];
																v77[v131 + (11 - (14 - 6))] = v133;
																break;
															end
														end
													end
													break;
												end
												if (v130 == (1212 - ((2234 - (340 + 1571)) + 889))) then
													v131 = v79[5 - (2 + 1)];
													v132 = v77[v131 + (582 - (361 + 219))];
													v130 = (2093 - (1733 + 39)) - ((145 - 92) + 267);
												end
												if (v130 == (1 + 0)) then
													v133 = v77[v131] + v132;
													v77[v131] = v133;
													v130 = 2;
												end
											end
										end
									elseif (v80 <= (418 - ((1049 - (125 + 909)) + 398))) then
										if ((v80 > (986 - (18 + 964))) or (2693 >= 4111)) then
											local v134 = 0 - 0;
											local v135;
											while true do
												if (v134 == (0 + 0)) then
													v135 = v79[2 + 0];
													do
														return v13(v77, v135, v72);
													end
													break;
												end
											end
										elseif (not v77[v79[852 - (20 + 830)]] or (4316 <= 2146)) then
											v71 = v71 + 1 + 0;
										else
											v71 = v79[3];
										end
									elseif (v80 <= (132 - (116 + 10))) then
										local v136 = 0 + 0;
										local v137;
										local v138;
										local v139;
										while true do
											if (((739 - (542 + 196)) == v136) or (3546 <= 2809)) then
												v139 = v77[v137] + v138;
												v77[v137] = v139;
												v136 = 2;
											end
											if ((0 - 0) == v136) then
												v137 = v79[1 + 1];
												v138 = v77[v137 + 2 + 0];
												v136 = 1 + 0;
											end
											if (v136 == (4 - 2)) then
												if (v138 > (0 - 0)) then
													if ((4904 > 2166) and (v139 <= v77[v137 + 1])) then
														v71 = v79[1554 - (1126 + 425)];
														v77[v137 + (408 - (118 + (2235 - (1096 + 852))))] = v139;
													end
												elseif (v139 >= v77[v137 + 1]) then
													local v353 = 0 - 0;
													while true do
														if ((109 >= 90) and (v353 == ((503 + 618) - (118 + 1003)))) then
															v71 = v79[3];
															v77[v137 + (8 - 5)] = v139;
															break;
														end
													end
												end
												break;
											end
										end
									elseif (v80 > (384 - (142 + 235))) then
										local v256 = v79[9 - 7];
										local v257, v258 = v70(v77[v256](v77[v256 + 1 + 0]));
										v72 = (v258 + v256) - (978 - (553 + 424));
										local v259 = 0 - 0;
										for v299 = v256, v72 do
											v259 = v259 + 1 + 0;
											v77[v299] = v257[v259];
										end
									else
										v77[v79[2]][v77[v79[3 + 0]]] = v77[v79[3 + 1]];
									end
								elseif (v80 <= (6 + 6)) then
									if (v80 <= ((7 - 1) + 4)) then
										if (v80 == (19 - 10)) then
											local v140 = v79[5 - (3 + 0)];
											do
												return v77[v140](v13(v77, v140 + 1, v79[6 - 3]));
											end
										else
											v77[v79[1 + 1]][v77[v79[14 - 11]]] = v79[757 - (239 + 514)];
										end
									elseif ((4978 > 2905) and (v80 > (4 + (519 - (409 + 103))))) then
										v77[v79[1331 - ((1033 - (46 + 190)) + 532)]][v79[3 + (95 - (51 + 44))]] = v79[2 + 2];
									else
										v77[v79[4 - 2]] = v60[v79[1205 - (373 + 829)]];
									end
								elseif ((v80 <= (745 - (476 + 255))) or (3026 <= 2280)) then
									if (v80 > (1143 - (369 + 761))) then
										if (v77[v79[2 + 0 + 0]] == v79[4]) then
											v71 = v71 + (1 - 0);
										else
											v71 = v79[5 - 2];
										end
									else
										local v147 = v79[2];
										local v148, v149 = v70(v77[v147](v13(v77, v147 + (239 - (64 + (1491 - (1114 + 203)))), v72)));
										v72 = (v149 + v147) - (1 + 0);
										local v150 = 0 - 0;
										for v233 = v147, v72 do
											v150 = v150 + (337 - (144 + 192));
											v77[v233] = v148[v150];
										end
									end
								elseif (v80 <= 15) then
									local v151 = (942 - (228 + 498)) - (42 + 174);
									local v152;
									local v153;
									while true do
										if ((v151 == (1 + 0)) or (1653 <= 1108)) then
											v77[v152 + 1 + 0] = v153;
											v77[v152] = v153[v79[4]];
											break;
										end
										if (v151 == (0 + 0)) then
											v152 = v79[1506 - (363 + 1141)];
											v153 = v77[v79[1583 - (1183 + 397)]];
											v151 = 1;
										end
									end
								elseif (v80 == (48 - 32)) then
									v77[v79[2 + 0]][v79[3 + 0]] = v77[v79[1979 - (1913 + 62)]];
								else
									local v265 = v79[2 + 0];
									v77[v265](v77[v265 + 1]);
								end
							elseif (v80 <= (68 - 42)) then
								if ((2909 > 2609) and (v80 <= 21)) then
									if ((757 > 194) and (v80 <= (1952 - (565 + 1368)))) then
										if (v80 == (4 + 14)) then
											local v154 = v79[7 - 5];
											v77[v154] = v77[v154]();
										else
											v77[v79[(919 + 744) - (1477 + (847 - (174 + 489)))]] = v79[3] + v77[v79[5 - 1]];
										end
									elseif ((v80 > (19 + 1)) or (31 >= 1398)) then
										local v157 = v79[858 - (564 + 292)];
										v77[v157](v13(v77, v157 + (1 - 0), v72));
									else
										local v158 = v79[2];
										v77[v158](v13(v77, v158 + (2 - 1), v79[3]));
									end
								elseif (v80 <= 23) then
									if ((3196 <= 4872) and (v80 > (326 - ((635 - 391) + 60)))) then
										local v159 = v79[(1907 - (830 + 1075)) + 0];
										v77[v159] = v77[v159](v13(v77, v159 + (477 - (41 + 435)), v79[1004 - (938 + (587 - (303 + 221)))]));
									else
										local v161 = v79[(1271 - (231 + 1038)) + 0];
										local v162, v163 = v70(v77[v161](v13(v77, v161 + (1126 - (936 + 189)), v79[1 + 2])));
										v72 = (v163 + v161) - (1614 - (1565 + 40 + 8));
										local v164 = 0 + 0;
										for v236 = v161, v72 do
											local v237 = 1138 - (782 + 356);
											while true do
												if (v237 == (267 - ((1338 - (171 + 991)) + 91))) then
													v164 = v164 + (2 - 1);
													v77[v236] = v162[v164];
													break;
												end
											end
										end
									end
								elseif (v80 <= (34 - 10)) then
									v77[v79[1094 - (975 + 117)]][v77[v79[1878 - (157 + (7080 - 5362))]]] = v79[4 + 0];
								elseif ((3326 == 3326) and (v80 == (88 - 63))) then
									local v266 = v68[v79[3]];
									local v267;
									local v268 = {};
									v267 = v10({}, {__index=function(v307, v308)
										local v309 = v268[v308];
										return v309[3 - 2][v309[1020 - (697 + 321)]];
									end,__newindex=function(v310, v311, v312)
										local v313 = v268[v311];
										v313[1][v313[5 - 3]] = v312;
									end});
									for v315 = 1, v79[8 - 4] do
										local v316 = 0 - 0;
										local v317;
										while true do
											if ((1433 <= 3878) and (1 == v316)) then
												if ((v317[(2 - 1) + 0] == (114 - 53)) or (1583 == 1735)) then
													v268[v315 - (2 - 1)] = {v77,v317[1192 - (449 + 740)]};
												else
													v268[v315 - ((1407 - 534) - (826 + 46))] = {v60,v317[9 - 6]};
												end
												v76[#v76 + 1 + 0] = v268;
												break;
											end
											if ((v316 == (1898 - (260 + 1638))) or (2981 == 2350)) then
												v71 = v71 + (441 - (382 + 58));
												v317 = v67[v71];
												v316 = 3 - 2;
											end
										end
									end
									v77[v79[2 + 0]] = v29(v266, v267, v61);
								else
									local v270 = 0 - 0;
									local v271;
									local v272;
									local v273;
									while true do
										if ((v270 == (2 - 1)) or (4466 <= 493)) then
											v273 = v77[v271 + (1207 - (902 + 303))];
											if ((v273 > (0 - 0)) or (2547 <= 1987)) then
												if ((2961 > 2740) and (v272 > v77[v271 + 1])) then
													v71 = v79[(1254 - (111 + 1137)) - 3];
												else
													v77[v271 + 1 + (160 - (91 + 67))] = v272;
												end
											elseif (v272 < v77[v271 + 1]) then
												v71 = v79[(5038 - 3345) - (1121 + 569)];
											else
												v77[v271 + (217 - (22 + 48 + 144))] = v272;
											end
											break;
										end
										if (v270 == (683 - (483 + (723 - (423 + 100))))) then
											v271 = v79[(11 + 1454) - (1404 + 59)];
											v272 = v77[v271];
											v270 = 2 - 1;
										end
									end
								end
							elseif (v80 <= (83 - 53)) then
								if ((3696 >= 3612) and (v80 <= (37 - (5 + 4)))) then
									if (v80 == 27) then
										local v167 = v79[2];
										local v168, v169 = v70(v77[v167](v13(v77, v167 + (766 - (468 + 297)), v79[565 - (334 + 228)])));
										v72 = (v169 + v167) - (3 - (773 - (326 + 445)));
										local v170 = 0 - 0;
										for v238 = v167, v72 do
											local v239 = 0 - 0;
											while true do
												if ((v239 == (0 + 0)) or (2970 == 1878)) then
													v170 = v170 + 1;
													v77[v238] = v168[v170];
													break;
												end
											end
										end
									else
										for v240 = v79[238 - (141 + 95)], v79[3 + 0] do
											v77[v240] = nil;
										end
									end
								elseif (v80 > (74 - 45)) then
									local v171 = 0;
									local v172;
									while true do
										if (v171 == 0) then
											v172 = v79[4 - 2];
											v77[v172](v13(v77, v172 + 1 + 0, v79[(34 - 26) - 5]));
											break;
										end
									end
								else
									local v173 = v79[2 + 0];
									v77[v173] = v77[v173](v13(v77, v173 + 1 + (0 - 0), v79[4 - 1]));
								end
							elseif ((v80 <= (19 + 13)) or (3693 < 1977)) then
								if (v80 == (194 - (92 + 71))) then
									local v175 = 0 + 0;
									local v176;
									local v177;
									local v178;
									local v179;
									while true do
										if ((v175 == (0 - 0)) or (930 > 2101)) then
											v176 = v79[2];
											v177, v178 = v70(v77[v176](v13(v77, v176 + (766 - (574 + 191)), v72)));
											v175 = 1 + 0;
										end
										if (v175 == (4 - 2)) then
											for v330 = v176, v72 do
												v179 = v179 + 1 + 0;
												v77[v330] = v177[v179];
											end
											break;
										end
										if (v175 == (850 - (254 + 595))) then
											v72 = (v178 + v176) - 1;
											v179 = (293 - 167) - (55 + 71);
											v175 = 2 - 0;
										end
									end
								else
									v77[v79[1792 - (573 + 1217)]] = v77[v79[8 - 5]] % v79[4];
								end
							elseif (v80 <= 33) then
								local v181 = 0;
								local v182;
								local v183;
								local v184;
								local v185;
								while true do
									if (v181 == (0 + 0)) then
										v182 = v79[2];
										v183, v184 = v70(v77[v182](v77[v182 + ((712 - (530 + 181)) - 0)]));
										v181 = (1821 - (614 + 267)) - (714 + 225);
									end
									if (v181 == (2 - 1)) then
										v72 = (v184 + v182) - (1 - 0);
										v185 = 0;
										v181 = 2;
									end
									if (v181 == (1 + 1)) then
										for v333 = v182, v72 do
											local v334 = 0 - 0;
											while true do
												if ((4153 > 3086) and (v334 == (806 - (118 + 688)))) then
													v185 = v185 + (49 - (25 + 23));
													v77[v333] = v183[v185];
													break;
												end
											end
										end
										break;
									end
								end
							elseif ((v80 > (7 + 27)) or (4654 <= 4050)) then
								local v274 = 1886 - ((959 - (19 + 13)) + 959);
								local v275;
								while true do
									if ((v274 == 0) or (2602 < 1496)) then
										v275 = v79[6 - (6 - 2)];
										v77[v275](v77[v275 + 1]);
										break;
									end
								end
							else
								do
									return;
								end
							end
						elseif (v80 <= (785 - (16 + 716))) then
							if (v80 <= (84 - 40)) then
								if ((v80 <= (136 - (11 + 86))) or (1020 > 2288)) then
									if ((328 == 328) and (v80 <= (90 - 53))) then
										if (v80 > (321 - (175 + 110))) then
											v77[v79[4 - 2]] = v77[v79[14 - 11]][v79[1800 - (503 + 1293)]];
										else
											v77[v79[5 - 3]][v79[3 + 0]] = v77[v79[1065 - (810 + 251)]];
										end
									elseif ((1511 < 3808) and (v80 > (27 + 11))) then
										v77[v79[2]] = v77[v79[(2 - 1) + 2]][v79[4 + 0]];
									else
										local v192 = 0;
										local v193;
										while true do
											if (0 == v192) then
												v193 = v79[(1528 - 993) - (43 + 490)];
												v77[v193] = v77[v193](v13(v77, v193 + (734 - (711 + 22)), v72));
												break;
											end
										end
									end
								elseif (v80 <= (158 - 117)) then
									if (v80 > (899 - (240 + 619))) then
										v77[v79[1 + 1]] = v60[v79[4 - 1]];
									else
										for v242 = v79[1 + 1], v79[(454 + 1293) - (1344 + 400)] do
											v77[v242] = nil;
										end
									end
								elseif ((v80 <= 42) or (2510 > 4919)) then
									v77[v79[2]] = v77[v79[408 - (255 + 150)]] % v77[v79[4]];
								elseif (v80 == (34 + 9)) then
									local v276 = v79[2];
									v77[v276] = v77[v276](v13(v77, v276 + 1 + 0, v72));
								else
									local v278 = 0;
									local v279;
									while true do
										if ((4763 == 4763) and (v278 == (0 - 0))) then
											v279 = v79[6 - 4];
											v77[v279] = v77[v279]();
											break;
										end
									end
								end
							elseif (v80 <= (1787 - (404 + 1335))) then
								if (v80 <= (452 - (183 + 223))) then
									if (v80 > (54 - 9)) then
										v77[v79[2]] = v77[v79[2 + 1]] + v79[2 + 2];
									else
										v77[v79[3 - 1]] = #v77[v79[340 - ((20 - 10) + (2139 - (1293 + 519)))]];
									end
								elseif (v80 == 47) then
									if (v79[2 + 0] == v77[v79[342 - (118 + 220)]]) then
										v71 = v71 + 1;
									else
										v71 = v79[1 + 2];
									end
								elseif (v77[v79[(919 - 468) - (108 + 341)]] == v79[2 + 2]) then
									v71 = v71 + (4 - 3);
								else
									v71 = v79[3];
								end
							elseif (v80 <= (1543 - (711 + 782))) then
								if (v80 > (93 - 44)) then
									v71 = v79[472 - (270 + 199)];
								else
									v77[v79[2]] = {};
								end
							elseif ((4137 > 1848) and (v80 <= 51)) then
								v77[v79[2]] = v79[1 + 2];
							elseif (v80 > (1871 - (580 + 1239))) then
								v77[v79[5 - (7 - 4)]][v77[v79[3 + 0]]] = v77[v79[(1 - 0) + (12 - 9)]];
							else
								v71 = v79[2 + 1];
							end
						elseif (v80 <= (161 - 99)) then
							if ((2436 <= 3134) and (v80 <= (36 + 21))) then
								if (v80 <= (1222 - (645 + 522))) then
									if (v80 > (1844 - (1010 + (1837 - 1057)))) then
										local v203 = v79[2];
										do
											return v13(v77, v203, v72);
										end
									else
										v77[v79[2 + 0]] = v77[v79[14 - 11]] % v77[v79[(6 + 5) - 7]];
									end
								elseif (v80 == 56) then
									local v205 = v68[v79[1839 - (1045 + 162 + 629)]];
									local v206;
									local v207 = {};
									v206 = v10({}, {__index=function(v244, v245)
										local v246 = v207[v245];
										return v246[2 - 1][v246[2 - 0]];
									end,__newindex=function(v247, v248, v249)
										local v250 = v207[v248];
										v250[506 - (351 + 154)][v250[1576 - (1281 + 293)]] = v249;
									end});
									for v252 = 267 - (28 + 238), v79[1 + 3] do
										v71 = v71 + (2 - 1);
										local v253 = v67[v71];
										if (v253[1] == (1620 - (1381 + 178))) then
											v207[v252 - (1 + 0 + 0)] = {v77,v253[10 - 7]};
										else
											v207[v252 - 1] = {v60,v253[3 + 0]};
										end
										v76[#v76 + (1097 - (709 + 387)) + 0] = v207;
									end
									v77[v79[2 - 0]] = v29(v205, v206, v61);
								else
									v77[v79[1158 - (1074 + 82)]] = #v77[v79[6 - 3]];
								end
							elseif (v80 <= (1843 - (214 + 1570))) then
								if (v80 == (1513 - (990 + 465))) then
									v77[v79[1 + 1]] = v77[v79[2 + 1]] + v79[(1862 - (673 + 1185)) + 0];
								else
									v77[v79[7 - 5]] = {};
								end
							elseif (v80 <= (1786 - (1668 + 58))) then
								do
									return;
								end
							elseif (v80 > (687 - (512 + 114))) then
								if not v77[v79[2]] then
									v71 = v71 + (2 - 1);
								else
									v71 = v79[5 - 2];
								end
							else
								v77[v79[(17 - 11) - 4]] = v77[v79[(6 - 4) + 1]];
							end
						elseif (v80 <= 66) then
							if ((3723 == 3723) and (v80 <= (12 + 52))) then
								if (v80 == (55 + 8)) then
									v77[v79[(9 - 3) - 4]][v79[(1429 + 568) - (109 + 1885)]] = v79[1473 - (1269 + 200)];
								else
									v77[v79[3 - 1]] = v61[v79[818 - (98 + 717)]];
								end
							elseif (v80 > (49 + 16)) then
								local v216 = 826 - (802 + 24);
								local v217;
								while true do
									if ((0 - (0 - 0)) == v216) then
										v217 = v79[2 - 0];
										v77[v217](v13(v77, v217 + 1, v72));
										break;
									end
								end
							elseif (v79[1 + 1] == v77[v79[4]]) then
								v71 = v71 + 1 + 0 + 0;
							else
								v71 = v79[3];
							end
						elseif ((v80 <= ((23 - 11) + 56)) or (4046 >= 4316)) then
							if ((v80 == (15 + 52)) or (2008 < 1929)) then
								local v218 = v79[5 - 3];
								local v219 = v77[v218];
								local v220 = v77[v218 + (6 - 4)];
								if (v220 > (0 + 0)) then
									if (v219 > v77[v218 + 1 + 0]) then
										v71 = v79[3 + 0];
									else
										v77[v218 + 3 + 0] = v219;
									end
								elseif ((2384 > 1775) and (v219 < v77[v218 + 1])) then
									v71 = v79[(3 - 1) + 1];
								else
									v77[v218 + (1436 - (797 + 636))] = v219;
								end
							else
								local v221 = v79[9 - 7];
								do
									return v77[v221](v13(v77, v221 + (1620 - (1427 + 192)), v79[2 + 1]));
								end
							end
						elseif (v80 <= 69) then
							local v222 = v79[4 - 2];
							local v223 = v77[v79[3]];
							v77[v222 + 1 + 0] = v223;
							v77[v222] = v223[v79[(1882 - (446 + 1434)) + 2]];
						elseif ((v80 == (396 - (192 + 134))) or (4543 <= 4376)) then
							v77[v79[1278 - (316 + 960)]] = v77[v79[3]];
						else
							v77[v79[(1285 - (1040 + 243)) + 0]] = v77[v79[3]] % v79[4 + 0];
						end
						v71 = v71 + 1 + 0;
						break;
					end
					if (v88 == (0 - 0)) then
						v79 = v67[v71];
						v80 = v79[552 - (83 + 468)];
						v88 = 1807 - (1202 + 604);
					end
				end
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!833Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E73657274025Q00405240030B3Q0091E0C8CD34EDBD70B8FBC603083Q001EDE92A1A25AAED2026Q005240030C3Q00C5CAC33BEFC2EB32EAC1C82F03043Q005D86A5AD025Q00C05140030A3Q009E79AF8510A276BF893403053Q0053CD18D9E0025Q00805140030B3Q006FC531D93455C938D5114A03053Q006427AC55BC025Q00405140032E3Q009881340494CEFC98E9227186CEFD8188236F93DF8F9F803C0491DEE6ECE1135DECABF7BCA51E4DA2D4FD8E85290D03073Q00AFCCC97124D68B026Q00514003043Q00A204524303073Q0080EC653F268421026Q00504003073Q00F51C13DAB9729503073Q00E6B47F67B3D61C025Q00804F4003043Q000B85B24903083Q007045E4DF2C64E871025Q00804E40030B3Q009DCF15FD71E3A0F21EFC6103063Q0096CDBD709018025Q00804D4003043Q0033EEB7BE03073Q00C77A8DD8D0CCDD026Q004D4003043Q00AC2DC41C03053Q0087E14CAD72025Q00804C4003043Q003F31BF3D03073Q00497150D2582E57025Q0080494003113Q00F10A92FBC3C00E96F2CEF01B8DE5CBC40A03053Q00AAA36FE297025Q00804840030F3Q00091B8BC5A1782D8AC3A933438DD3BE03053Q00CA586EE2A6026Q00484003083Q00F1E73DBEA4FF08D903073Q006BB28651D2C69E025Q0080474003263Q008DE7D7CBBBE29BE7B9FAD3CDBDFB9BF5ADE0D8CFF5CAD3C1BBE2D4D1ACA9FCC5B5ECCBC5ABFA03043Q00A4D889BB026Q00474003043Q00765F082C03073Q0072383E6549478D026Q00444003113Q00E6C1FE50DDC7EF48D1C0DD48DBD6EF5BD103043Q003CB4A48E026Q00434003063Q0066274D2C204C03073Q009836483F58453E025Q0080424003083Q0024EFA9C205EFA6C503043Q00AE678EC5026Q00424003163Q00FD202C8FB712BCF8213294B10BBCEF2F2D85A418EFDB03073Q009CA84E40E0D479025Q0080414003043Q00E9557D1103063Q007EA7341074D9026Q003C4003113Q003513A9270E15B83F02128A3F0804B82C0203043Q004B6776D9026Q003940030A3Q00A8F83353FFA2ACFF3E5903063Q00C7EB90523D98026Q00384003083Q0095E826C71AAF30CC03083Q00A7D6894AAB78CE53026Q003740030E3Q0039C0527B737EE7E2088E7D736D7F03083Q00876CAE3E121E1793026Q00364003043Q0095D84F5803053Q007EDBB9223D026Q00304003113Q00608D39CD25DD539C2CC51FCA5D9A28C62903063Q00BE32E849A14C026Q002C4003083Q0089CA302B1BABC83703053Q0079CAAB5C47026Q002A40030D3Q001FD70EB3860B3EDC06FAAE3A1A03063Q00624AB962DAEB026Q00284003043Q0005BDCED203053Q00934BDCA3B7026Q00184003113Q006235452940413B443551165D4D2851375003073Q005A305035452922026Q00104003073Q00E2BA45C188C4A903053Q00E1A1DB36A9026Q00084003083Q001718B32QDD8CDF3F03073Q00BC5479DFB1BFED027Q004003173Q0076A671732B1834A642BB2Q752D0134A242A5786C29006703083Q00E523C81D1C487314026Q00F03F03043Q0056E4704303073Q002018851D269C37028Q0003093Q00412Q6442752Q746F6E03043Q00496E697403073Q004D616B6554616203173Q00726278612Q73657469643A2Q2F2Q34382Q3334352Q39380100030A3Q00412Q6453656374696F6E030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574033D3Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F73686C6578776172652F4F72696F6E2F6D61696E2F736F75726365030A3Q004D616B6557696E646F772Q01003A013Q00317Q001240000100013Q002025000100010002001240000200013Q002025000200020003001240000300013Q002025000300030004001240000400053Q0006040004000B000100010004343Q000B0001001240000400063Q002025000500040007001240000600083Q002025000600060009001240000700083Q00202500070007000A00061900083Q000100062Q003D3Q00074Q003D3Q00014Q003D3Q00054Q003D3Q00024Q003D3Q00034Q003D3Q00064Q0046000900083Q00122Q000A000C3Q00122Q000B000D4Q00170009000B00020010243Q000B00092Q0046000900083Q00122Q000A000F3Q00122Q000B00104Q00170009000B00020010243Q000E00092Q0046000900083Q00122Q000A00123Q00122Q000B00134Q00170009000B00020010243Q001100092Q0046000900083Q00122Q000A00153Q00122Q000B00164Q00170009000B00020010243Q001400092Q0046000900083Q00122Q000A00183Q00122Q000B00194Q00170009000B00020010243Q001700092Q0046000900083Q00122Q000A001B3Q00122Q000B001C4Q00170009000B00020010243Q001A00092Q0046000900083Q00122Q000A001E3Q00122Q000B001F4Q00170009000B00020010243Q001D00092Q0046000900083Q00122Q000A00213Q00122Q000B00224Q00170009000B00020010243Q002000092Q0046000900083Q00122Q000A00243Q00122Q000B00254Q00170009000B00020010243Q002300092Q0046000900083Q00122Q000A00273Q00122Q000B00284Q00170009000B00020010243Q002600092Q0046000900083Q00122Q000A002A3Q00122Q000B002B4Q00170009000B00020010243Q002900092Q0046000900083Q00122Q000A002D3Q00122Q000B002E4Q00170009000B00020010243Q002C00092Q0046000900083Q00122Q000A00303Q00122Q000B00314Q00170009000B00020010243Q002F00092Q0046000900083Q00122Q000A00333Q00122Q000B00344Q00170009000B00020010243Q003200092Q0046000900083Q00122Q000A00363Q00122Q000B00374Q00170009000B00020010243Q003500092Q0046000900083Q00122Q000A00393Q00122Q000B003A4Q00170009000B00020010243Q003800092Q0046000900083Q00122Q000A003C3Q00122Q000B003D4Q00170009000B00020010243Q003B00092Q0046000900083Q00122Q000A003F3Q00122Q000B00404Q00170009000B00020010243Q003E00092Q0046000900083Q00122Q000A00423Q00122Q000B00434Q00170009000B00020010243Q004100092Q0046000900083Q00122Q000A00453Q00122Q000B00464Q00170009000B00020010243Q004400092Q0046000900083Q00122Q000A00483Q00122Q000B00494Q00170009000B00020010243Q004700092Q0046000900083Q00122Q000A004B3Q00122Q000B004C4Q00170009000B00020010243Q004A00092Q0046000900083Q00122Q000A004E3Q00122Q000B004F4Q00170009000B00020010243Q004D00092Q0046000900083Q00122Q000A00513Q00122Q000B00524Q00170009000B00020010243Q005000092Q0046000900083Q00122Q000A00543Q00122Q000B00554Q00170009000B00020010243Q005300092Q0046000900083Q00122Q000A00573Q00122Q000B00584Q00170009000B00020010243Q005600092Q0046000900083Q00122Q000A005A3Q00122Q000B005B4Q00170009000B00020010243Q005900092Q0046000900083Q00122Q000A005D3Q00122Q000B005E4Q00170009000B00020010243Q005C00092Q0046000900083Q00122Q000A00603Q00122Q000B00614Q00170009000B00020010243Q005F00092Q0046000900083Q00122Q000A00633Q00122Q000B00644Q00170009000B00020010243Q006200092Q0046000900083Q00122Q000A00663Q00122Q000B00674Q00170009000B00020010243Q006500092Q0046000900083Q00122Q000A00693Q00122Q000B006A4Q00170009000B00020010243Q006800092Q0046000900083Q00122Q000A006C3Q00122Q000B006D4Q00170009000B00020010243Q006B00092Q0046000900083Q00122Q000A006F3Q00122Q000B00704Q00170009000B00020010243Q006E00092Q0046000900083Q00122Q000A00723Q00122Q000B00734Q00170009000B00020010243Q007100092Q0046000900083Q00122Q000A00753Q00122Q000B00764Q00170009000B00020010243Q0074000900122Q000900774Q0028000A000D3Q002630000900E40001006E0004343Q00E40001002045000E000C00782Q003100103Q000200202500113Q007400202500123Q00712Q000700100011001200202500113Q006E00061900120001000100012Q003D8Q00070010001100122Q001E000E00100001002045000E000C00782Q003100103Q000200202500113Q006500202500123Q00622Q000700100011001200202500113Q005F00061900120002000100012Q003D8Q00070010001100122Q001E000E0010000100122Q0009006B3Q000E2F006B00F3000100090004343Q00F30001002045000E000C00782Q003100103Q000200202500113Q005900202500123Q00562Q000700100011001200202500113Q005300061900120003000100012Q003D8Q00070010001100122Q001E000E00100001002045000E000A00792Q0023000E000200010004343Q00392Q010026300009000A2Q0100710004343Q000A2Q01002045000E000C00782Q003100103Q000200202500113Q004A00202500123Q00472Q000700100011001200202500113Q004400061900120004000100012Q003D8Q00070010001100122Q001E000E00100001002045000E000C00782Q003100103Q000200202500113Q003B00202500123Q00382Q000700100011001200202500113Q003500061900120005000100012Q003D8Q00070010001100122Q001E000E0010000100122Q0009006E3Q0026300009001F2Q0100740004343Q001F2Q01002045000E000B007A2Q003100103Q000300202500113Q002C00202500123Q00292Q000700100011001200202500113Q002600200A00100011007B00202500113Q002300200A00100011007C2Q0017000E001000022Q0046000C000E3Q002045000E000C007D2Q003100103Q000100202500113Q002000202500123Q001D2Q00070010001100122Q0017000E001000022Q0046000D000E3Q00122Q000900713Q002630000900CD000100770004343Q00CD0001001240000E007E3Q001240000F007F3Q002045000F000F008000122Q001100814Q001B000F00114Q0026000E3Q00022Q0012000E000100022Q0046000A000E3Q002045000E000A00822Q003100103Q000400202500113Q001A00202500123Q00172Q000700100011001200202500113Q001400200A00100011007C00202500113Q001100200A00100011008300202500113Q000E00202500123Q000B2Q00070010001100122Q0017000E001000022Q0046000B000E3Q00122Q000900743Q0004343Q00CD00012Q00223Q00013Q00063Q00023Q00026Q00F03F026Q00704002264Q003100025Q00122Q000300014Q002D00045Q00122Q000500013Q00041A0003002100012Q000B00076Q0046000800024Q000B000900014Q000B000A00024Q000B000B00034Q000B000C00044Q0046000D6Q0046000E00063Q00203A000F000600012Q001B000C000F4Q0026000B3Q00022Q000B000C00034Q000B000D00044Q0046000E00014Q002D000F00014Q0036000F0006000F001013000F0001000F2Q002D001000014Q003600100006001000101300100001001000203A0010001000012Q001B000D00104Q000D000C6Q0026000A3Q0002002047000A000A00022Q00210009000A4Q001500073Q00010004060003000500012Q000B000300054Q0046000400024Q0009000300044Q003700036Q00223Q00017Q000D3Q00028Q00026Q00F03F026Q001040027Q0040026Q003C4003043Q0067616D65030A3Q0047657453657276696365026Q00184003063Q004576656E747303053Q00472Q6F6473030A3Q0047616D6550612Q735245030A3Q004669726553657276657203063Q00756E7061636B001A3Q00124Q00014Q0028000100013Q000E2F0001000200013Q0004343Q000200012Q003100023Q00022Q000B00035Q00202500030003000300102400020002000300303F0002000400052Q0046000100023Q001240000200063Q0020450002000200072Q000B00045Q0020250004000400082Q001700020004000200202500020002000900202500020002000A00202500020002000B00204500020002000C0012400004000D4Q0046000500014Q0021000400054Q001500023Q00010004343Q001900010004343Q000200012Q00223Q00017Q000B3Q00028Q00026Q00F03F022Q0040E59C30A24203043Q0067616D65030A3Q0047657453657276696365026Q00304003063Q004576656E74732Q033Q00457870030B3Q004368616E67654578705245030A3Q004669726553657276657203063Q00756E7061636B00173Q00124Q00014Q0028000100013Q0026303Q0002000100010004343Q000200012Q003100023Q000100303F0002000200032Q0046000100023Q001240000200043Q0020450002000200052Q000B00045Q0020250004000400062Q001700020004000200202500020002000700202500020002000800202500020002000900204500020002000A0012400004000B4Q0046000500014Q0021000400054Q001500023Q00010004343Q001600010004343Q000200012Q00223Q00017Q00103Q00028Q00026Q00F03F026Q003940027Q004003043Q006D61746803043Q0068756765026Q000840010003043Q0067616D65030A3Q0047657453657276696365026Q003C4003063Q004576656E747303043Q00476F6C64030C3Q004368616E6765476F6C645246030C3Q00496E766F6B6553657276657203063Q00756E7061636B001D3Q00124Q00014Q0028000100013Q0026303Q0002000100010004343Q000200012Q003100023Q00032Q000B00035Q002025000300030003001024000200020003001240000300053Q00202500030003000600102400020004000300303F0002000700082Q0046000100023Q001240000200093Q00204500020002000A2Q000B00045Q00202500040004000B2Q001700020004000200202500020002000C00202500020002000D00202500020002000E00204500020002000F001240000400104Q0046000500014Q0021000400054Q001500023Q00010004343Q001C00010004343Q000200012Q00223Q00017Q000D3Q00028Q00026Q00F03F026Q004340027Q0040026Q00144003043Q0067616D65030A3Q0047657453657276696365026Q00444003063Q004576656E747303053Q00472Q6F6473030A3Q0047616D6550612Q735245030A3Q004669726553657276657203063Q00756E7061636B001A3Q00124Q00014Q0028000100013Q0026303Q0002000100010004343Q000200012Q003100023Q00022Q000B00035Q00202500030003000300102400020002000300303F0002000400052Q0046000100023Q001240000200063Q0020450002000200072Q000B00045Q0020250004000400082Q001700020004000200202500020002000900202500020002000A00202500020002000B00204500020002000C0012400004000D4Q0046000500014Q0021000400054Q001500023Q00010004343Q001900010004343Q000200012Q00223Q00017Q000B3Q00026Q00F03F025Q00804840027Q004003043Q0067616D65030A3Q0047657453657276696365025Q0080494003063Q004576656E747303053Q00472Q6F6473030A3Q0047616D6550612Q735245030A3Q004669726553657276657203063Q00756E7061636B00134Q00315Q00022Q000B00015Q0020250001000100020010243Q0001000100303F3Q00030001001240000100043Q0020450001000100052Q000B00035Q0020250003000300062Q001700010003000200202500010001000700202500010001000800202500010001000900204500010001000A0012400003000B4Q004600046Q0021000300044Q001500013Q00012Q00223Q00017Q00", v9(), ...);
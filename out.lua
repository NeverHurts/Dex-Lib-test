local Main,Lib,Apps,Settings -- Main Containers
local Explorer, Properties, Console, Notebook -- Major Apps
local API,RMD,env,service,plr,create,createSimple -- Main Locals

local function initDeps(data)
	Main = data.Main
	Lib = data.Lib
	Apps = data.Apps
	Settings = data.Settings

	API = data.API
	RMD = data.RMD
	env = data.env
	service = data.service
	plr = data.plr
	create = data.create
	createSimple = data.createSimple
end

local function initAfterMain()
	Explorer = Apps.Explorer
	Properties = Apps.Properties
	Console = Apps.Console
	Notebook = Apps.Notebook
end

local function main()
local Console = {}

	local window,ConsoleFrame
	
	local OutputLimit = 500 -- Same as Roblox.
	
	Console.Init = function()
		
		
		
		-- Instances: 29 | Scripts: 1 | Modules: 1 | Tags: 0
		local G2L = {};

		-- StarterGui.ScreenGui
		window = Lib.Window.new()
		window:SetTitle("Console")
		window:Resize(500,400)
		Console.Window = window
		
		-- StarterGui.ScreenGui.Console
		ConsoleFrame = Instance.new("ImageButton", window.GuiElems.Content);
		ConsoleFrame["BorderSizePixel"] = 0;
		ConsoleFrame["AutoButtonColor"] = false;
		ConsoleFrame["BackgroundTransparency"] = 1;
		ConsoleFrame["BackgroundColor3"] = Color3.fromRGB(47, 47, 47);
		ConsoleFrame["Selectable"] = false;
		ConsoleFrame["Size"] = UDim2.new(1,0,1,0);
		ConsoleFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		ConsoleFrame["Name"] = [[Console]];
		ConsoleFrame["Position"] = UDim2.new(0,0,0,0);


		-- StarterGui.ScreenGui.Console.CommandLine
		G2L["3"] = Instance.new("Frame", ConsoleFrame);
		G2L["3"]["BorderSizePixel"] = 0;
		G2L["3"]["BackgroundColor3"] = Color3.fromRGB(37, 37, 37);
		G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 1);
		G2L["3"]["ClipsDescendants"] = true;
		G2L["3"]["Size"] = UDim2.new(1, -8, 0, 22);
		G2L["3"]["Position"] = UDim2.new(0.5, 0, 1, -5);
		G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["3"]["Name"] = [[CommandLine]];

end

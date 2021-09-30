print("VehicleTechnics starts");

if not VehicleTechnics then  VehicleTechnics = {} end

function VehicleTechnics.applyTweaks()
    local entity;
    for carName,properties in pairs(VehicleTechnics.carData) do 
        for i,script in ipairs(properties) do 
            entity = ScriptManager.instance:getVehicle(carName);     
            if entity ~= nil then
                local module, name = carName:match"([^.]*).(.*)"
                entity:Load(name, "{"..script.."}");
                print("VehicleTechnics Car:"..carName..":"..script);
            end
        end
    end

    for itemName,properties in pairs(VehicleTechnics.itemData) do 
        for i,script in pairs(properties) do 
            entity = ScriptManager.instance:getItem(itemName);
            if entity ~= nil then
                entity:DoParam(script);
                print("VehicleTechnics Item:"..itemName..":"..script);
            end
        end
    end

end

VehicleTechnics.carData = {
    ["Base.CarNormal"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.SmallCar"] = {
        "part TruckBed { container { capacity = 80, } }",
        "part Seat* { container { capacity = 40, } }",
    },
    ["Base.SmallCar02"] = {
        "part TruckBed { container { capacity = 80, } }",
        "part Seat* { container { capacity = 40, } }",
    },
    ["Base.SportsCar_ez"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.CarLightsPolice"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.ModernCar02"] = {
        "part TruckBed { container { capacity = 90, } }",
    },
    ["Base.ModernCar_Martin"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.CarLights"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.CarStationWagon"] = {
        "part TruckBed { container { capacity = 120, } }",
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.CarStationWagon2"] = {
        "part TruckBed { container { capacity = 120, } }",
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.OffRoad"] = {
        "part GloveBox { container { capacity = 10, } }",
        "part TruckBed { container { capacity = 80, } }",
        "part Seat* { container { capacity = 40, } }",
    },
    ["Base.PickUpTruck"] = {
        "part TruckBedOpen { container { capacity = 220, } }",
    },
    ["Base.PickUpTruckLights"] = {
        "part TruckBedOpen { container { capacity = 220, } }",
    },
    ["Base.PickUpTruckLightsFire"] = {
        "part TruckBedOpen { container { capacity = 220, } }",
    },
    ["Base.PickUpTruckMccoy"] = {
        "part TruckBedOpen { container { capacity = 220, } }",
    },
    ["Base.PickUpVan"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.PickUpVanLights"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.PickUpVanLightsFire"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.PickUpVanLightsPolice"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.PickUpVanMccoy"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.StepVanMail"] = {
        "part TruckBed { container { capacity = 320, } }",
    },
    ["Base.StepVan"] = {
        "part TruckBed { container { capacity = 320, } }",
    },
    ["Base.CarTaxi"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.CarTaxi2"] = {
        "part GloveBox { container { capacity = 10, } }",
    },
    ["Base.Van"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.VanAmbulance"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.VanRadio"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.VanSpecial"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    ["Base.VanSpiffo"] = {
        "part TruckBed { container { capacity = 260, } }",
    },
    -- override trailer template
    ["Base.Trailer"] = {
        "part TrailerTrunk { container { capacity = 400, } }",
    },
    -- override trailer template
    ["Base.TrailerCover"] = {
        "part TrailerTrunk { container { capacity = 400, } }",
    },
};

VehicleTechnics.itemData = {
    ["Base.EngineParts"] = {
        "Weight = 1.0",
    },
    -- brakes
    ["Base.OldBrake1"] = {
        "Weight = 1.0",
    },
    ["Base.OldBrake2"] = {
        "Weight = 1.0",
    },
    ["Base.OldBrake3"] = {
        "Weight = 1.0",
    },
    ["Base.NormalBrake1"] = {
        "Weight = 1.0",
    },
    ["Base.NormalBrake2"] = {
        "Weight = 1.0",
    },
    ["Base.NormalBrake3"] = {
        "Weight = 1.0",
    },
    ["Base.ModernBrake1"] = {
        "Weight = 1.0",
    },
    ["Base.ModernBrake2"] = {
        "Weight = 1.0",
    },
    ["Base.ModernBrake3"] = {
        "Weight = 1.0",
    },
    -- suspensions
    ["Base.ModernSuspension1"] = {
        "Weight = 2.0",
    },
    ["Base.ModernSuspension2"] = {
        "Weight = 2.0",
    },
    ["Base.ModernSuspension3"] = {
        "Weight = 2.0",
    },
    -- windows
    ["Base.Windshield1"] = {
        "Weight = 1.0",
    },
    ["Base.Windshield2"] = {
        "Weight = 1.0",
    },
    ["Base.Windshield3"] = {
        "Weight = 1.0",
    },
    ["Base.RearWindshield1"] = {
        "Weight = 1.0",
    },
    ["Base.RearWindshield2"] = {
        "Weight = 1.0",
    },
    ["Base.RearWindshield3"] = {
        "Weight = 1.0",
    },
    ["Base.FrontWindow1"] = {
        "Weight = 1.0",
    },
    ["Base.FrontWindow2"] = {
        "Weight = 1.0",
    },
    ["Base.FrontWindow3"] = {
        "Weight = 1.0",
    },
    ["Base.RearWindow1"] = {
        "Weight = 1.0",
    },
    ["Base.RearWindow2"] = {
        "Weight = 1.0",
    },
    ["Base.RearWindow3"] = {
        "Weight = 1.0",
    },
    -- doors
    ["Base.FrontCarDoor1"] = {
        "Weight = 5.0",
    },
    ["Base.FrontCarDoor2"] = {
        "Weight = 5.0",
    },
    ["Base.FrontCarDoor3"] = {
        "Weight = 5.0",
    },
    ["Base.RearCarDoor1"] = {
        "Weight = 5.0",
    },
    ["Base.RearCarDoor2"] = {
        "Weight = 5.0",
    },
    ["Base.RearCarDoor3"] = {
        "Weight = 5.0",
    },
    ["Base.RearCarDoorDouble1"] = {
        "Weight = 10.0",
    },
    ["Base.RearCarDoorDouble2"] = {
        "Weight = 10.0",
    },
    ["Base.RearCarDoorDouble3"] = {
        "Weight = 10.0",
    },
    -- tires
    ["Base.OldTire1"] = {
        "Weight = 5.0",
    },
    ["Base.OldTire2"] = {
        "Weight = 5.0",
    },
    ["Base.OldTire3"] = {
        "Weight = 5.0",
    },
    ["Base.NormalTire1"] = {
        "Weight = 5.0",
    },
    ["Base.NormalTire2"] = {
        "Weight = 5.0",
    },
    ["Base.NormalTire3"] = {
        "Weight = 5.0",
    },
    ["Base.ModernTire1"] = {
        "Weight = 5.0",
    },
    ["Base.ModernTire2"] = {
        "Weight = 5.0",
    },
    ["Base.ModernTire3"] = {
        "Weight = 5.0",
    },
    -- tanks
    ["Base.SmallGasTank1"] = {
        "Weight = 4.0",
        "MaxCapacity = 40",
    },
    ["Base.SmallGasTank2"] = {
        "Weight = 4.0",
        "MaxCapacity = 70",
    },
    ["Base.SmallGasTank3"] = {
        "Weight = 3.0",
    },

    ["Base.NormalGasTank1"] = {
        "Weight = 5.0",
        "MaxCapacity = 70",
    },
    ["Base.NormalGasTank2"] = {
        "Weight = 7.0",
        "MaxCapacity = 100",
    },
    ["Base.NormalGasTank3"] = {
        "Weight = 4.0",
    },

    ["Base.BigGasTank1"] = {
        "Weight = 8.0",
        "MaxCapacity = 100",
    },
    ["Base.BigGasTank2"] = {
        "Weight = 10.0",
        "MaxCapacity = 150",
    },
    ["Base.BigGasTank3"] = {
        "Weight = 5.0",
    },
    -- trunks
    ["Base.SmallTrunk1"] = {
        "Weight = 10.0",
        "MaxCapacity = 100",
    },
    ["Base.SmallTrunk2"] = {
        "Weight = 20.0",
        "MaxCapacity = 200",
    },
    ["Base.SmallTrunk3"] = {
        "Weight = 10.0",
        "MaxCapacity = 50",
    },

    ["Base.NormalTrunk1"] = {
        "Weight = 15.0",
        "MaxCapacity = 100",
    },
    ["Base.NormalTrunk2"] = {
        "Weight = 25.0",
        "MaxCapacity = 200",
    },
    ["Base.NormalTrunk3"] = {
        "Weight = 15.0",
        "MaxCapacity = 55",
    },

    ["Base.BigTrunk1"] = {
        "Weight = 20.0",
        "MaxCapacity = 100",
    },
    ["Base.BigTrunk2"] = {
        "Weight = 30.0",
        "MaxCapacity = 200",
    },
    ["Base.BigTrunk3"] = {
        "Weight = 10.0",
        "MaxCapacity = 70",
    },

    ["Base.TrailerTrunk1"] = {
        "Weight = 10.0",
        "MaxCapacity = 200",
    },
    ["Base.TrailerTrunk2"] = {
        "Weight = 10.0",
        "MaxCapacity = 200",
    },
    ["Base.TrailerTrunk3"] = {
        "Weight = 10.0",
        "MaxCapacity = 200",
    },

    ["Base.VanSeatsTrunk2"] = {
        "MaxCapacity = 200",
    },
};

Events.OnGameBoot.Add(VehicleTechnics.applyTweaks);

print("VehicleTechnics ends");

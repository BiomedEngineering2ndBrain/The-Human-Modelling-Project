function [new_Gut, new_VascularSystem] = gut_calc(Gut, VascularSystem)
    Gut.time = Gut.time + Gut.time_step;
    Gut.gut_SpO2 = VascularSystem.arterial_SpO2;
    Gut.gut_glucose = VascularSystem.arterial_glucose;
    VascularSystem.venous_SpO2 = Gut.gut_SpO2*Gut.gut_flowrate;
    VascularSystem.venous_glucose = Gut.gut_glucose*Gut.gut_flowrate;
    new_Gut = Gut;
    new_VascularSystem = VascularSystem;
end

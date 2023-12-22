function [new_Heart, new_VascularSystem] = heart_calc(Heart, VascularSystem)
    Heart.time = Heart.time + Heart.time_step;
    Heart.heart_SpO2 = VascularSystem.arterial_SpO2;
    Heart.heart_glucose = VascularSystem.arterial_glucose;
    VascularSystem.venous_SpO2 = VascularSystem.venous_SpO2 + Heart.heart_SpO2*Heart.heart_flowrate;
    VascularSystem.venous_glucose = VascularSystem.venous_glucose + Heart.heart_glucose*Heart.heart_flowrate;
    new_Heart = Heart;
    new_VascularSystem = VascularSystem;
end

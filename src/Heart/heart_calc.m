function [new_Heart, new_VascularSystem] = heart_calc(Heart, VascularSystem)
    Heart.time = Heart.time + Heart.time_step;
    Heart.gut_SpO2 = VascularSystem.arterial_SpO2;
    Heart.gut_glucose = VascularSystem.arterial_glucose;
    new_Heart = Heart;
    new_VascularSystem = VascularSystem;
end

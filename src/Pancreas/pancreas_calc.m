function [new_Pancreas, new_VascularSystem] = pancreas_calc(Pancreas, VascularSystem)
    Pancreas.time = Pancreas.time + Pancreas.time_step;
    Pancreas.gut_SpO2 = VascularSystem.arterial_SpO2;
    Pancreas.gut_glucose = VascularSystem.arterial_glucose;
    new_Pancreas = Pancreas;
    new_VascularSystem = VascularSystem;
end

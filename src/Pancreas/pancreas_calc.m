function [new_Pancreas, new_VascularSystem] = pancreas_calc(Pancreas, VascularSystem)
    Pancreas.time = Pancreas.time + Pancreas.time_step;
    Pancreas.pancreas_SpO2 = VascularSystem.arterial_SpO2;
    Pancreas.pancreas_glucose = VascularSystem.arterial_glucose;
    new_Pancreas = Pancreas;
    new_VascularSystem = VascularSystem;
end

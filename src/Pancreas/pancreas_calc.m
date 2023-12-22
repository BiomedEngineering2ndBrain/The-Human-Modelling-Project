function [new_Pancreas, new_VascularSystem] = pancreas_calc(Pancreas, VascularSystem)
    Pancreas.time = Pancreas.time + Pancreas.time_step;
    Pancreas.pancreas_SpO2 = VascularSystem.arterial_SpO2;
    Pancreas.pancreas_glucose = VascularSystem.arterial_glucose;
    VascularSystem.venous_SpO2 = VascularSystem.venous_SpO2 + Pancreas.pancreas_SpO2*Pancreas.pancreas_flowrate;
    VascularSystem.venous_glucose = VascularSystem.venous_glucose + Pancreas.pancreas_glucose*Pancreas.pancreas_flowrate;
    new_Pancreas = Pancreas;
    new_VascularSystem = VascularSystem;
end

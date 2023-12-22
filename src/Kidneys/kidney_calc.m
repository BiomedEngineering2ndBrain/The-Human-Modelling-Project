function [new_Kidney, new_VascularSystem] = kidney_calc(Kidney, VascularSystem)
    Kidney.time = Kidney.time + Kidney.time_step;
    Kidney.kidney_SpO2 = VascularSystem.arterial_SpO2;
    Kidney.kidney_glucose = VascularSystem.arterial_glucose;
    new_Kidney = Kidney;
    new_VascularSystem = VascularSystem;
end

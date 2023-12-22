function [new_Lung, new_VascularSystem] = lung_calc(Lung, VascularSystem)
    Lung.time = Lung.time + Lung.time_step;
    Lung.lung_SpO2 = VascularSystem.arterial_SpO2;
    Lung.lung_glucose = VascularSystem.arterial_glucose;
    new_Lung = Lung;
    new_VascularSystem = VascularSystem;
end

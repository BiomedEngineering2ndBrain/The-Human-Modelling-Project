function [new_Liver, new_VascularSystem] = liver_calc(Liver, VascularSystem)
    Liver.time = Liver.time + Liver.time_step;
    Liver.liver_SpO2 = VascularSystem.arterial_SpO2;
    Liver.liver_glucose = VascularSystem.arterial_glucose;
    VascularSystem.venous_SpO2 = VascularSystem.venous_SpO2 + Liver.liver_SpO2*Liver.liver_flowrate;
    VascularSystem.venous_glucose = VascularSystem.venous_glucose + Liver.liver_glucose*Liver.liver_flowrate;
    new_Liver = Liver;
    new_VascularSystem = VascularSystem;
end

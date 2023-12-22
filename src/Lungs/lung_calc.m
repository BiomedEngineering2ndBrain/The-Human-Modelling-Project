function [new_Lung, new_Left_Lung, new_Right_Lung, new_VascularSystem] = lung_calc(Left_Lung, Right_Lung, VascularSystem)
    Left_Lung.time = Left_Lung.time + Left_Lung.time_step;
    Right_Lung.time = Right_Lung.time + Right_Lung.time_step;
    Left_Lung.lung_SpO2 = VascularSystem.venous_SpO2/2;
    Right_Lung.lung_SpO2 = VascularSystem.venous_SpO2/2;
    Left_Lung.lung_glucose = VascularSystem.venous_glucose/2;
    Right_Lung.lung_glucose = VascularSystem.venous_glucose/2;
    Lung = Lung_init(Left_Lung, Right_Lung);
    VascularSystem.arterial_SpO2 = Lung.lung_SpO2;
    VascularSystem.arterial_glucose = Lung.lung_glucose;
    new_Lung = Lung;
    new_Left_Lung = Left_Lung;
    new_Right_Lung = Right_Lung;
    new_VascularSystem = VascularSystem;
end

function Overall_Lung = Lung_init(Left_Lung, Right_Lung)
    time = Left_Lung.time;
    time_step = Left_Lung.time_step;
    lung_SpO2 = Left_Lung.lung_SpO2 + Right_Lung.lung_SpO2;
    lung_glucose = Left_Lung.lung_glucose + Right_Lung.lung_glucose;
    lung_flowrate = (Left_Lung.lung_flowrate + Right_Lung.lung_flowrate)/2;
    Overall_Lung = Lung(time, time_step, lung_SpO2, lung_glucose, lung_flowrate);
end

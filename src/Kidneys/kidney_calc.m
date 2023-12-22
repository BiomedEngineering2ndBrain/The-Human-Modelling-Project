function [new_Kidney, new_Left_Kidney, new_Right_Kidney, new_VascularSystem] = kidney_calc(Left_Kidney, Right_Kidney, VascularSystem)
    Left_Kidney.time = Left_Kidney.time + Left_Kidney.time_step;
    Right_Kidney.time = Right_Kidney.time + Right_Kidney.time_step;
    Left_Kidney.kidney_SpO2 = VascularSystem.arterial_SpO2/2;
    Right_Kidney.kidney_SpO2 = VascularSystem.arterial_SpO2/2;
    Left_Kidney.kidney_glucose = VascularSystem.arterial_glucose/2;
    Right_Kidney.kidney_glucose = VascularSystem.arterial_glucose/2;
    Kidney = Kidney_init(Left_Kidney, Right_Kidney);
    VascularSystem.venous_SpO2 = VascularSystem.venous_SpO2 + Kidney.kidney_SpO2*Kidney.kidney_flowrate;
    VascularSystem.venous_glucose = VascularSystem.venous_glucose + Kidney.kidney_glucose*Kidney.kidney_flowrate;
    new_Kidney = Kidney;
    new_Left_Kidney = Left_Kidney;
    new_Right_Kidney = Right_Kidney;
    new_VascularSystem = VascularSystem;
end
function Overall_Kidney = Kidney_init(Left_Kidney, Right_Kidney)
    time = Left_Kidney.time;
    time_step = Left_Kidney.time_step;
    kidney_SpO2 = Left_Kidney.kidney_SpO2 + Right_Kidney.kidney_SpO2;
    kidney_glucose = Left_Kidney.kidney_glucose + Right_Kidney.kidney_glucose;
    kidney_flowrate = (Left_Kidney.kidney_flowrate + Right_Kidney.kidney_flowrate)/2;
    Overall_Kidney = Kidney(time, time_step, kidney_SpO2, kidney_glucose, kidney_flowrate);
end

function [new_Muscle, new_VascularSystem] = muscle_calc(Muscle, VascularSystem)
    Muscle.time = Muscle.time + Muscle.time_step;
    Muscle.muscle_SpO2 = VascularSystem.arterial_SpO2;
    Muscle.muscle_glucose = VascularSystem.arterial_glucose;
    VascularSystem.venous_SpO2 = VascularSystem.venous_SpO2 + Muscle.muscle_SpO2*Muscle.muscle_flowrate;
    VascularSystem.venous_glucose = VascularSystem.venous_glucose + Muscle.muscle_glucose*Muscle.muscle_flowrate;
    new_Muscle = Muscle;
    new_VascularSystem = VascularSystem;
end

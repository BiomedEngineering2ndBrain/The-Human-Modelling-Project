function [new_Muscle, new_VascularSystem] = muscle_calc(Muscle, VascularSystem)
    Muscle.time = Muscle.time + Muscle.time_step;
    Muscle.gut_SpO2 = VascularSystem.arterial_SpO2;
    Muscle.gut_glucose = VascularSystem.arterial_glucose;
    new_Muscle = Muscle;
    new_VascularSystem = VascularSystem;
end

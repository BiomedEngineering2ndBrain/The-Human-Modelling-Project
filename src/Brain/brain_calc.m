function [new_Brain, new_VascularSystem] = brain_calc(Brain, VascularSystem)
    Brain.time = Brain.time + Brain.time_step;
    Brain.brain_SpO2 = VascularSystem.arterial_SpO2;
    Brain.brain_glucose = VascularSystem.arterial_glucose;
    new_Brain = Brain;
    new_VascularSystem = VascularSystem;
end

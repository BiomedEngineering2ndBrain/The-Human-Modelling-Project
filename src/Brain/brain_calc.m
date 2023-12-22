function [new_Brain, new_VascularSystem] = brain_calc(Brain, VascularSystem)
    Brain.time = Brain.time + Brain.time_step;
    Brain.brain_SpO2 = VascularSystem.arterial_SpO2;
    Brain.brain_glucose = VascularSystem.arterial_glucose;
    VascularSystem.venous_SpO2 = VascularSystem.venous_SpO2 + Brain.brain_SpO2*Brain.brain_flowrate;
    VascularSystem.venous_glucose = VascularSystem.venous_glucose + Brain.brain_glucose*Brain.brain_flowrate;
    new_Brain = Brain;
    new_VascularSystem = VascularSystem;
end

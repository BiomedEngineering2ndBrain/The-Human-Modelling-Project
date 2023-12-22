classdef Brain
    properties
        time
        time_step
        brain_SpO2
        brain_glucose
        brain_flowrate
    end
    methods 
        % Brain object constructor
        function obj = Brain(time, time_step, brain_SpO2, brain_glucose, brain_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.brain_SpO2 = brain_SpO2;
            obj.brain_glucose = brain_glucose;
            obj.brain_flowrate = brain_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function brain_SpO2 = get.brain_SpO2(obj)
            brain_SpO2 = obj.brain_SpO2;
        end
        function brain_glucose = get.brain_glucose(obj)
            brain_glucose = obj.brain_glucose;
        end
        function brain_flowrate = get.brain_flowrate(obj)
            brain_flowrate = obj.brain_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.brain_SpO2(obj, brain_SpO2)
            obj.brain_SpO2 = brain_SpO2;
        end
        function obj = set.brain_glucose(obj, brain_glucose)
            obj.brain_glucose = brain_glucose;
        end
        function obj = set.brain_flowrate(obj, brain_flowrate)
            obj.brain_flowrate = brain_flowrate;
        end
    end
end

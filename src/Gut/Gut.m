classdef Gut
    properties
        time
        time_step
        gut_SpO2
        gut_glucose
        gut_flowrate
    end
    methods 
        % Gut object constructor
        function obj = Gut(time, time_step, gut_SpO2, gut_glucose, gut_flowrate)
            obj.time = time;
            obj.time_step = time_step;
            obj.gut_SpO2 = gut_SpO2;
            obj.gut_glucose = gut_glucose;
            obj.gut_flowrate = gut_flowrate;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function gut_SpO2 = get.gut_SpO2(obj)
            gut_SpO2 = obj.gut_SpO2;
        end
        function gut_glucose = get.gut_glucose(obj)
            gut_glucose = obj.gut_glucose;
        end
        function gut_flowrate = get.gut_flowrate(obj)
            gut_flowrate = obj.gut_flowrate;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.gut_SpO2(obj, gut_SpO2)
            obj.gut_SpO2 = gut_SpO2;
        end
        function obj = set.gut_glucose(obj, gut_glucose)
            obj.gut_glucose = gut_glucose;
        end
        function obj = set.gut_flowrate(obj, gut_flowrate)
            obj.gut_flowrate = gut_flowrate;
        end
    end
end

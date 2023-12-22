classdef VascularSystem
    properties
        time
        time_step
        arterial_SpO2
        arterial_glucose
        arterial_insulin
        venous_SpO2
        venous_glucose
        venous_insulin
    end
    methods 
        % VascularSystem object constructor
        function obj = VascularSystem(time, time_step, arterial_SpO2, arterial_glucose, arterial_insulin, venous_SpO2, venous_glucose, venous_insulin)
            obj.time = time;
            obj.time_step = time_step;
            obj.arterial_SpO2 = arterial_SpO2;
            obj.arterial_glucose = arterial_glucose;
            obj.arterial_insulin = arterial_insulin;
            obj.venous_SpO2 = venous_SpO2;
            obj.venous_glucose = venous_glucose;
            obj.venous_insulin = venous_insulin;
        end     
        % getters
        function time = get.time(obj)
            time = obj.time;
        end
        function time_step = get.time_step(obj)
            time_step = obj.time_step;
        end
        function arterial_SpO2 = get.arterial_SpO2(obj)
            arterial_SpO2 = obj.arterial_SpO2;
        end
        function arterial_glucose = get.arterial_glucose(obj)
            arterial_glucose = obj.arterial_glucose;
        end
        function arterial_insulin = get.arterial_insulin(obj)
            arterial_insulin = obj.arterial_insulin;
        end
        function venous_SpO2 = get.venous_SpO2(obj)
            venous_SpO2 = obj.venous_SpO2;
        end
        function venous_glucose = get.venous_glucose(obj)
            venous_glucose = obj.venous_glucose;
        end
        function venous_insulin = get.venous_insulin(obj)
            venous_insulin = obj.venous_insulin;
        end
        % setters
        function obj = set.time(obj, time)
            obj.time = time;
        end
        function obj = set.time_step(obj, time_step)
            obj.time_step = time_step;
        end
        function obj = set.arterial_SpO2(obj, arterial_SpO2)
            obj.arterial_SpO2 = arterial_SpO2;
        end
        function obj = set.arterial_glucose(obj, arterial_glucose)
            obj.arterial_glucose = arterial_glucose;
        end
        function obj = set.arterial_insulin(obj, arterial_insulin)
            obj.arterial_insulin = arterial_insulin;
        end
        function obj = set.venous_SpO2(obj, venous_SpO2)
            obj.venous_SpO2 = venous_SpO2;
        end
        function obj = set.venous_glucose(obj, venous_glucose)
            obj.venous_glucose = venous_glucose;
        end
        function obj = set.venous_insulin(obj, venous_insulin)
            obj.venous_insulin = venous_insulin;
        end
    end
end

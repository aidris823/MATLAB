 function WaveE(unit,ew,n)

% Gregory Savich
% Optics 211 Lab 4, Part 1
% 2/22/2016
%
%
% This function converts between energy and wavelength in a material with a
% given index of refraction, n.  
% 
% When converting from energy to wavelength, the output will be the 
% wavelength in a material with a specified index of refraction, n.
%
% When converting from wavelength to energy, the input wavelength must 
% correspond to the wavelength in the specified material with index of
% refraction, n. The program will not convert free-space wavelength to
% wavelength in the material for you.  The assumed input is the wavelength
% in the material in interest.
%
% The function is called from the command window as follows:
%
%      WaveE(unit,ew,n)
%
%   where "unit" is chosen from the set of units listed above (and input
%   as a string), "ew" is the magnitude of the input wavelength/energy in 
%   the chosen unit, and n is the index of refraction in the 
%   medium of interest.
%   
%   NOTE: Index of refraction in air or vacuum is 1.0
%   NOTE: The value for unit must be input as a string
%
%
% The following energy units may be entered (as a string and exactly
% as shown here):
%     'J'    (Joules)
%     'eV'   (electronvolts)
%     'meV'  (milli-electronvolts)
% 
% The following wavelength units may be entered (as a string and exactly
% as shown here):
%     'km    (kilometers (10^3 meters))
%     'm'    (meters)
%     'cm'   (centimeters (10^-2 meters))
%     'mm'   (millimeters (10^-3 meters))
%     'um'   (microns (10^-6 meters))
%     'nm'   (nanometers (10^-9 meters))
%     'A'    (Angstroms (10^-10 meters))
%
%   
% The function will output a pre-determined set of energy or wavelength
% units
% 
% If an invalid unit is entered, the function will display:
%
%   "ERROR: Invalid Unit
%       Please input one of the following units:
%         Wavelength: 'km' 'm' 'cm' 'mm' 'um' 'mm' 'A'
%         Energy: 'J' 'eV' 'meV'
%
%       See the help file for more information"
%
%
% Only units included in the lists above may be utilized when executing
% this funtion.
%
%
% Help file written by: Gregory R. Savich, PhD, 2016.
%
% Portions of this script were adapted from Optics 211, Lab 1, 
% parts 4 and 5, written on 12/28/2015.


% Define Constants
c = 3e8; % Speed of light in vacuum in m/s
h_eV =4.136e-15; % Planck's constant, h, in eV*s
h_J = 6.626e-34; % Planck's constant, h, in J*s
% Convert Units
%   -- This section selects the correct unit conversion for whatever the
%      input unit string happens to be --
%
% Conversion of Wavelength to Energy
is_lambda = true; % true == Input is considered a wavelength, will change to 'false' if it's a wavelength
invalid = 0;
if strcmp(unit,'km')
    ew = ew * 10^3;
elseif strcmp(unit,'m')
elseif strcmp(unit,'mm')
    ew = ew*10^-3;
elseif strcmp(unit,'um')
    ew = ew*10^-6;
elseif strcmp(unit,'A')
    ew = ew*10^-10;
elseif strcmp(unit,'nm')
    ew = ew*10^-9;
% Conversion of Energy to Wavelength
elseif strcmp(unit,'J')
    ew = ew*6.242*10^18;
    is_lambda = false;
elseif strcmp(unit,'eV')
    is_lambda = false;
elseif strcmp(unit,'meV')
    ew = ew*10^6;
    is_lambda = false;
    

% The next statement in the conditional series describes what to do if an
% incorrect/unrecognized unit is provided as an input
else
    invalid = 1;
    disp('ERROR: Invalid unit');
    disp('Please input one of the following units:');
    disp("Wavelength: 'km' 'm' 'cm' 'mm' 'um' 'mm' 'A'");
    disp(" Energy: 'J' 'eV' 'meV'");
    disp("See help info for more info");
end


% Calculate Energy/Wavelengths and prepare to display answer
%   -- This section actually converts the energy to wavelength or
%      vice versa according to the results of the if/else statements
%      above

E = 0;
% For the case where the input is a wavelength to be converted to energy:
if is_lambda

    % The next three lines calculate the energy from the wavelength in
    % three different units
    E_eV = (h_eV*c) / (n * ew); %electronVolts
    E_meV = E_eV * 10^6; %megaelectronVolts
    E_J = E_eV * 1.60218e-19;
    
    % The next 4 lines will define the output strings for the answer, but
    % will not display them
    header = "The energy corresponding to a free-space wavelength of" + num2str((ew*10^6)) + "um is:";
    output_1 = num2str(E_eV) + " eV";
    output_2 = num2str(E_meV)+ " meV";
    output_3 = num2str(E_J) + " J";
  %  PREPARE STRINGS
         
% % For the case where the input is a wavelength to be converted to energy:
else
%     % The next three lines convert the energt to wavelength in three
%     % different units
    lam_m = (h_eV*c)/(n*ew);
    lam_nm = lam_m * 10^9;
    lam_um = lam_m * 10^6;
%     
%     % The next 4 lines will define the output strings for the answer, but
%     % will not display them
    header = "The wavelength in a material with refractive index n = " + num2str(n) + "corresponding to an energy of 295meV is:";
    output_1 = num2str(lam_m) + " m";
    output_2 = num2str(lam_nm) + " nm";
    output_3 = num2str(lam_um) + " um";
   
    
%     %PREPARE STRINGS
%     
%     
end

if invalid == 0
    disp(header);
    disp(output_1);
    disp(output_2);
    disp(output_3);
else
end

% End of Script

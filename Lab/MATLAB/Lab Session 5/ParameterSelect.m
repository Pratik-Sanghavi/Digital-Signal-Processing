function varargout = ParameterSelect(varargin)
% PARAMETERSELECT MATLAB code for ParameterSelect.fig
%      PARAMETERSELECT, by itself, creates a new PARAMETERSELECT or raises the existing
%      singleton*.
%
%      H = PARAMETERSELECT returns the handle to a new PARAMETERSELECT or the handle to
%      the existing singleton*.
%
%      PARAMETERSELECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARAMETERSELECT.M with the given input arguments.
%
%      PARAMETERSELECT('Property','Value',...) creates a new PARAMETERSELECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ParameterSelect_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ParameterSelect_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ParameterSelect

% Last Modified by GUIDE v2.5 08-Oct-2019 20:04:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ParameterSelect_OpeningFcn, ...
                   'gui_OutputFcn',  @ParameterSelect_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ParameterSelect is made visible.
function ParameterSelect_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ParameterSelect (see VARARGIN)

% Choose default command line output for ParameterSelect
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ParameterSelect wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ParameterSelect_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function Fs_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Fs_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Fs = get(handles.Fs_edit, 'String');
Fs = str2num(Fs);
handles.Fs = Fs;
t = 0:(1/Fs):(1-(1/Fs));
handles.t = t;

guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of Fs_edit as text
%        str2double(get(hObject,'String')) returns contents of Fs_edit as a double


% --- Executes during object creation, after setting all properties.
function Fs_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fs_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in sine_pushbutton.
function sine_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to sine_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sinewave = sin(2*pi*(handles.f).*(handles.t));
handles.sinewave = sinewave;
axes(handles.waveplot1);
plot(handles.t, sinewave, 'b-', 'LineWidth', 2);
title('Sine Wave'); ylabel('amplitude'); grid on;

% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in damped_pushbutton.
function damped_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to damped_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

dampedwave = exp(-(handles.t)).*(handles.sinewave);
axes(handles.waveplot2);
plot(handles.t, dampedwave, 'r-', 'LineWidth', 2);
title('Damped Signal'); ylabel('amplitude'); grid on;

% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in noisy_pushbutton.
function noisy_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to noisy_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

NoisyWave = rand(1,length(handles.t))+handles.sinewave;
axes(handles.waveplot3);
plot(handles.t, NoisyWave, 'k-', 'LineWidth', 2);
title('Noisy Signal'); xlabel('time in seconds'); ylabel('amplitude'); grid on;

% Update handles structure
guidata(hObject, handles);

function f_edit_Callback(hObject, eventdata, handles)
% hObject    handle to f_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f = get(handles.f_edit, 'String');
f = str2num(f);
handles.f = f;

% Update handles structure
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of f_edit as text
%        str2double(get(hObject,'String')) returns contents of f_edit as a double


% --- Executes during object creation, after setting all properties.
function f_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

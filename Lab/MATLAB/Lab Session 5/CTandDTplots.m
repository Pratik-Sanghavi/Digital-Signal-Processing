function varargout = CTandDTplots(varargin)
% CTANDDTPLOTS MATLAB code for CTandDTplots.fig
%      CTANDDTPLOTS, by itself, creates a new CTANDDTPLOTS or raises the existing
%      singleton*.
%
%      H = CTANDDTPLOTS returns the handle to a new CTANDDTPLOTS or the handle to
%      the existing singleton*.
%
%      CTANDDTPLOTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CTANDDTPLOTS.M with the given input arguments.
%
%      CTANDDTPLOTS('Property','Value',...) creates a new CTANDDTPLOTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CTandDTplots_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CTandDTplots_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CTandDTplots

% Last Modified by GUIDE v2.5 08-Oct-2019 20:03:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CTandDTplots_OpeningFcn, ...
                   'gui_OutputFcn',  @CTandDTplots_OutputFcn, ...
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


% --- Executes just before CTandDTplots is made visible.
function CTandDTplots_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CTandDTplots (see VARARGIN)

t = 0:0.01:(1-0.01);
f = 3;
handles.t = t;
handles.f = f;

% Choose default command line output for CTandDTplots
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CTandDTplots wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CTandDTplots_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in WaveType_popUpMenu.
function WaveType_popUpMenu_Callback(hObject, eventdata, handles)
% hObject    handle to WaveType_popUpMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

str = get(hObject, 'String');
val = get(hObject, 'Value');

switch str{val}
    case 'Sine'
        wave = sin(2*pi*(handles.f).*(handles.t));
        handles.wave = wave;
    case 'Cosine'
        wave = cos(2*pi*(handles.f).*(handles.t));
        handles.wave = wave;
end

guidata(hObject, handles);

% Hints: contents = cellstr(get(hObject,'String')) returns WaveType_popUpMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from WaveType_popUpMenu


% --- Executes during object creation, after setting all properties.
function WaveType_popUpMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WaveType_popUpMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Continuous_pushbutton.
function Continuous_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Continuous_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plot(handles.t, handles.wave, 'b-', 'LineWidth', 2);
title('Continuous Plot'); xlabel('time in seconds'); ylabel('amplitude'); grid on;

guidata(hObject, handles);

% --- Executes on button press in Discrete_pushbutton.
function Discrete_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Discrete_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
stem(handles.t, handles.wave, 'r:o', 'LineWidth', 2);
title('Discrete Plot'); xlabel('time in seconds'); ylabel('amplitude'); grid on;

guidata(hObject, handles);

% --- Executes on button press in CT_DT_pushbutton.
function CT_DT_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to CT_DT_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plot(handles.t, handles.wave, 'b-', 'LineWidth', 2);
hold on;
stem(handles.t', handles.wave, 'r:o', 'LineWidth', 2);
hold off;
title('Continuous and Discrete Plots'); xlabel('time in seconds'); ylabel('amplitude'); grid on;

guidata(hObject, handles);

function varargout = Lab_5_prac(varargin)
% LAB_5_PRAC MATLAB code for Lab_5_prac.fig
%      LAB_5_PRAC, by itself, creates a new LAB_5_PRAC or raises the existing
%      singleton*.
%
%      H = LAB_5_PRAC returns the handle to a new LAB_5_PRAC or the handle to
%      the existing singleton*.
%
%      LAB_5_PRAC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAB_5_PRAC.M with the given input arguments.
%
%      LAB_5_PRAC('Property','Value',...) creates a new LAB_5_PRAC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Lab_5_prac_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Lab_5_prac_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Lab_5_prac

% Last Modified by GUIDE v2.5 11-Oct-2019 00:52:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Lab_5_prac_OpeningFcn, ...
                   'gui_OutputFcn',  @Lab_5_prac_OutputFcn, ...
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


% --- Executes just before Lab_5_prac is made visible.
function Lab_5_prac_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Lab_5_prac (see VARARGIN)

% Choose default command line output for Lab_5_prac
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Lab_5_prac wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Lab_5_prac_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Numerator_Callback(hObject, eventdata, handles)
% hObject    handle to Numerator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Numerator as text
%        str2double(get(hObject,'String')) returns contents of Numerator as a double


% --- Executes during object creation, after setting all properties.
function Numerator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Numerator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Denominator_Callback(hObject, eventdata, handles)
% hObject    handle to Denominator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Denominator as text
%        str2double(get(hObject,'String')) returns contents of Denominator as a double


% --- Executes during object creation, after setting all properties.
function Denominator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Denominator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in MR.
function MR_Callback(hObject, eventdata, handles)
% hObject    handle to MR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MR
N_string=get(handles.Numerator,'string');
D_string=get(handles.Denominator,'string');
p=1;
k=1;
for i=1:length(N_string)
    if N_string(i)==',' 
        Num(k)=str2double(N_string(p:i-1));
        k=k+1;
        p=i+1;
    end
end
p=1;
k=1;
for i=1:length(D_string)
    if D_string(i)==','
        Den(k)=str2double(D_string(p:i-1));
        k=k+1;
        p=i+1;
    end
end
[h,w]=freqz(Num,Den);
h=abs(h);
plot(w/pi,h);
% xlabel('Frequency(Hz)');
% ylabel('|x(n)|');
% title('Magnitude Response');

% --- Executes on button press in PZ.
function PZ_Callback(hObject, eventdata, handles)
% hObject    handle to PZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PZ
N_string=get(handles.Numerator,'string');
D_string=get(handles.Denominator,'string');
p=1;
k=1;
for i=1:length(N_string)
    if N_string(i)==',' 
        Num(k)=str2double(N_string(p:i-1));
        k=k+1;
        p=i+1;
    end
end
p=1;
k=1;
for i=1:length(D_string)
    if D_string(i)==','
        Den(k)=str2double(D_string(p:i-1));
        k=k+1;
        p=i+1;
    end
end
[h,w]=zplane(Num,Den);
plot(w/pi,h);
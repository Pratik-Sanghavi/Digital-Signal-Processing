function varargout = L5_2017AAPS0394G(varargin)
% L5_2017AAPS0394G MATLAB code for L5_2017AAPS0394G.fig
%      L5_2017AAPS0394G, by itself, creates a new L5_2017AAPS0394G or raises the existing
%      singleton*.
%
%      H = L5_2017AAPS0394G returns the handle to a new L5_2017AAPS0394G or the handle to
%      the existing singleton*.
%
%      L5_2017AAPS0394G('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in L5_2017AAPS0394G.M with the given input arguments.
%
%      L5_2017AAPS0394G('Property','Value',...) creates a new L5_2017AAPS0394G or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before L5_2017AAPS0394G_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to L5_2017AAPS0394G_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help L5_2017AAPS0394G

% Last Modified by GUIDE v2.5 10-Oct-2019 17:47:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @L5_2017AAPS0394G_OpeningFcn, ...
                   'gui_OutputFcn',  @L5_2017AAPS0394G_OutputFcn, ...
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


% --- Executes just before L5_2017AAPS0394G is made visible.
function L5_2017AAPS0394G_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to L5_2017AAPS0394G (see VARARGIN)

% Choose default command line output for L5_2017AAPS0394G
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes L5_2017AAPS0394G wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = L5_2017AAPS0394G_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Numerator1_Callback(hObject, eventdata, handles)
% hObject    handle to Numerator1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Numerator1 as text
%        str2double(get(hObject,'String')) returns contents of Numerator1 as a double

% --- Executes during object creation, after setting all properties.
function Numerator1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Numerator1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Denominator1_Callback(hObject, eventdata, handles)
% hObject    handle to Denominator1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Denominator1 as text
%        str2double(get(hObject,'String')) returns contents of Denominator1 as a double

% --- Executes during object creation, after setting all properties.
function Denominator1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Denominator1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Numerator2_Callback(hObject, eventdata, handles)
% hObject    handle to Numerator2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Numerator2 as text
%        str2double(get(hObject,'String')) returns contents of Numerator2 as a double

% --- Executes during object creation, after setting all properties.
function Numerator2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Numerator2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Numerator3_Callback(hObject, eventdata, handles)
% hObject    handle to Numerator3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Numerator3 as text
%        str2double(get(hObject,'String')) returns contents of Numerator3 as a double

% --- Executes during object creation, after setting all properties.
function Numerator3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Numerator3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Denominator2_Callback(hObject, eventdata, handles)
% hObject    handle to Denominator2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Denominator2 as text
%        str2double(get(hObject,'String')) returns contents of Denominator2 as a double

% --- Executes during object creation, after setting all properties.
function Denominator2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Denominator2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Denominator3_Callback(hObject, eventdata, handles)
% hObject    handle to Denominator3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Denominator3 as text
%        str2double(get(hObject,'String')) returns contents of Denominator3 as a double

% --- Executes during object creation, after setting all properties.
function Denominator3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Denominator3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in Mag_Resp.
function Mag_Resp_Callback(hObject, eventdata, handles)
% hObject    handle to Mag_Resp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Mag_Resp
n_1=str2num(get(handles.Numerator1,'string'));
n_2=str2num(get(handles.Numerator2,'string'));
n_3=str2num(get(handles.Numerator3,'string'));
d_1=str2num(get(handles.Denominator1,'string'));
d_2=str2num(get(handles.Denominator2,'string'));
d_3=str2num(get(handles.Denominator3,'string'));

N=[n_3 n_2 n_1];
D=[d_3 d_2 d_1];
[h,w]=freqz(N,D);
h=abs(h);
plot(w/pi,h);
xlabel('Frequency(Hz)');
ylabel('|x(n)|');
title('Magnitude Response');

% --- Executes on button press in PZ.
function PZ_Callback(hObject, eventdata, handles)
% hObject    handle to PZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PZ
n_1=str2num(get(handles.Numerator1,'string'));
n_2=str2num(get(handles.Numerator2,'string'));
n_3=str2num(get(handles.Numerator3,'string'));
d_1=str2num(get(handles.Denominator1,'string'));
d_2=str2num(get(handles.Denominator2,'string'));
d_3=str2num(get(handles.Denominator3,'string'));

N=[n_3 n_2 n_1];
D=[d_3 d_2 d_1];
[h,w]=zplane(N,D);
plot(w/pi,h);
title('Pole-Zero Plot');
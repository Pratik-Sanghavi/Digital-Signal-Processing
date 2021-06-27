function varargout = Labcompre_2017AAPS0394G(varargin)
% LABCOMPRE_2017AAPS0394G MATLAB code for Labcompre_2017AAPS0394G.fig
%      LABCOMPRE_2017AAPS0394G, by itself, creates a new LABCOMPRE_2017AAPS0394G or raises the existing
%      singleton*.
%
%      H = LABCOMPRE_2017AAPS0394G returns the handle to a new LABCOMPRE_2017AAPS0394G or the handle to
%      the existing singleton*.
%
%      LABCOMPRE_2017AAPS0394G('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LABCOMPRE_2017AAPS0394G.M with the given input arguments.
%
%      LABCOMPRE_2017AAPS0394G('Property','Value',...) creates a new LABCOMPRE_2017AAPS0394G or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Labcompre_2017AAPS0394G_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Labcompre_2017AAPS0394G_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Labcompre_2017AAPS0394G

% Last Modified by GUIDE v2.5 10-Nov-2019 14:58:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Labcompre_2017AAPS0394G_OpeningFcn, ...
                   'gui_OutputFcn',  @Labcompre_2017AAPS0394G_OutputFcn, ...
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


% --- Executes just before Labcompre_2017AAPS0394G is made visible.
function Labcompre_2017AAPS0394G_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Labcompre_2017AAPS0394G (see VARARGIN)

% Choose default command line output for Labcompre_2017AAPS0394G
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Labcompre_2017AAPS0394G wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Labcompre_2017AAPS0394G_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function f2_Callback(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f2 as text
%        str2double(get(hObject,'String')) returns contents of f2 as a double


% --- Executes during object creation, after setting all properties.
function f2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f3_Callback(hObject, eventdata, handles)
% hObject    handle to f3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f3 as text
%        str2double(get(hObject,'String')) returns contents of f3 as a double


% --- Executes during object creation, after setting all properties.
function f3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f1 as text
%        str2double(get(hObject,'String')) returns contents of f1 as a double


% --- Executes during object creation, after setting all properties.
function f1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in inp.
function inp_Callback(hObject, eventdata, handles)
% hObject    handle to inp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of inp
Fs=1e4;
f1=get(handles.f1,'string');
f2=get(handles.f2,'string');
f3=get(handles.f3,'string');
f1=str2double(f1);
f2=str2double(f2);
f3=str2double(f3);
t=0:1/Fs:0.01;
xn=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);
N=length(xn);
% frequency specification
f=(0:1:(floor(N/2)-1)).*Fs/N;
%FFT of signal
Xk=fft(xn,N);
Xkssb=Xk(1:N/2);
Xkssb=Xkssb./(N/2);
%Magnitude specification
Xkssbm=abs(Xkssb);

plot(t,xn);
title('Input(noisy)Signal Time Domain Plot');
xlabel('Time(s)');
ylabel('Amplitude');
axis([0,0.01,-3,3]);
figure;
plot(f,Xkssbm);
title('Input(noisy)Signal Amplitude Spectrum');
xlabel('Frequency(Hz)');
ylabel('|X(f)|');

% --- Executes on button press in op1.
function op1_Callback(hObject, eventdata, handles)
% hObject    handle to op1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of op1
Fs=1e4;
f1=get(handles.f1,'string');
f2=get(handles.f2,'string');
f3=get(handles.f3,'string');
f1=str2double(f1);
f2=str2double(f2);
f3=str2double(f3);
t=0:1/Fs:0.01;
xn=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);
Wn=2*1500/10000;
w=blackman(23);
hbm = fir1(22,Wn,'low',w);
yn=filter(hbm,1,xn);
N=length(yn);
% frequency specification
f=(0:1:(floor(N/2)-1)).*Fs/N;
%FFT of signal
Yk=fft(yn,N);
Ykssb=Yk(1:N/2);
Ykssb=Ykssb./(N/2);
%Magnitude specification
Ykssbm=abs(Ykssb);
plot(t,yn);
title('Output(filtered)Signal Time Domain Plot');
xlabel('Time(s)');
ylabel('Amplitude');
axis([0,0.01,-3,3]);
figure;
plot(f,Ykssbm);
title('Output(filtered)Signal Amplitude Spectrum');
xlabel('Frequency(Hz)');
ylabel('|Y(f)|');

% --- Executes on button press in fr.
function fr_Callback(hObject, eventdata, handles)
% hObject    handle to fr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fr
Wn=2*1500/10000;
w=blackman(23);
hbm = fir1(22,Wn,'low',w);
[h,w]=freqz(hbm,1);
h=abs(h);

plot(w/pi,h);
xlabel('Frequency(Hz)');
ylabel('|x(n)|');
title('Magnitude Response');
figure;
[h,w]=zplane(hbm,1);
plot(w/pi,h);
title('Pole-Zero Plot');

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over inp.
function inp_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to inp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

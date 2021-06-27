function varargout = Assn_2017AAPS0394G(varargin)
% ASSN_2017AAPS0394G MATLAB code for Assn_2017AAPS0394G.fig
%      ASSN_2017AAPS0394G, by itself, creates a new ASSN_2017AAPS0394G or raises the existing
%      singleton*.
%
%      H = ASSN_2017AAPS0394G returns the handle to a new ASSN_2017AAPS0394G or the handle to
%      the existing singleton*.
%
%      ASSN_2017AAPS0394G('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASSN_2017AAPS0394G.M with the given input arguments.
%
%      ASSN_2017AAPS0394G('Property','Value',...) creates a new ASSN_2017AAPS0394G or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Assn_2017AAPS0394G_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Assn_2017AAPS0394G_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Assn_2017AAPS0394G

% Last Modified by GUIDE v2.5 26-Nov-2019 09:28:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Assn_2017AAPS0394G_OpeningFcn, ...
                   'gui_OutputFcn',  @Assn_2017AAPS0394G_OutputFcn, ...
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


% --- Executes just before Assn_2017AAPS0394G is made visible.
function Assn_2017AAPS0394G_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Assn_2017AAPS0394G (see VARARGIN)

% Choose default command line output for Assn_2017AAPS0394G
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Assn_2017AAPS0394G wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Assn_2017AAPS0394G_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function num_coef_Callback(hObject, eventdata, handles)
% hObject    handle to num_coef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_coef as text
%        str2double(get(hObject,'String')) returns contents of num_coef as a double
num= get(handles.num_coef, 'String');
num = str2num(num);
handles.num = num;

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function num_coef_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_coef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function den_coef_Callback(hObject, eventdata, handles)
% hObject    handle to den_coef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of den_coef as text
%        str2double(get(hObject,'String')) returns contents of den_coef as a double
den = get(handles.den_coef, 'String');
den = str2num(den);
handles.den = den;

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function den_coef_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den_coef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fsamp_Callback(hObject, eventdata, handles)
% hObject    handle to Fsamp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fsamp as text
%        str2double(get(hObject,'String')) returns contents of Fsamp as a double
Fs = get(handles.Fsamp, 'String');
Fs = str2num(Fs);
handles.Fs = Fs;

guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Fsamp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fsamp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function fselect_Callback(hObject, eventdata, handles)
% hObject    handle to fselect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
slider = get(handles.fselect, 'Value');

handles.slider = slider;

guidata(hObject, handles);

% --- Executes on bu tton press in enter.
function enter_Callback(hObject, eventdata, handles)
% hObject    handle to enter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text9,'String',num2str(handles.Fs/2));
handles.dbplot = 0;
handles.slider_val=0;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function fselect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fselect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in ioview.
function ioview_Callback(hObject, eventdata, handles)
% hObject    handle to ioview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ioview
Fs=handles.Fs;
time = 0:1/Fs:(1-1/Fs);
f=(handles.slider).*(handles.Fs)/2;
xsig = sin(2*pi*f.*time);
handles.xsig=xsig;
N= Fs;
Xk = fft(xsig,N);
Xkssb=Xk(1:N/2)/(N/2);
handles.Xkssb = Xkssb;

df=Fs/N;
sampleIndex = 0:N/2-1; %raw index for FFT
f=sampleIndex*df;
handles.f = f;
handles.Xkssb = Xkssb;
num1=handles.num;
den1=handles.den;
y = filter(den1,num1,handles.xsig);
Yk = fft(y,N);
Ykssb= Yk(1:N/2)/(N/2);
handles.Ykssb=Ykssb;

axes(handles.axes1);
stem(handles.f,abs(handles.Xkssb)./max(abs(handles.Xkssb))); %x-axis represent frequencies
title('Frequency spectrum of input');
xlabel('Frequencies');
ylabel('Magnitude')

axes(handles.axes2);
stem(handles.f,abs(handles.Ykssb)./max(abs(handles.Ykssb)));
axis([0 Fs/2 0 1]);
title('Frequency spectrum of output');
xlabel('Frequencies');
ylabel('Magnitude');

guidata(hObject, handles);

% --- Executes on button press in dbplot.
function dbplot_Callback(hObject, eventdata, handles)
% hObject    handle to dbplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dbplot
dB = get(hObject,'Value');

handles.dbplot = dB;
guidata(hObject, handles);

% --- Executes on button press in fr.
function fr_Callback(hObject, eventdata, handles)
% hObject    handle to fr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of fr
[h1,w1]=freqz(handles.num,handles.den);
[h2,w2]=phasez(handles.num,handles.den);


if handles.dbplot == 0
axes(handles.axes1);
 plot(w1*handles.Fs/(2*pi),(abs(h1))/max(abs(h1)));
title('Magnitude response');
xlabel('Frequency');
ylabel('magnitude');
grid on;
elseif handles.dbplot == 1
    axes(handles.axes1);
    plot(w1*handles.Fs/(2*pi),20*log10(abs(h1)/max(abs(h1))) );
    axis([0 handles.Fs/2 -80 0]);

    title('Magnitude response in dB');
    xlabel('Frequency');
    ylabel('magnitude');
    grid on;
end

axes(handles.axes2);
plot(w2*handles.Fs/(2*pi),h2*180/pi)
title('Phase response');
xlabel('Frequency');
ylabel('angle');
grid on;

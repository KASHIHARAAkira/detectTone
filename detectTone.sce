//read wav file
sample_rate = 22050;    //sampling rate
N = 74304;              //sampling number
w = wavread("**.wav")   //read wave file
//plot(w)

//fft
f = sample_rate*(0:(N/2))/N;    //create x-axis point number
n = size(f,'*')                 //half of number of sampling
X = fft(w);                     //FFT
plot(f, abs(X(1:n)))            //Plot the result of FFT
//detect tone
[m,k] = max(abs(X(1:n)))        //Pitch tone is detected
k = k * sample_rate / N;        //Calculate pitch tone


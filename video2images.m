% @info from video to sequence of images
clc, clear all, close all,

% directories: video and images
video_dir = 'C:\Users\USERTEST\Desktop\practicar_latex\video\';
images_dir = 'C:\Users\USERTEST\Desktop\practicar_latex\images\';
video_name = 'Legged Robots.mp4';

% get video information
my_video=VideoReader(fullfile(video_dir, video_name));
numFrames = my_video.NumFrames;

% save each frame as an .jpg image
 for i = 1:numFrames/10
     frames = read(my_video,i);
     img_name= fullfile(images_dir, strcat(int2str(i),'.jpg'));
     imwrite(frames,img_name);
 end

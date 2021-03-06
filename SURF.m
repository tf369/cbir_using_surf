    figureW = 1100;
    figureH = 600;
global openAgain;
openAgain = 0;

handleFigure = figure(...
    'position',[100, 70, figureW, figureH] ,...
    'Name','MyGui-SURF',...
    'menu','none',...
    'NumberTitle','off',...
    'Interruptible','off',...
    'Resize','off'...
    );

global handleAxes;
handleAxes = axes(...
    'units','normalized',...
    'Position', [0.01, 0.62, 0.15, 0.28],...
    'Interruptible','off',...
    'ydir', 'reverse', ...
    'Box','on',...
    'XTick',[],...
    'YTick',[],...
    'Visible','off'...
    );

global chosenImg;

chosenImg = image(...
    'Interruptible','off',...
    'Parent', handleAxes,...
    'Visible','off'...
);


buttonOpen = uicontrol( ...
   'Style','pushbutton', ...
   'Units','normalized', ...
   'Position',[0.01 0.920 0.08 0.054], ...
   'String','Open an Image.', ...
   'callback','open');

buttonRun = uicontrol( ...
   'Style','pushbutton', ...
   'Units','normalized', ...
   'Position',[0.01 0.560 0.04 0.054], ...
   'String','Run', ...
   'callback','Run_SURF',...
   'Visible','off');

buttonNext = uicontrol( ...
   'Style','pushbutton', ...
   'Units','normalized', ...
   'Position',[0.01 0.560 0.04 0.054], ...
   'String','Next', ...
   'callback','next',...
   'Visible','off');

buttonPrev = uicontrol( ...
   'Style','pushbutton', ...
   'Units','normalized', ...
   'Position',[0.01 0.500 0.04 0.054], ...
   'String','Prev', ...
   'callback','prev',...
   'Visible','off');	

global imagesAxeses;
    
imgWidth = figureW * 0.8 / 5;
imgHeight = figureH * 0.9 / 5;
    
for row = 1 : 1
    for col = 1 : 1
       index = (row - 1) * 5 + col;
        imagesAxeses(index) = axes( ...
            'Position', [ ((col - 1) * (imgWidth * 1.02) + 200) / figureW ...
               ((5 - row) * (imgHeight * 1.05)+10) / figureH ...
                imgWidth / figureW ...
                imgHeight / figureH], ...
             'Xtick', [], ...
             'Ytick', [], ...
             'ydir', 'reverse', ...
             'Visible','off'...
                );
   end
end


    
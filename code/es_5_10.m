function es_5_10(im, method, varargin)
if strcmp(method, 'neg')
    imout = 256-1-im;
elseif strcmp(method, 'gam')
    c = varargin{1};
    gam = varargin{2};
    imout = im2double(im);
    imout = c.*imout.^gam;
elseif strcmp(method, 'stretch')
    m = varargin{1};
    E = varargin{2};
    imout = im2double(im);
    imout = 1 ./ (1 + (m ./ imout).^E);
elseif strcmp(method, 'log')
    c = varargin{1};
    imout = im2double(im);
    imout = c*(log(imout+1));
elseif strcmp(method, 'thresh')
    a = varargin{1};
    imout = im>a;
end

if exist('imout', 'var')
    imshow(imout);
end
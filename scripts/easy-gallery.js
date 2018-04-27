/**
 * Easy Gallery for jQuery
 * Create your web gallery with easy layout and easy configuration.
 * @url http://
 * @version 1.0
 * CopyRight
 * 
 * Developed by: Alaa Al-Hussein
 * http://www.freelancer-id.com
 * Email alaa@freelancer-id.com
 *
 */
$.fn.egallery = function (options){
    // Default settings.
    var settings = {
    width: 400, // Width for gallery holder, li
    height: 400, // Height for each element
    speed: 600, // Animation speed in MS
    delay: 3000, // delay for auto play to transact.
    easing: 'swing', // Easing animation. require to include easing plugin http://gsgd.co.uk/sandbox/jquery/easing/
    thumbs: 'none', //  Thumbs: none, numbers, image OR custom
    thumbClass: '', // Thumb CSS class
    thumbImage: '', // Image url for thumbs.
    aClass: '', // Thumb active class
    auto: true // True to enable auto play
    };
    // Exteding options
    settings = $.extend(settings, options);
    
    // sgObj is a holder for #gallery container.. Cashing it.
    var sgObj = $(this);
    // anim used for animation.. to stop any action while animating.
    var anim = false;
    // Auto play handler.
    var ap = null;
    // Item index for autoplay
    var aind = 0;
    
    /**
     * This function applies CSS for container and inside elements.
     */
    function _css(){
        $(sgObj).css({'overflow':'hidden','width':settings.width+'px','height':settings.height+'px','position':'relative'});
        $(sgObj).find("ul").css({'list-style':'none','position':'absolute','top':0,'left':0,'width':(settings.width * $(sgObj).find("li").length)+'px','height':settings.height+'px'});
        $(sgObj).find("li").css({"float":"left",'width':settings.width+'px'});
    }
    
    /**
     * Creating numeric thumbs. Depending on elements count.
     */
    function _createThumbsNumbers(){
        var htm = '<ul>';
        for (i=0;i<$(sgObj).find("li").length; i++){
            htm += '<li class="'+settings.thumbClass+'">'+ (i+1) +'</'+'li>';
        }
        htm += '</'+'ul>';
        return htm;
    }
    
    function _createThumbsImage(){
        var htm = '<ul>';
        for (i=0;i<$(sgObj).find("li").length; i++){
            htm += '<li class="'+settings.thumbClass+'" style="background:url(\''+ settings.thumbImage +'\') center 0 no-repeat;"></'+'li>';
        }
        htm += '</'+'ul>';
        return htm;
    }
    
    /**
     * This function calls functions to generate thumbs depending on the settings.
     */
    function _thumbs(){
        if($("#ssgThumbs").length < 1){
            return false;
        }
        var animated = false;
        switch(settings.thumbs){
            case "numbers":
                $("#ssgThumbs").html(_createThumbsNumbers());
                break;
            case "image":
                $("#ssgThumbs").html(_createThumbsImage());
                break;
            default:
                return ;
                break;
        }
        $("#ssgThumbs li").click(function (){_cthumbs($("#ssgThumbs li").index(this),true);});
        $("#ssgThumbs li").eq(0).addClass(settings.aClass);
    }
    
    /**
     * This function animates the gallery to the clicked thumb OR animate the gallery for AutoPlay
     * @param ind index of clicked object
     */
    function _cthumbs(ind,c){
        if(anim==false){
            clearInterval(ap);
            anim = true;
            if(settings.thumbs != "none"){
            $("#ssgThumbs li").removeClass(settings.aClass);//alert(settings.aClass);
            $("#ssgThumbs li").eq(ind).addClass(settings.aClass);
            $(sgObj).find('ul').animate({'left':-(ind * settings.width)+'px'},settings.speed, settings.easing, function (){anim = false;
                if(c==true){
                    aind = ind;
                }
                if(settings.auto==true){ap=setInterval(function (){_autoplay();}, settings.delay)}
            });
            } else {
                $(sgObj).find('ul').animate({'left':-(ind * settings.width)+'px'},settings.speed, settings.easing, function (){anim = false;
                    if(settings.auto==true){ap=setInterval(function (){_autoplay();}, settings.delay)}
                });
            }
        }
    }
    
    function _prepare(){
        _thumbs(settings.thumbs);
    }
    
    /**
     * Starts the auto play.
     */
    function _run(){
        // Runs autoplay
        ap = setInterval(function (){
            _autoplay();
        },settings.delay);
    }
    
    /**
     * Animate the gallery on Auto play
     */
    function _autoplay(){
        aind++;
        if(aind>=$(sgObj).find("li").length){
            aind = 0;
        }
        _cthumbs(aind,false);
    }
    
    /**
     * The initializer for this plugin.
     */
    function _init(){
        _css();
        _prepare();
        if(settings.auto==true){
            _run();
        }
    }
    
    return _init();
    
};

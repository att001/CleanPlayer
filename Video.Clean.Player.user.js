// ==UserScript==
// @name        Video.Clean.Player
// @namespace   https://github.com/dxdragon/CleanPlayer
// @author      Original By yndoc, Mod By dxdragon,Thanks to OpenGG, cinhoo, KaFan15536900, gesion,catcat520,jc3213,etc.
// @description 去除国内常见视频网站的播放前视频广告
// @version     3.15.1.2
// @downloadURL https://github.com/dxdragon/CleanPlayer/blob/master/Video.Clean.Player.user.js
// @include     http://*/*
// @include     https://*/*
// @grant       GM_xmlhttpRequest
// @run-at      document-start
// ==/UserScript==

(function() {
    Function.prototype.bind = function() {
        var fn = this, args = Array.prototype.slice.call(arguments), obj = args.shift();
        return function() {
            return fn.apply(obj, args.concat(Array.prototype.slice.call(arguments)));
        };
    };

    function YoukuAntiAds() {}
    YoukuAntiAds.prototype = {
        //_host: 'http://dxdragon.cwsurf.de/cleanplayer/player/',
        _host: 'http://code.taobao.org/svn/cleanplayer/trunk/player/',
        _players: null,
        _rules: null,
        _done: null,
        get players() {
            if(!this._players) {
                this._players = {
                    'youku_loader': this._host + 'loader.swf',
                    'youku_player': this._host + 'player.swf',
                    'tudou': this._host + 'tudou.swf',
                    'tudou_olc': this._host + 'olc_8.swf',
                    'tudou_sp': this._host + 'sp.swf',
                    'ku6': this._host + 'ku6.swf',
                    'ku6_out': this._host + 'ku6_out.swf',
                    'iqiyi': this._host + 'iqiyi.swf',
                    'iqiyi5': this._host + 'iqiyi5.swf',
                    'iqiyi_out': this._host + 'iqiyi_out.swf',
                    'pps': this._host + 'pps.swf',
                    'pptv': this._host + 'pptv.in.Ikan.swf',
                    'pptv_live': this._host + 'pptv.in.Live.swf',
                    'baidu_call': this._host + 'baidu.call.swf',
                    'letv': this._host + 'letv.swf',
                    'letv_live': this._host + 'letv_live.swf',
                    'letv_cloud': this._host + 'letv_cloud.swf',
                    'sohu':this._host + 'sohu/sohu.swf',
                    'sohu_live':this._host + 'sohu/sohu_live.swf',
                    '17173_in_Vod': this._host + '17173/17173.in.Vod.swf', 
                    '17173_in_Live': this._host + '17173/17173.in.Live.swf',
                    '17173_out_Vod': this._host + '17173/17173.out.Vod.swf',
                    '17173_out_Live': this._host + '17173/17173.out.Live.swf',
               };
            }
            return this._players;
        },
        get rules() {
            if(!this._rules) {
                this._rules = {
                    'youku_loader': {
                        'find': /^http:\/\/static\.youku\.com(\/v[\d\.]*)?\/v\/swf\/loaders?[^\.]*\.swf/i,
                        'replace': this.players['youku_loader']
                    },
                    'youku_player': {
                        'find': /^http:\/\/static\.youku\.com(\/v[\d\.]*)?\/v\/swf\/(q?player[^\.]*|\w{13})\.swf/i,
                        'replace': this.players['youku_player']
                    },
                    'youku_out': {
                        'find': /^http:\/\/player\.youku\.com\/player\.php\/.*sid\/([\w=]+).*(\/v)?\.swf.*/i,
                        'replace': this.players['youku_loader'] + '?showAd=0&VideoIDS=$1'
                    },
                    'tudou': {
                        'find': /^http:\/\/js\.tudouui\.com\/.*PortalPlayer[^\.]*\.swf/i,
                        'replace': this.players['tudou']
                    },
                    'tudou_out': {
                        'find': /^http:\/\/www\.tudou\.com\/.*(\/v\.swf)?/i,
                        'replace': this.players['tudou_olc'] + '?tvcCode=-1&swfPath=' + this.players['tudou_sp']
                    },
                    'ku6': {
                        'find': /^http:\/\/player\.ku6cdn\.com\/default\/.*\/\d+\/(v|player)[^\.]*\.swf/i,
                        'replace': this.players['ku6']
                    },
                    'ku6_out': {
                        'find': /^http:\/\/player\.ku6\.com\/(inside|refer)\/([^\/]+)\/v\.swf/i,
                        'replace': this.players['ku6_out'] + '?vid=$2'
                    },
                    'iqiyi': {
                        'find': /^https?:\/\/www\.iqiyi\.com\/(player\/(\d+\/Player|[a-z0-9]*)|common\/flashplayer\/\d+\/((PPS)?Main|Share)?Player[^\.]*)\.swf/i,
                        'replace': this.players['iqiyi']
                    },
                    'iqiyi_out': {
                        'find': /^https?:\/\/player\.video\.i?qiyi\.com\/([^\/]*)\/.*tvId=([^-]*).*/i,
                        'replace': this.players['iqiyi_out'] + '?vid=$1&tvId=$2'
                    },
                    'iqiyi_out_2': {
                        'find': /^https?:\/\/(player|dispatcher)\.video\.i?qiyi\.com\/(.*\/shareplayer\.swf|qiyi)/i,
                        'replace': this.players['iqiyi_out']
                    },
                    'pps': {
                        'find': /^https?:\/\/www\.iqiyi\.com\/player\/cupid\/.*\/pps[\w]+.swf/i,
                        'replace': this.players['iqiyi_out']
                    },
                    'pps_live': {
                        'find': /^https?:\/\/www\.iqiyi\.com\/common\/flashplayer\/.*\/am.*\.swf/i,
                        'replace': 'about:blank'
                    },
                    'pps_live_1': {
                        'find': /^http:\/\/live\.pps\.tv(?!(\/index.php).*)/i,
                        'replace': 'http://live.pps.tv/index.php/epg/show'
                    },
                    'pptv': {
                        'find': /^http:\/\/player\.pplive\.cn\/ikan\/.*\/player4player2\.swf/i,
                        'replace': this.players['pptv']
                    },
                    'pptv_live': {
                        'find': /^http:\/\/player\.pplive\.cn\/live\/.*\/player4live2\.swf/i,
                        'replace': this.players['pptv_live']
                    },
                    'baidu_call': {
                        'find': /^http\:\/\/list\.video\.baidu\.com\/swf\/advPlayer\.swf/i,
                        'replace': this.players['baidu_call']
                    },
                    'letv': {
                        'find': /^http:\/\/.*letv[\w]*\.com\/(hz|.*?\/((?!(Live|seed|Disk))(S(?!SDK)[\w]{2,3})?(?!Live)[\w]{4}|swf|VLetv))Player[^\.]*\.swf/i,
                        'replace': this.players['letv']
                    },
                    'letv_pccs': {
                        'find': /^http:\/\/www.letv.com\/.*\/playerapi\/pccs_(?!(live|sdk)).*_?(\d+)\.xml/i,
                        'replace': 'http://www.letv.com/cmsdata/playerapi/pccs_sdk_201409191523.xml'
                    },
                    'letv_cloud': {
                        'find': /^http:\/\/.*letv[\w]*\.com\/.*cloud(?!(_bili).*)?\.swf/i,
                        'replace': this.players['letv_cloud']
                    },
                    'duowan': {
                        'find': /^http:\/\/assets\.dwstatic\.com\/.*\/vpp\.swf/i,
                        'replace': 'http://yuntv.letv.com/bcloud.swf'
                    },
                    'letv_out': {
                        'find': /^http:\/\/.*letv\.com\/player\/swfplayer\.swf(\?.*)/i,
                        'replace': this.players['letv'] + '$1'
                    },
                    'letv_specail': {
                        'find': /^http:\/\/.*\.letvimg\.com\/.*\/(letvbili|lbplayer|letv-wrapper|acfunletv[^\.]*)\.swf/i,
                        'replace': this.players['letv']
                    },
                    'letv_skin': {
                        'find': /^http:\/\/.*letv[\w]*\.com\/p\/\d+\/\d+\/(?!15)\d*\/newplayer\/\d+\/S?SLetvPlayer\.swf/i,
                        'replace': 'http://player.letvcdn.com/p/201407/24/15/newplayer/1/SSLetvPlayer.swf'
                    },
                    'sohu': {
                        'find': /^http:\/\/tv\.sohu\.com\/upload\/swf\/(?!(live|\d+|ap)).*\d+\/(main|PlayerShell)\.swf/i,
                        'replace': this.players['sohu']
                    },
                    'sohu_live': {
                        'find': /^http:\/\/(tv\.sohu\.com\/upload\/swf\/(live\/|p2p\/)?\d+|(\d+\.){3}\d+(:\d+)?\/(.*player))\/(main|PlayerShell)\.swf/i,
                        'replace': this.players['sohu_live']
                    },
                    'sohu_bilibili': {
                        'find': /^http:\/\/static\.hdslb\.com\/sohu\.swf/i,
                        'replace': this.players['sohu_live']
                    },
                    'sohu_out_1': {
                        'find': /^http:\/\/.*\.sohu\.com\/my\/v\.swf(.*)/i,
                        'replace': this.players['sohu_live'] + '?$1'
                    },
                    'sohu_out_2': {
                        'find': /^http:\/\/.*\.sohu\.com\/(\d+)\/v\.swf/i,
                        'replace': this.players['sohu_live'] + '?vid=$1'
                    },
                    '17173_in_Vod': {
                        'find': /^http:\/\/f\.v\.17173cdn\.com\/\d+\/flash\/PreloaderFile(Customer|SeoVideo)?\.swf/i,
                        'replace': this.players['17173_in_Vod'] 
                    },
                    '17173_out_Vod': {
                        'find': /^http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFileFirstpage\.swf/i,
                        'replace': this.players['17173_out_Vod'] 
                    },
                    '17173_out_Vod_f2': {
                        'find': /^http:\/\/f\.v\.17173cdn\.com\/player_f2\/(\w+)\.swf/i,
                        'replace': this.players['17173_out_Vod'] + '?cid=$1'
                    },
                    '17173_in_Live': {
                        'find': /^http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream(_firstpage)?\.swf/i,
                        'replace': this.players['17173_in_Live']
                    },
                    '17173_out_Live': {
                        'find': /^http:\/\/v\.17173\.com\/live\/player\/Player_stream_(custom)?Out\.swf/i,
                        'replace': this.players['17173_out_Live'] + '?'
                    }
                };
            }
            return this._rules;
        },
        get done() {
            if(!this._done) {
                this._done = new Array();
            }
            return this._done;
        },
        initPreHandlers: function() {
            this.rules['iqiyi']['preHandle'] = function(elem, find, replace, player) {
                if(document.querySelector('span[data-flashplayerparam-flashurl]')) {
                    replace = this.players['iqiyi5'];
                }
                this.reallyReplace.bind(this, elem, find, replace)();
            }
            this.rules['iqiyi_out']['preHandle'] = function(elem, find, replace, player) {
                var match = player.match(/(autoplay)=[^&]+/ig);
                if(match) {
                    replace += '&' + match.join('&');
                }
                this.reallyReplace.bind(this, elem, find, replace)();
            }
            this.rules['tudou_out']['preHandle'] = function(elem, find, replace, player) {
                var fn = this;
                var isFx = /firefox/i.test(navigator.userAgent);
                GM_xmlhttpRequest({
                    method: isFx ? 'HEAD' : 'GET',
                    url: isFx ? player : 'https://query.yahooapis.com/v1/public/yql?format=json&q=' + encodeURIComponent('use"http://code.taobao.org/svn/cleanplayer/trunk/firefox/tudou_redirect.yql.xml" as tudou; select * from tudou where url="' + player + '" and referer="' + window.location.href + '"'),
                    onload: function(response) {
                        var finalUrl = (isFx ? response.finalUrl : response.responseText);
                        var match = finalUrl.match(/(iid|youkuid|resourceid|autoplay|snap_pic|code)=[^&]+/ig);
                        if(match && !/error/i.test(finalUrl)) {
                            replace += '&' + match.join('&');
                            fn.reallyReplace.bind(fn, elem, find, replace)();
                        }
                    }
                });
            }
        },
        addAnimations: function() {
            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = 'object,embed{\
-webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
-ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
-o-animation-duration:.001s;-o-animation-name:playerInserted;\
animation-duration:.001s;animation-name:playerInserted;}\
@-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
@-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
@-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
@keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
            document.getElementsByTagName('head')[0].appendChild(style);
        },
        addTimer: function() {
            setInterval(function() {
                this.players.length && this.players.shift()();
            }.bind(this), 100);
        },
        addTips: function() {
            if (this.done.indexOf('tips') != -1)
			          return;

		        this.done.push('tips');

            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = '.tips_container{font:12px Arial, Verdana;padding:0 8px;cursor:default;border:1px solid #d5d5d5;line-height:25px;opacity:.2;background:#f5f5f5;position:fixed;right:0;bottom:-1px;z-index:999999}.tips_container:hover{opacity:.8}';
            document.getElementsByTagName('head')[0].appendChild(style);

            var div = document.createElement('div');
            div.className = 'tips_container';
            div.innerHTML = '<span style="color:green">Video.Clean.Player \u5DF2\u542F\u7528</span> &nbsp; <a href="https://github.com/dxdragon/CleanPlayer/blob/master/Video.Clean.Player.user.js" style="color:red" title="\u5347\u7EA7\u65B0\u7248" target="_blank">\u5347\u7EA7</a> &nbsp; <a href="http://bbs.kafan.cn/thread-1514537-1-1.html" style="color:blue" title="\u53CD\u9988\u95EE\u9898" target="_blank">\u53CD\u9988</a> &nbsp; <a href="javascript:;" class="tip_close" style="color:gray" title="\u9690\u85CF\u63D0\u793A">\u9690\u85CF</a>';
            div.querySelector('.tip_close').addEventListener('click', function(e) {
            e.stopPropagation && e.stopPropagation();
            e.preventDefault && e.preventDefault();
            div.parentNode.removeChild(div);
            }, false);
            (document.documentElement || document.body).appendChild(div);
        },
        animationsHandler: function(e) {
            if(e.animationName === 'playerInserted') {
                this.replace(e.target);
            }
        },
        replace: function(elem) {
            if(this.done.indexOf(elem) != -1) return;
            this.done.push(elem);

            var player = elem.data || elem.src;
            if(!player) return;

            var i, find, replace, isReplacing = false;
            for(i in this.rules) {
                find = this.rules[i]['find'];
                if(find.test(player)) {
                    replace = this.rules[i]['replace'];
                    if('function' === typeof this.rules[i]['preHandle']) {
                        isReplacing = true;
                        this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                    }
                    if(!isReplacing) {
                        this.reallyReplace.bind(this, elem, find, replace)();
                    }
                    break;
                }
            }
        },
        reallyReplace: function(elem, find, replace) {
            elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
            this.reloadPlugin(elem);
        },
        reloadPlugin: function(elem) {
            var nextSibling = elem.nextSibling;
            var parentNode = elem.parentNode;
            parentNode.removeChild(elem);
            var newElem = elem.cloneNode(true);
            this.done.push(newElem);
            if(nextSibling) {
                parentNode.insertBefore(newElem, nextSibling);
            } else {
                parentNode.appendChild(newElem);
            }

            this.addTips();
        },
        init: function() {
            this.initPreHandlers();

            var handler = this.animationsHandler.bind(this);
            var events = ['webkitAnimationStart', 'msAnimationStart', 'oAnimationStart', 'animationstart'];
            for (var i in events)
                document.body.addEventListener(events[i], handler, false);

            this.addAnimations();
            this.addTimer();
        }
    };

    new YoukuAntiAds().init();
})();

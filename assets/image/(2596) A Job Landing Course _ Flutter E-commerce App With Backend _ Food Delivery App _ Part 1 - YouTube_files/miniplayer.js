(function(g){var window=this;'use strict';var vkb=function(a,b){g.X.call(this,{G:"button",Na:["ytp-miniplayer-expand-watch-page-button","ytp-button","ytp-miniplayer-button-top-left"],Y:{title:"{{title}}","data-tooltip-target-id":"ytp-miniplayer-expand-watch-page-button","aria-keyshortcuts":"i","data-title-no-tooltip":"{{data-title-no-tooltip}}"},X:[{G:"svg",Y:{height:"24px",version:"1.1",viewBox:"0 0 24 24",width:"24px"},X:[{G:"g",Y:{fill:"none","fill-rule":"evenodd",stroke:"none","stroke-width":"1"},X:[{G:"g",Y:{transform:"translate(12.000000, 12.000000) scale(-1, 1) translate(-12.000000, -12.000000) "},
X:[{G:"path",Y:{d:"M19,19 L5,19 L5,5 L12,5 L12,3 L5,3 C3.89,3 3,3.9 3,5 L3,19 C3,20.1 3.89,21 5,21 L19,21 C20.1,21 21,20.1 21,19 L21,12 L19,12 L19,19 Z M14,3 L14,5 L17.59,5 L7.76,14.83 L9.17,16.24 L19,6.41 L19,10 L21,10 L21,3 L14,3 Z",fill:"#fff","fill-rule":"nonzero"}}]}]}]}]});this.I=a;this.Ta("click",this.onClick,this);this.updateValue("title",g.qT(a,"Expand","i"));this.update({"data-title-no-tooltip":"Expand"});g.tb(this,g.kT(b.Hc(),this.element))},wkb=function(a){g.X.call(this,{G:"div",
S:"ytp-miniplayer-ui"});this.yg=!1;this.player=a;this.T(a,"minimized",this.Bh);this.T(a,"onStateChange",this.MQ)},xkb=function(a){g.WT.call(this,a);
this.u=new g.PK(this);this.j=new wkb(this.player);this.j.hide();g.XS(this.player,this.j.element,4);a.Ag()&&(this.load(),g.Wq(a.getRootNode(),"ytp-player-minimized",!0))};
g.x(vkb,g.X);vkb.prototype.onClick=function(){this.I.Qa("onExpandMiniplayer")};g.x(wkb,g.X);g.k=wkb.prototype;
g.k.GN=function(){this.tooltip=new g.wW(this.player,this);g.H(this,this.tooltip);g.XS(this.player,this.tooltip.element,4);this.tooltip.scale=.6;this.Yc=new g.AU(this.player);g.H(this,this.Yc);this.Ak=new g.X({G:"div",S:"ytp-miniplayer-scrim"});g.H(this,this.Ak);this.Ak.Ja(this.element);this.T(this.Ak.element,"click",this.qI);var a=new g.X({G:"button",Na:["ytp-miniplayer-close-button","ytp-button"],Y:{"aria-label":"Close"},X:[g.fR()]});g.H(this,a);a.Ja(this.Ak.element);this.T(a.element,"click",this.Gp);
a=new vkb(this.player,this);g.H(this,a);a.Ja(this.Ak.element);this.xv=new g.X({G:"div",S:"ytp-miniplayer-controls"});g.H(this,this.xv);this.xv.Ja(this.Ak.element);this.T(this.xv.element,"click",this.qI);var b=new g.X({G:"div",S:"ytp-miniplayer-button-container"});g.H(this,b);b.Ja(this.xv.element);a=new g.X({G:"div",S:"ytp-miniplayer-play-button-container"});g.H(this,a);a.Ja(this.xv.element);var c=new g.X({G:"div",S:"ytp-miniplayer-button-container"});g.H(this,c);c.Ja(this.xv.element);this.tY=new g.JV(this.player,
this,!1);g.H(this,this.tY);this.tY.Ja(b.element);b=new g.IV(this.player,this);g.H(this,b);b.Ja(a.element);this.nextButton=new g.JV(this.player,this,!0);g.H(this,this.nextButton);this.nextButton.Ja(c.element);this.Mj=new g.pW(this.player,this);g.H(this,this.Mj);this.Mj.Ja(this.Ak.element);this.Pc=new g.OV(this.player,this);g.H(this,this.Pc);g.XS(this.player,this.Pc.element,4);this.cI=new g.X({G:"div",S:"ytp-miniplayer-buttons"});g.H(this,this.cI);g.XS(this.player,this.cI.element,4);a=new g.X({G:"button",
Na:["ytp-miniplayer-close-button","ytp-button"],Y:{"aria-label":"Close"},X:[g.fR()]});g.H(this,a);a.Ja(this.cI.element);this.T(a.element,"click",this.Gp);a=new g.X({G:"button",Na:["ytp-miniplayer-replay-button","ytp-button"],Y:{"aria-label":"Close"},X:[g.XEa()]});g.H(this,a);a.Ja(this.cI.element);this.T(a.element,"click",this.s8);this.T(this.player,"presentingplayerstatechange",this.Md);this.T(this.player,"appresize",this.Kb);this.T(this.player,"fullscreentoggled",this.Kb);this.Kb()};
g.k.show=function(){this.Af=new g.Iq(this.uw,null,this);this.Af.start();this.yg||(this.GN(),this.yg=!0);0!==this.player.getPlayerState()&&g.X.prototype.show.call(this);this.Pc.show();this.player.unloadModule("annotations_module")};
g.k.hide=function(){this.Af&&(this.Af.dispose(),this.Af=void 0);g.X.prototype.hide.call(this);this.player.Ag()||(this.yg&&this.Pc.hide(),this.player.loadModule("annotations_module"))};
g.k.xa=function(){this.Af&&(this.Af.dispose(),this.Af=void 0);g.X.prototype.xa.call(this)};
g.k.Gp=function(){this.player.stopVideo();this.player.Qa("onCloseMiniplayer")};
g.k.s8=function(){this.player.playVideo()};
g.k.qI=function(a){if(a.target===this.Ak.element||a.target===this.xv.element)g.dQ(this.player.Nb())?this.player.pauseVideo():this.player.playVideo()};
g.k.Bh=function(){g.Wq(this.player.getRootNode(),"ytp-player-minimized",this.player.Ag())};
g.k.cf=function(){this.Pc.Bc();this.Mj.Bc()};
g.k.uw=function(){this.cf();this.Af&&this.Af.start()};
g.k.Md=function(a){g.yP(a.state,32)&&this.tooltip.hide()};
g.k.Kb=function(){g.$V(this.Pc,0,this.player.qb().getPlayerSize().width,!1);g.PV(this.Pc)};
g.k.MQ=function(a){this.player.Ag()&&(0===a?this.hide():this.show())};
g.k.Hc=function(){return this.tooltip};
g.k.Mg=function(){return!1};
g.k.kh=function(){return!1};
g.k.qm=function(){return!1};
g.k.pJ=function(){};
g.k.rq=function(){};
g.k.Wy=function(){};
g.k.hn=function(){return null};
g.k.PG=function(){return null};
g.k.WM=function(){return new g.xe(0,0)};
g.k.Vk=function(){return new g.Rn(0,0,0,0)};
g.k.handleGlobalKeyDown=function(){return!1};
g.k.handleGlobalKeyUp=function(){return!1};
g.k.Dw=function(a,b,c,d,e){var f=0,h=d=0,l=g.to(a);if(b){c=g.Rq(b,"ytp-prev-button")||g.Rq(b,"ytp-next-button");var m=g.Rq(b,"ytp-play-button"),n=g.Rq(b,"ytp-miniplayer-expand-watch-page-button");c?f=h=12:m?(b=g.ro(b,this.element),h=b.x,f=b.y-12):n&&(h=g.Rq(b,"ytp-miniplayer-button-top-left"),f=g.ro(b,this.element),b=g.to(b),h?(h=8,f=f.y+40):(h=f.x-l.width+b.width,f=f.y-20))}else h=c-l.width/2,d=25+(e||0);b=this.player.qb().getPlayerSize().width;e=f+(e||0);l=g.pe(h,0,b-l.width);e?(a.style.top=e+"px",
a.style.bottom=""):(a.style.top="",a.style.bottom=d+"px");a.style.left=l+"px"};
g.k.showControls=function(){};
g.k.Rp=function(){};
g.k.fm=function(){return!1};
g.k.PE=function(){};
g.k.BA=function(){};
g.k.Lr=function(){};
g.k.Kr=function(){};
g.k.vy=function(){};
g.k.Qs=function(){};
g.k.zE=function(){};g.x(xkb,g.WT);g.k=xkb.prototype;g.k.onVideoDataChange=function(){if(this.player.getVideoData()){var a=this.player.getVideoAspectRatio(),b=16/9;a=a>b+.1||a<b-.1;g.Wq(this.player.getRootNode(),"ytp-rounded-miniplayer-not-regular-wide-video",a)}};
g.k.create=function(){g.WT.prototype.create.call(this);this.u.T(this.player,"videodatachange",this.onVideoDataChange);this.onVideoDataChange()};
g.k.vl=function(){return!1};
g.k.load=function(){this.player.hideControls();this.j.show()};
g.k.unload=function(){this.player.showControls();this.j.hide()};g.VT("miniplayer",xkb);})(_yt_player);

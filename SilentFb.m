#import "ZKSwizzle.h"


hook(FBVideoPlayerState)
//stop playing facebook videos automatically
-(BOOL)manuallyPaused
{
    return true;
}

endhook


hook(MNOnlineStatusManager)
// ayy picarones estos metodos hacen que esten ocultos siempre.
-(BOOL)getOnline{ return false;}

-(BOOL)online{  return false;}

-(BOOL)started{  return false;}

-(void)setOnline:(BOOL)arg userOverride:(BOOL)arg2{}

endhook


hook(FBAnalytics)
//NO LOG!
- (void)logNetworkRequestWithURL:(id)arg1 queueAddTime:(double)arg2 requestBeginTime:(double)arg3 requestEndTime:(double)arg4 responseBeginTime:(double)arg5 responseEndTime:(double)arg6 bytesUp:(long long)arg7 bytesDown:(long long)arg8 expectedBytesDownOnWire:(long long)arg9 success:(BOOL)arg10
{}

-(void)logApplicationLaunch:(BOOL)arg1{}

endhook



hook(FBMQTTClientManager)
//Don't know if this method need to be overwritten. (no se si se ocupa)
- (void)startClientManager{}

//maybe the most important method to overwrite. (tal vez el metodo mas importante que sobreescribir)
- (void)configureWithClientID:(id)arg1 showOnline:(BOOL)arg2 clientCapabilities:(unsigned int)arg3 endpointCapabilities:(unsigned int)arg4 credentialsAvailableBlock:(id)arg5 credentialsFetcherBlock:(id)arg6 userAgentFormatterBlock:(id)arg7 regionPreference:(id)arg8
{}

endhook



hook(FBMessengerChatSideBarView)

+(void)updateChatDisabledOverlayView:(BOOL)arg online:(BOOL)arg2
{
    ZKOrig(void,false,false);
}

-(void)updateChatDisabledOverlayView:(BOOL)arg online:(BOOL)arg2
{
    ZKOrig(void,false,false);
}
endhook



ctor {
 
}

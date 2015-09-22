///JB Check
%hook CBJBroken
+(BOOL)isDeviceJailbroken {
	return false;
}  // 0xf6da9
%end
%hook EveryplayCommon
+(BOOL)isJailbroken {
	return false;
}  // 0x4d2601
%end
%hook FlurryUtil 
+(BOOL)deviceIsJailbroken {
	return false;
} // 0x114c59
%end
%hook UnityAdsDevice 
+(BOOL)isJailbroken {
	return false;
}   // 0x27a37d
%end

///Crack check
%hook CBJBroken 
+(BOOL)isAppCracked {
	return false;
}        // 0xf7f9d
%end
%hook FlurryUtil
+(BOOL)appIsCracked {
	return false;
}       // 0x114c61
%end

%hook SpringBoard

-(void)viewDidLoad() {
	NSUserDefaults *standardUserDefaults;
	if(![[standardUserDefaults] boolForKey:@"HasLaunchedOnce"]) {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"xCon++" message:@"Thank you for using xCon++!" delegate:nil cancelButtonTitle:@"Continue" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	[[standardUserDefaults] setBool: YES forKey:@"HasLaunchedOnce"];
}

%end
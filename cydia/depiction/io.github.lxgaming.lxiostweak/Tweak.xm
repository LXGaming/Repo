%hook SpringBoard
-(void)applicationDidFinishLaunching:(id)application {

	%orig;

	UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"LXiOSTweak"
		message:@"Welcome Alex."
		delegate:self
		cancelButtonTitle:@"Close"
		otherButtonTitles:nil];
	[alert1 show];
	[alert1 release];
}
%end

%hook SBLockScreenView
-(void)setCustomSlideToUnlockText:(id)unlockText {
	%orig(@"Welcome Alex.");
}
%end
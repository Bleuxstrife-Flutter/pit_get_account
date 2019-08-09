#import "PitGetAccountPlugin.h"
#import <pit_get_account/pit_get_account-Swift.h>

@implementation PitGetAccountPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPitGetAccountPlugin registerWithRegistrar:registrar];
}
@end

#import "FlutterCalcPlugin.h"
#import <flutter_calc_plugin/flutter_calc_plugin-Swift.h>

@implementation FlutterCalcPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCalcPlugin registerWithRegistrar:registrar];
}
@end

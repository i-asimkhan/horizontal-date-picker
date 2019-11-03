#import "HorizontalDatePickerPlugin.h"
#import <horizontal_date_picker/horizontal_date_picker-Swift.h>

@implementation HorizontalDatePickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHorizontalDatePickerPlugin registerWithRegistrar:registrar];
}
@end

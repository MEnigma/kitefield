#import "KitefieldPlugin.h"
#if __has_include(<kitefield/kitefield-Swift.h>)
#import <kitefield/kitefield-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kitefield-Swift.h"
#endif

@implementation KitefieldPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKitefieldPlugin registerWithRegistrar:registrar];
}
@end

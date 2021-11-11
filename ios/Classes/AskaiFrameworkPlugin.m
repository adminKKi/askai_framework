#import "AskaiFrameworkPlugin.h"
#if __has_include(<askai_framework/askai_framework-Swift.h>)
#import <askai_framework/askai_framework-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "askai_framework-Swift.h"
#endif

@implementation AskaiFrameworkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAskaiFrameworkPlugin registerWithRegistrar:registrar];
}
@end

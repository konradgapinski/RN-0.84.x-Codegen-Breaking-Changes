#import <MyTurboModuleSpec/MyTurboModuleSpec.h>
#import <React/RCTBridgeModule.h>
#import <ReactCommon/RCTTurboModule.h>

@interface MyTurboModule : NativeMyTurboModuleSpecBase <NativeMyTurboModuleSpec>
@end

@implementation MyTurboModule

RCT_EXPORT_MODULE()

- (facebook::react::ModuleConstants<JS::NativeMyTurboModule::Constants::Builder>)constantsToExport {
  return [self getConstants];
}

- (facebook::react::ModuleConstants<JS::NativeMyTurboModule::Constants::Builder>)getConstants {
  return facebook::react::typedConstants<JS::NativeMyTurboModule::Constants::Builder>({
    .greeting = @"Hello from MyTurboModule",
  });
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return std::make_shared<facebook::react::NativeMyTurboModuleSpecJSI>(params);
}

@end

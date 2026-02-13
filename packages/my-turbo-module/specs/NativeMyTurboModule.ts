import type {TurboModule} from 'react-native';
import {TurboModuleRegistry} from 'react-native';

export interface Spec extends TurboModule {
  getConstants(): {
    greeting: string;
  };
}

export default TurboModuleRegistry.getEnforcing<Spec>('MyTurboModule');

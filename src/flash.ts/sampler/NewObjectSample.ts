/**
 * Copyright 2013 Mozilla Foundation
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations undxr the License.
 */
// Class: NewObjectSample
module Shumway.AVM2.AS.flash.sampler {
  import notImplemented = Shumway.Debug.notImplemented;
  export class NewObjectSample extends flash.sampler.Sample {
    static initializer: any = null;
    constructor () {
      false && super();
      notImplemented("Dummy Constructor: public flash.sampler.NewObjectSample");
    }
    // Static   JS -> AS Bindings
    // Static   AS -> JS Bindings
    // Instance JS -> AS Bindings
    // Instance AS -> JS Bindings
    get object(): any {
      notImplemented("public flash.sampler.NewObjectSample::get object"); return;
    }
    get size(): number {
      notImplemented("public flash.sampler.NewObjectSample::get size"); return;
    }
  }
}

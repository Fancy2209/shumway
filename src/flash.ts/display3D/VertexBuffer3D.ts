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
// Class: VertexBuffer3D
module Shumway.AVM2.AS.flash.display3D {
  import notImplemented = Shumway.Debug.notImplemented;
  export class VertexBuffer3D extends ASNative {
    static initializer: any = null;
    constructor () {
      false && super();
      notImplemented("Dummy Constructor: public flash.display3D.VertexBuffer3D");
    }
    // Static   JS -> AS Bindings
    // Static   AS -> JS Bindings
    // Instance JS -> AS Bindings
    // Instance AS -> JS Bindings
    uploadFromVector(data: ASVector<number>, startVertex: number /*int*/, numVertices: number /*int*/): void {
      data = data; startVertex = startVertex | 0; numVertices = numVertices | 0;
      notImplemented("public flash.display3D.VertexBuffer3D::uploadFromVector"); return;
    }
    uploadFromByteArray(data: flash.utils.ByteArray, byteArrayOffset: number /*int*/, startVertex: number /*int*/, numVertices: number /*int*/): void {
      data = data; byteArrayOffset = byteArrayOffset | 0; startVertex = startVertex | 0; numVertices = numVertices | 0;
      notImplemented("public flash.display3D.VertexBuffer3D::uploadFromByteArray"); return;
    }
    dispose(): void {
      notImplemented("public flash.display3D.VertexBuffer3D::dispose"); return;
    }
  }
}

/*
 * Copyright 2014 Mozilla Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package flash.display3D {
import flash.utils.ByteArray;
import flash.display3D.Context3D;

[native(cls='IndexBuffer3DClass')]
public final class IndexBuffer3D {
  public native function IndexBuffer3D(context3D: Context3D, numIndices: Number);
  public native function uploadFromVector(data: Vector, startOffset: int, count: int): void;
  public native function uploadFromByteArray(data: ByteArray, byteArrayOffset: int,
                                             startOffset: int, count: int): void;
  public native function dispose(): void;
}
}

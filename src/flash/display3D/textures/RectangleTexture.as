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

package flash.display3D.textures {
import flash.display.BitmapData;
import flash.display3D.Context3D;
import flash.utils.ByteArray;

[native(cls='RectangleTextureClass')]
public final class RectangleTexture extends TextureBase {
  public native function RectangleTexture(context:Context3D, width:int, height:int, format:String, optimizeForRenderToTexture:Boolean, streamingLevels:int = 0);
  public native function uploadFromBitmapData(source: BitmapData, miplevel: uint = 0): void;
  public native function uploadFromByteArray(data: ByteArray, byteArrayOffset: uint,
                                             miplevel: uint = 0): void;
}
}

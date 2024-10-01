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
import flash.display.BitmapData;
import flash.display3D.textures.RectangleTexture;
import flash.display3D.textures.CubeTexture;
import flash.display3D.textures.Texture;
import flash.display3D.textures.TextureBase;
import flash.events.EventDispatcher;
import flash.geom.Matrix3D;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

[native(cls='Context3DClass')]
public final class Context3D extends EventDispatcher {
  public native function Context3D(id: Number, stage3D: flash.display.Stage3D, renderMode: String = 'auto', profile: String = 'baseline');
  public native function get backBufferHeight(): int;
  public native function get backBufferWidth(): int;
  public native function get driverInfo(): String;
  public native function get enableErrorChecking(): Boolean;
  public native function set enableErrorChecking(toggle: Boolean): void;
  public native function get maxBackBufferHeight(): int;
  public native function set maxBackBufferHeight(value: int): void;
  public native function get maxBackBufferWidth(): int;
  public native function set maxBackBufferWidth(value: int): void;
  public native function get profile(): String;
  public native static function get supportsVideoTexture(): Boolean;
  public native function get totalGPUMemory(): Number;
  public native function dispose(): void;
  public native function configureBackBuffer(width: int, height: int, antiAlias: int,
                                             enableDepthAndStencil: Boolean = true,
                                             wantsBestResolution: Boolean = false): void;
  public native function clear(red: Number = 0, green: Number = 0, blue: Number = 0,
                               alpha: Number = 1, depth: Number = 1, stencil: uint = 0,
                               mask: uint = 4294967295): void;
  public native function drawTriangles(indexBuffer: IndexBuffer3D, firstIndex: int = 0,
                                       numTriangles: int = -1): void;
  public native function present(): void;
  public native function setProgram(program: Program3D): void;
  public native function setProgramConstantsFromVector(programType: String, firstRegister: int,
                                                       data: Vector, numRegisters: int = -1): void;
  public native function setProgramConstantsFromMatrix(programType: String, firstRegister: int,
                                                       matrix: Matrix3D,
                                                       transposedMatrix: Boolean = false): void;
  public native function setProgramConstantsFromByteArray(programType: String, firstRegister: int,
                                                          numRegisters: int, data: ByteArray,
                                                          byteArrayOffset: uint): void;
  public native function setVertexBufferAt(index: int, buffer: VertexBuffer3D,
                                           bufferOffset: int = 0, format: String = "float4"): void;
  public native function setBlendFactors(sourceFactor: String, destinationFactor: String): void;
  public native function setColorMask(red: Boolean, green: Boolean, blue: Boolean,
                                      alpha: Boolean): void;
  public native function setDepthTest(depthMask: Boolean, passCompareMode: String): void;
  public native function setTextureAt(sampler: int, texture: TextureBase): void;
  public native function setRenderToTexture(texture: TextureBase, enableDepthAndStencil: Boolean = false,
                                     antiAlias: int = 0, surfaceSelector: int = 0): void;
  public native function setRenderToBackBuffer(): void;
  public native function setCulling(triangleFaceToCull: String): void;
  public native function setStencilActions(triangleFace: String = "frontAndBack",
                                           compareMode: String = "always",
                                           actionOnBothPass: String = "keep",
                                           actionOnDepthFail: String = "keep",
                                           actionOnDepthPassStencilFail: String = "keep"): void;
  public native function setStencilReferenceValue(referenceValue: uint, readMask: uint = 255,
                                                  writeMask: uint = 255): void;
  public native function setScissorRectangle(rectangle: Rectangle): void;
  public native function createVertexBuffer(numVertices: int, data32PerVertex: int): VertexBuffer3D;
  public native function createIndexBuffer(numIndices: int): IndexBuffer3D;
  public native function createTexture(width: int, height: int, format: String,
                                       optimizeForRenderToTexture: Boolean,
                                       streamingLevels: int = 0): Texture;
  public native function createCubeTexture(size: int, format: String,
                                           optimizeForRenderToTexture: Boolean,
                                           streamingLevels: int = 0): CubeTexture;
  public native function createRectangleTexture(width: int, height: int, 
                                                format: String, 
                                                optimizeForRenderToTexture:Boolean): RectangleTexture;
  public native function createProgram(): Program3D;
  public native function drawToBitmapData(destination: BitmapData): void;
}
}

// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import { CHUNK } from "./constants.sol";
import { Coord, VoxelCoord } from "./types.sol";

// Divide with rounding down like Math.floor(a/b), not rounding towards zero
function div(int32 a, int32 b) pure returns (int32) {
  int32 result = a / b;
  int32 floor = (a < 0 || b < 0) && !(a < 0 && b < 0) && (a % b != 0) ? int32(1) : int32(0);
  return result - floor;
}

function getChunkCoord(VoxelCoord memory coord) pure returns (Coord memory) {
  return Coord(div(coord.x, CHUNK), div(coord.z, CHUNK));
}

function initializeArray(uint256 x, uint256 y) returns (uint256[][] memory) {
  uint256[][] memory arr = new uint256[][](x);
  for (uint256 i; i < x; i++) {
    arr[i] = new uint256[](y);
  }
  return arr;
}

/***
* MIT License
* ===========
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
 __         __     ______   ______     ______   ______     ______     __    __    
/\ \       /\ \   /\  ___\ /\  ___\   /\  ___\ /\  __ \   /\  == \   /\ "-./  \   
\ \ \____  \ \ \  \ \  __\ \ \  __\   \ \  __\ \ \ \/\ \  \ \  __<   \ \ \-./\ \  
 \ \_____\  \ \_\  \ \_\    \ \_____\  \ \_\    \ \_____\  \ \_\ \_\  \ \_\ \ \_\ 
  \/_____/   \/_/   \/_/     \/_____/   \/_/     \/_____/   \/_/ /_/   \/_/  \/_/ 
                                                                                  
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/

// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import "./SafeERC20.sol";
import "./Ownable.sol";

interface ICartoonMintRule  {

    event NFT721Received(address operator, address from, uint256 tokenId, bytes data);
    
    event Avatar721Mint(
        uint256 id,
        uint256 udIndex,
        uint256 mintType,
        address mintRule,
        address auther,
        address nftContract
    );

    event Avatar721Burn(
        uint256 id,
        address stakeErc20,
        uint256 stakeAmount,
        address auther,
        address nftContract
    );

    struct MintRule {
        address mintRule;
        uint256 udIndex;
        address stakeErc20;
        uint256 stakeErc20Amount;
        address costErc20;
        uint256 costErc20Amount;
        uint256 limitTimes;
        uint256 mintType;
        bytes32 signCode;
        bytes wlSignature;    //wlSignature
    }

    function mint(  
        uint256 udIndex,
        address stakeErc20,
        uint256 stakeErc20Amount,
        address costErc20,
        uint256 costErc20Amount,
        uint256 mintType ) external;

}
// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Groth16Verifier {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 15314780626166854639429429712985873450044551734031636292615741160316386035692;
    uint256 constant alphay  = 8832387358570447427099243816300023917323789443326873047946896067051151833149;
    uint256 constant betax1  = 4623233545423082718706146213340326938161408617405182333720426255762190910195;
    uint256 constant betax2  = 7374564731595535334131017780458122114321192915671109164722313443871371593233;
    uint256 constant betay1  = 13389502380269697174068950385615867020318507241480124462830271058046968934268;
    uint256 constant betay2  = 4540272798860434869583511966411229089859429270341958304561580577107176618242;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 6716645631409171411777306098294484826425032869995406867946928254091585694653;
    uint256 constant deltax2 = 8175369706924043838750437883957790432456398659888736415469791850586978395279;
    uint256 constant deltay1 = 18540369723014864913600347973455003769708105432812250054601533239305057685337;
    uint256 constant deltay2 = 10265130205950910063305067578091736069441736746098973805156471039271932237981;

    
    uint256 constant IC0x = 15138654093056528020381256154365905326681217845426665637033620085153541253881;
    uint256 constant IC0y = 15082115688141132785777555656292586944047372331923614856546620476515308779423;
    
    uint256 constant IC1x = 20194155377879678689570160317546416789895304920010458251540486820779228506248;
    uint256 constant IC1y = 3283399730066420084214475495210026899467184078499841420284227518068057771915;
    
    uint256 constant IC2x = 19752076915497149429420693362482903534316153690163194614481211094041374634825;
    uint256 constant IC2y = 5758446236992054122022796236064864385095074864907429650479499137005711876806;
    
    uint256 constant IC3x = 8135850476066808412204214819406302052293986166496882658444611304001617038071;
    uint256 constant IC3y = 7784595936346894192333288575823776130704327685144391408755558289935593869102;
    
    uint256 constant IC4x = 5072431704630388940640665915815949661306830292296519763082584917285155379597;
    uint256 constant IC4y = 13137877045207008881904385664769512335361538789599406351834829738490013090579;
    
    uint256 constant IC5x = 7139087629490142780748322240193280468932204231862815244542001615859867299358;
    uint256 constant IC5y = 1202634139100259237791623481392638049699032789438033260485537441871791217401;
    
    uint256 constant IC6x = 8441099393780659556495284913281694168402799476224321453610626044061410476651;
    uint256 constant IC6y = 2345548987466434896958321048845973984013326980973570301926554043309834107263;
    
    uint256 constant IC7x = 18014858965839638840314922315691346264874507127174128894298070377580382324635;
    uint256 constant IC7y = 2056699874289487987527913182887800074024183844269785748972276354832984462642;
    
    uint256 constant IC8x = 16528153697682001276877579257299566815006098186759135755318985598935788127888;
    uint256 constant IC8y = 7801153293098102614719966144050064475643676695333051254719486648740227500998;
    
    uint256 constant IC9x = 17436640569030801164001260106208179207555983194394679542102589094667536664797;
    uint256 constant IC9y = 18311789646886379161114527018718352931090031778117474293482272533484569308377;
    
    uint256 constant IC10x = 4553119537151222419635033750491556214631081242805738572515087290266147146338;
    uint256 constant IC10y = 19313500167959927398806481190805418815554700579437407561538880568925685430905;
    
    uint256 constant IC11x = 2159124060725945833118923048056080985717844815975315131175310104373613633400;
    uint256 constant IC11y = 10207890157617189107736057098035157033359306333111068491471814173525367426196;
    
    uint256 constant IC12x = 21677206633998931519150526562904090462127945040619681934979237517496283670625;
    uint256 constant IC12y = 21679530963862454084227662626565878888043586027235389133196512861490117707437;
    
    uint256 constant IC13x = 14227380932321788780432724671780525156668542509578350121512280353856194070137;
    uint256 constant IC13y = 21289421403632851531815049854573883961814524811827417343242627237215588827109;
    
    uint256 constant IC14x = 5721058245522092083396916911499110560595835286825709228641325988792537416501;
    uint256 constant IC14y = 11758903057814556710020109990419551561772956337888338270144380178329880111487;
    
    uint256 constant IC15x = 9918471454169812661882427494104559829109926586398653496138695974550256981429;
    uint256 constant IC15y = 4297771942769343748773375792130615090062145648267483731482667240963462023911;
    
    uint256 constant IC16x = 18966209571567319914044613931240614035136688639982681182669635514775414402123;
    uint256 constant IC16y = 6265992446603837102491935172640553434956882152363809213128419615543142666738;
    
    uint256 constant IC17x = 6862718726385110266047806220497641160647768733793304833341521100296848837572;
    uint256 constant IC17y = 52277514265158036559920797000365117089456929353475854397879904927166803341;
    
    uint256 constant IC18x = 12689987388664273985977309835571216802645890351381787535355870070212003855569;
    uint256 constant IC18y = 3272753039944028918552659025599994105246178554537481096156705418675106878141;
    
    uint256 constant IC19x = 21294822601523941771195751726852577929152083818567724215561223651408612061162;
    uint256 constant IC19y = 1925507122770646144482296175289620937682032624166325978910381928919940067649;
    
    uint256 constant IC20x = 9590150530590460953412694649043816284682987496963746540623143414030773409230;
    uint256 constant IC20y = 2431509792644958153894201721275532476386412637657725030494529871094395797854;
    
    uint256 constant IC21x = 11754167351234078922070585270836193594558017722127114400921977263568977416683;
    uint256 constant IC21y = 16901520189361975800319814328883354158816554086767825900115592985646661816096;
    
    uint256 constant IC22x = 531143243593819214007797008408099534146556114476449999533440674306816791515;
    uint256 constant IC22y = 21260224434260669714633970615728663731727658289770365391965416469793335026807;
    
    uint256 constant IC23x = 18312196391883661249992186699258031640404987219346330098804119384439590406783;
    uint256 constant IC23y = 157588706260529690380068646539103168353723836085230951018929085709206933753;
    
    uint256 constant IC24x = 11144541678010024502099792163887300512748656940851120103691820303141306339689;
    uint256 constant IC24y = 14942571319880125619437542201643578046745834478331143017120376075998883840515;
    
    uint256 constant IC25x = 14296660164089856645945644037788619484602725058575420822907498997065047198144;
    uint256 constant IC25y = 21856427993447994395083255742826872808461797181831654878027844697604907415248;
    
    uint256 constant IC26x = 9616158215160518527252566874466243845154579496195825313614336535610704469475;
    uint256 constant IC26y = 973899933839328889367428779215840143196510959744820744572264795493363558076;
    
    uint256 constant IC27x = 17376406969046575658730322670115302374205780354312819119831231461778710068545;
    uint256 constant IC27y = 17138951000611274084181532953527108821661746672962834452274787799396615726039;
    
    uint256 constant IC28x = 5183575158062219307417911372959422746950905749520930051559285887994763523760;
    uint256 constant IC28y = 2782960004171030125536837484217633342210275956683383429345416673964374747373;
    
    uint256 constant IC29x = 1312922482928811581848763915905006677272634608894760072646978872971685169385;
    uint256 constant IC29y = 6672137377833469312950507411988491572105176465208108664104446654057197601304;
    
    uint256 constant IC30x = 1634477118980158454602706860066294717962584244705115168259531039364543440656;
    uint256 constant IC30y = 21239802130143727704605520124160180822981232141407244915237170021445649573334;
    
    uint256 constant IC31x = 16281167990662010646248209204609677025715940868033424720309066125033930768662;
    uint256 constant IC31y = 19249655555063328987113440761282952282701372834028462672314680353707554126071;
    
    uint256 constant IC32x = 10807992204123951429466656548099582258280269751452852003902070168634617723912;
    uint256 constant IC32y = 19664348584451223615512369938810331910633767112351103167149617105464354525411;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[32] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, r)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }

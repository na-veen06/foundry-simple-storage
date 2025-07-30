// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Simplestorage {
    uint256 public myFavnumber;
    // uint256[] listoffavnums;

    struct person {
        uint256 favnum;
        string name;
    }

    person[] public listofPeople;
    // person public nav=person(7,"ven");

    mapping(string => uint256) public favnums;

    function store(uint256 fav_number) public virtual {
        myFavnumber = fav_number;
    }

    function retrieve() public view returns (uint256) {
        return myFavnumber;
    }

    function addPerson(string memory _name, uint256 fav_num) public {
        person memory newperson = person(fav_num, _name);
        listofPeople.push(newperson);
        favnums[_name] = fav_num;
    }
}

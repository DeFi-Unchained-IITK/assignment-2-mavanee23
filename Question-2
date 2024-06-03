// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeRegistree {
    struct Employee {
        uint256 ID;
        string name;
        string position;
        uint256 salary;
    }

    mapping(uint256 => Employee) public employees;
    uint256 public nextEmployeeID;

    event EmployeeAdded(uint256 ID, string name, string position, uint256 salary);
    event EmployeeUpdated(uint256 ID, string name, string position, uint256 salary);
    event EmployeeDeleted(uint256 ID, string name, string position, uint256 salary);

    function addEmployee(string memory _name, string memory _position, uint256 _salary) public {
        employees[nextEmployeeID] = Employee(nextEmployeeID, _name, _position, _salary);
        emit EmployeeAdded(nextEmployeeID, _name, _position, _salary);
        nextEmployeeID++;
    }

    function updateEmployee(uint256 _ID, string memory _name, string memory _position, uint256 _salary) public {
        require(_ID < nextEmployeeID, "Employee does not exist");
        
        employees[_ID] = Employee(_ID, _name, _position, _salary);
        emit EmployeeUpdated(_ID, _name, _position, _salary);
    }

    function getEmployeeDetails(uint256 _ID) public view returns (string memory, string memory, uint256) {
        require(_ID < nextEmployeeID, "Employee does not exist");
        
        Employee memory emp = employees[_ID];
        return (emp.name, emp.position, emp.salary);
    }

    function deleteEmployee(uint256 _ID) public {
        require(_ID < nextEmployeeID, "Employee does not exist");
        
        Employee memory emp = employees[_ID];
        delete employees[_ID];
        emit EmployeeDeleted(emp.ID, emp.name, emp.position, emp.salary);
    }
}

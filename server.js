const inquirer = require('inquirer');
const db = require('./db/connection');
const mysql = require('mysql');
const express = require('express');
const router = express.Router();

db.connect(async function (){
    start();
})

function start () {
    inquirer.prompt([
        {
            type: 'list',
            name: 'choice',
            message: 'Select an option.',
            choices: [
                'View employees',
                'View roles',
                'View departments',
                'Add new employee',
                'Add role',
                'Add department',
                'Quit'
            ],
        }
    ])

    .then((answer) => {
        switch (answer.choice) {

            case 'View employees':

            viewEmployees();
            break;
            case 'View Roles':

            viewRoles();
            break;
            case 'View Departments':

            viewDepartments();
            break;
            case 'Add New Employee':

            newEmployee();
            break;

            case 'Quit':

                Quit();
                break;
        }
    })
}

function viewEmployees() {
    const request = "SELECT * FROM employees";
    db.query(request, function(err, res) {
        if (err) throw error;
        console.log("Viewing all employees");
        console.table(res);
        inquirer.prompt([
            {
                type: 'list',
                name: 'choice',
                message: 'select an option',
                choices: [
                    'Main Menu',
                    'QUit'
                ],
            }
        ])
        
        .then((answer) => {
            switch (answer.choice) {
                case 'Main Menu':
                    start();
                    break;
                case 'Quit':
                    Quit();
            }
        })
    })
};

function viewRoles() {
    let request = "SELECT * FROM roles";
    db.query(request, function(err, res) {
        if (err) throw err;
        console.log("Viewing All Roles");
        console.table(res);
        inquirer.prompt([
            {
                type: 'list',
                name: 'choice',
                message: 'Select an option:',
                choices: [
                  'Main Menu',
                  'Quit'
                ]
            }
        ])
        .then((answer) => {
            switch (answer.choice) {
                case 'Main Menu':
                    start();
                    break;
                case 'Quit':
                Quit();
            }
        })
    })
}

function viewDepartments() {
    const request = "SELECT * FROM department";
    db.query(request, function(err,res) {
        if (err) throw err;
        console.log("Viewing All Departments");
        console.table(res);
        inquirer.prompt([
            {
                type: 'list',
                name: 'choice',
                message: 'Select an option:',
                choices: [
                    'Main Menu',
                    'Quit'
                ]
            }
        ])
        .then((answer) => {
            switch (answer.choice){
                case 'Main Menu':
                    start();
                    break;
                case 'Quit':
                    Quit();
            }
        })
    })
}

function newEmployee() {
    inquirer.prompt ([
        {
            type: 'input',
            name: 'FirstName',
            message: 'Enter employee first name.'
        },
        {
            type: 'input',
            name: 'LastName',
            message: 'Enter employee last name.'
        },
        {
            type: 'input',
            name: 'EmployeeID',
            message: 'Enter employee ID number.'
        },
        {
            type: 'input',
            name: 'ManagerID',
            message: 'Enter their manager ID'
        }
    ])
    .then(function (response) {
        connection.query('INSERT INTO employees(first_name, last_name, roles_id, manager_id) VALUES (?,?,?,?)',
        [response.FirstName, response.LastName, response.EmployeeID, response.ManagerID]), function(err, res) {
            if (err) throw err;
            console.table(res);
            inquirer.prompt([
                {
                    type: 'list',
                    name: 'choice',
                    message: 'Select an option:',
                    choices: [
                        'Main Menu',
                        'Quit'
                    ]
                }
            ])
            .then((answer) => {
                switch (answer.choice){
                    case 'Main Menu':
                        start();
                        break;
                        case 'Quit':
                            Quit();
                }
            })
        }
    })
}

function Quit() {
    console.log('Goodbye!');
    process.exit();
}

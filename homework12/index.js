const { inquirer } = require("inquirer");
const db = require("./db");
init();
function init(){
    inquiry();
}
async function inquiry() {
    const { picked } = await inquirer([{
type: "list",
name: "picked",
message: "pick an option",
choices: [{
    name: "add employee",
    value: "add_employee"
}]
        }]);

        switch(choice){
            case "add_employee":
                return addemployee();
        }
}

async function addemployee(){
    const roles = await db.findAllRoles();
    const employees = await db.findAllEmployees();
    const employee = await prompt([{
        name: "first_name",
        message: "enter first name of employee"
    },{
        name: "last_name",
        message: "enter last name of employee"
    }]);
}
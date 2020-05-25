const connection = require("./connection");
class DB {
    findAllEmployees() {
      return this.connection.query(
        "SELECT employee.id"
      );
    }
    findAllRoles() {
      return this.connection.query(
        "SELECT role.id, role.title, department.name AS department, role.salary FROM role LEFT JOIN department on role.department_id = department.id;"
      );
    }
  }
  module.exports = new DB(connection);
  
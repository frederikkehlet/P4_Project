using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace webForm
{
    public class DBConnect
    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;

        // constructor that sets up a connection to the database
        public DBConnect()
        {
            Initialize();
        }

        private void Initialize()
        {
            server = "localhost";
            database = "student_market";
            uid = "root";
            password = "1234";
            string connectionString;
            connectionString = "SERVER=" + server + ";" + "DATABASE=" +
                database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);
        }

        // open connection to database
        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException)
            {
                return false;
            }
        }

        // close connection
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException)
            {
                return false;
            }
        }

        // insert statement
        public void Insert(string query)
        {
            // open connection
            if (this.OpenConnection() == true)
            {
                // create command and assign the query and connection from the constructor
                MySqlCommand cmd = new MySqlCommand(query, connection);

                // execute command
                cmd.ExecuteNonQuery();

                // close connection
                this.CloseConnection();
            }
        }

        // update statement
        public void Update(string tableName, string values, int id)
        {
            string query = "UPDATE " + tableName + " SET " + values + " WHERE id=" + id + ";";

            // open connection
            if (this.OpenConnection() == true)
            {
                // create command 
                MySqlCommand cmd = new MySqlCommand();
                // assign query
                cmd.CommandText = query;
                // assign the connection using Connection
                cmd.Connection = connection;
                //execute query
                cmd.ExecuteNonQuery();
                // close connection
                this.CloseConnection();
            }
        }

        // delete statement
        public void Delete(string tableName, int id)
        {
            string query = "DELETE FROM " + tableName + " WHERE id=" + id + ";";

            if (this.OpenConnection() == true)
            {
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.ExecuteNonQuery();
                this.CloseConnection();
            }
        }

        // select statement
        public List<string>[] Select(string tableName, int length)
        {
            string query = "SELECT * FROM " + tableName;

            //Create a list to store the result
            List<string>[] list = new List<string>[length];

            for (int i = 0; i < length; i++)
            {
                list[i] = new List<string>();
            }

            //Open connection
            if (this.OpenConnection() == true)
            {
                //Create Command
                MySqlCommand cmd = new MySqlCommand(query, connection);
                //Create a data reader and Execute the command
                MySqlDataReader dataReader = cmd.ExecuteReader();

                //Read the data and store them in the list
                while (dataReader.Read())
                {
                    list[0].Add(dataReader["id"] + "");
                    list[1].Add(dataReader["name"] + "");
                    list[2].Add(dataReader["age"] + "");
                }

                //close Data Reader
                dataReader.Close();

                //close Connection
                this.CloseConnection();

                //return list to be displayed
                return list;
            }
            else
            {
                return list;
            }
        }

        // count statement
        /*public int Count()
        {

        }*/

        // backup
        public void Backup()
        {

        }

        // restore
        public void Restore()
        {

        }
    }
}
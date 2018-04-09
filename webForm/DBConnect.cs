﻿using System;
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
                string connectionString =String.Format("server={0};database={1};uid={2};password={3};",
                    server, database, uid, password);
                
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
        public void Insert(string first_name, string last_name, string email, int phone, string password)
        {
            // open connection
            if (this.OpenConnection() == true)
            {
                try
                {
                    // create command 
                    string commandText = String.Format("INSERT INTO users(first_name, last_name, email, phone, password) " +
                   "VALUES(@first_name,@last_name,@email,@phone,@password);");

                    MySqlCommand cmd = new MySqlCommand(commandText, connection);

                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@first_name", first_name);
                    cmd.Parameters.AddWithValue("@last_name", last_name);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@password", password);

                    // execute command
                    cmd.ExecuteNonQuery();

                    // close connection
                    this.CloseConnection();
                }
                catch (Exception)
                {
                    throw;
                }                
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
        public string Select(string query)
        {
            //Create a list to store the result
            List<string> list = new List<string>();

            string result = "";

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
                    list.Add(dataReader["id"].ToString());
                    list.Add(dataReader["first_name"].ToString());
                    list.Add(dataReader["last_name"].ToString());
                    list.Add(dataReader["email"].ToString());
                    list.Add(dataReader["phone"].ToString());
                    list.Add(dataReader["password"].ToString());
                }

                //close Data Reader
                dataReader.Close();

                //close Connection
                this.CloseConnection();

                //return list to be displayed
                foreach (var item in list)
                {
                    result += item + "\n";
                }
                return result;
            }
            else
            {
                return result;
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

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

        public MySqlConnection Initialize()
        {
            server = "localhost";
            database = "student_market";
            uid = "root";
            password = "1234";
            string connectionString = String.Format("server={0};database={1};uid={2};password={3};",
                server, database, uid, password);

            connection = new MySqlConnection(connectionString);
            return connection;
        }

        // open connection to database
        public bool OpenConnection()
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

        // insert statement for inserting user
        public void InsertUser(string first_name, string last_name, string email, int phone, string password)
        {
            // open connection
            if (this.OpenConnection() == true)
            {
                try
                {
                    // create command 
                    string query = "INSERT INTO users(first_name, last_name, email, phone, password) " +
                   "VALUES(@first_name,@last_name,@email,@phone,@password);";

                    MySqlCommand cmd = new MySqlCommand(query, connection);
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@first_name", first_name);
                    cmd.Parameters.AddWithValue("@last_name", last_name);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    connection.Close();
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
                connection.Close();
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
                connection.Close();
            }
        }

        // select statement
        public List<string> SelectUser(string query)
        {
            //Create a list to store the result
            List<string> list = new List<string>();

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
                connection.Close();

                //return list to be displayed
                return list;
            }
            else
            {
                return list;
            }
        }

        public List<Ad> SelectAd(string query)
        {
            //Create a list to store the ads
            List<Ad> adList = new List<Ad>();

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
                    int ad_id = Convert.ToInt32(dataReader["ad_id"]);
                    string title = Convert.ToString(dataReader["title"]);
                    int year = Convert.ToInt32(dataReader["year"]);
                    string category = Convert.ToString(dataReader["category"]);
                    float price = float.Parse(Convert.ToString(dataReader["price"]));
                    string description = Convert.ToString(dataReader["description"]);
                    string date = Convert.ToString(dataReader["date"]);
                    byte[] image = (byte[])dataReader["image"];
                    int user_id = Convert.ToInt32(dataReader["user_id"]);

                    Ad ad = new Ad(title, year, category, price, description, image, user_id);
                    adList.Add(ad);
                }              

                //close Data Reader
                dataReader.Close();

                //close Connection
                connection.Close();

                //return list to be displayed
                return adList;
            }
            else
            {
                connection.Close();
                return adList;
            }
        }

        // insert statement for inserting ads
        public void InsertAd(string title, int year, string category, float price, string description, string date, Byte[] pic, int user_id)
        {
            if (this.OpenConnection() == true)
            {
                try
                {
                    string query = "INSERT INTO ad (title, year, category, price, description, date, image, user_id) VALUES (@title, @year, @category, @price, " +
                        " @description, @date, @image, @user_id);";

                    MySqlCommand cmd = new MySqlCommand(query, connection);
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@year", year);
                    cmd.Parameters.AddWithValue("@category", category);
                    cmd.Parameters.AddWithValue("@price", price);
                    cmd.Parameters.AddWithValue("@description", description);
                    cmd.Parameters.AddWithValue("@date", date);
                    cmd.Parameters.AddWithValue("@image", pic);
                    cmd.Parameters.AddWithValue("@user_id", user_id);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public string getPic(int user_id)
        {
            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT image FROM ad WHERE ad_id = (SELECT max(ad_id) FROM ad WHERE user_id =" + user_id + ")";
            byte[] buf = (byte[])command.ExecuteScalar();
            string strBase64 = Convert.ToBase64String(buf);
            return strBase64;
        }

        public MySqlDataAdapter searchAdapter(string input)
        {
            connection.Open();
            MySqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT * FROM ad WHERE title LIKE '%" + input + "%';";
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            connection.Close();
            return da;
        }

        public MySqlDataAdapter imageConn()
        {
            connection.Open();
            MySqlCommand cmd =  connection.CreateCommand();
            cmd.CommandText = "SELECT * FROM ad WHERE user_id != " + Student.ID + ";";
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            connection.Close();
            return da;
        }
        public MySqlDataAdapter adConn(string ad_id)
        {
            connection.Open();
            MySqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = "SELECT * FROM ad WHERE ad_id = " + ad_id + ";";
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            connection.Close();
            return da;
        }
        public MySqlDataAdapter userConn(string ad_id)
        {
            connection.Open();
            MySqlCommand cmd = connection.CreateCommand();
            cmd.CommandText = "select distinct users.first_name,users.last_name,users.email,users.phone from users join ad on ad.user_id = users.id where ad.ad_id =" + ad_id + ";";
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            connection.Close();
            return da;
        }
    }
}
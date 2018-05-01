using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace webForm
{
    public class Search
    {
        public string Input { get; set; }

        public Search() { }

        public MySqlDataAdapter SearchFunction(string input)
        {
            DBConnect connection = new DBConnect();

            string query = "SELECT * FROM ad WHERE title LIKE '%" + input + "%';";
            MySqlConnection conn = connection.Initialize();

            MySqlCommand cmd = conn.CreateCommand();

            cmd.CommandText = query;
            cmd.ExecuteNonQuery();

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            conn.Close();
            return da;
        }  


    }
}
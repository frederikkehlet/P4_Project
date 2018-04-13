using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;
using System;


namespace webForm
{
    public class Student
    {
        // properties
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int Phone { get; set; }
        public int ID { get; set; }

        public string Hash(string inputPassword)
        {
            string passwordSource = inputPassword;
            using (MD5 md5Hash = MD5.Create())
            {
                string hash = GetMd5Hash(md5Hash, inputPassword);
                return hash;
            }
        }

        public string GetMd5Hash(MD5 md5Hash, string input)
        {

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

        // add constructor(s)
        // ??? the constructor creates a user and adds it to the db
        public Student(string firstName, string lastName, string email, int phone, string password)
        {
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            Phone = phone;
            Password = Hash(password);
        }

        // add methods
        /*
         * UserCreated()
         * UserEdited()
         * UserDeleted()
         */

        public void UserCreated()
        {
            try
            {
                DBConnect connection = new DBConnect();

                connection.InsertUser(FirstName, LastName, Email, Phone, Password);
            }
            catch (Exception e)
            {
                //MessageBox.Show(e.Message);
            }

        }

        public void UserEdited()
        {
            /* WIP */
        }

        public void UserDeleted()
        {
            /* WIP */
        }
    }
}
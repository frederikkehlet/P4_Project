using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Security;


namespace webForm
{
    public class Student
    {
        // properties
        public static string FirstName { get; set; }
        public static string LastName { get; set; }
        public static string Email { get; set; }
        public string Password { get; set; }
        public static int Phone { get; set; }
        public static int ID { get; set; }

        // add constructor(s)
        // this constructor is used for creating a user object and storing it in the db
        public Student(string firstName, string lastName, string email, int phone, string password)
        {        
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            Phone = phone;
            Password = hashedPassword(password);
        }

        /* this STATIC constructor is used for when the user 
         is logged into the system we do not want to be able to access the pwd */
        static Student(){ }

        private string hashedPassword(string password)
        {
            Hash hash = new Hash();
            string hashedpwd = hash.GetMd5Hash(password);
            return hashedpwd;
        }

        public void UserCreated()
        {
            try
            {
                DBConnect connection = new DBConnect();
                connection.InsertUser(FirstName, LastName, Email, Phone, Password);
                List<string> result = connection.Select("SELECT * FROM users WHERE email = '" + Email + "';");
                ID = int.Parse(result[0]);
            }
            catch (Exception)
            {
                // Missing error message if user cannot be created
            }
        }

        public void UserEdited() // this method needs to change the STATIC properties of the student
        {
            /* WIP */
        }

        public void UserDeleted()
        {
            /* WIP */
        }
    }
}
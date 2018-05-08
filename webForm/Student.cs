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
        public Student() { }

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
                List<string> result = connection.SelectUser("SELECT * FROM users WHERE email = '" + Email + "';");
                ID = int.Parse(result[0]);
            }
            catch (Exception)
            {
                throw;
            }
        }

        // this method calls update user with the static properties
        public void UserEdited(string firstname, string lastname, string email, int phone) 
        {
            try
            {
                FirstName = firstname;
                LastName = lastname;
                Email = email;
                Phone = phone;
                DBConnect connection = new DBConnect();
                connection.UpdateUser(FirstName,LastName,Email,Phone);
            }
            catch (Exception)
            {
                throw;
            }
            
        }

        public void UserDeleted()
        {
            try
            {
                DBConnect connection = new DBConnect();
                connection.DeleteUser(Student.ID);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
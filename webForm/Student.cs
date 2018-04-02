﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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

        // add constructor(s)
        // ??? the constructor creates a user and adds it to the db
        public Student(string firstName, string lastName, string email, int phone, string password)
        {
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            Phone = phone;
            Password = password;
        }

        // add methods
        /*
         * UserCreated()
         * UserEdited()
         * UserDeleted()
         */

        public void UserCreated()
        {
            string query = String.Format("INSERT INTO users(first_name, last_name, email, phone, password) " +
                "VALUES('{0}','{1}','{2}','{3}','{4}');", FirstName, LastName, Email, Phone, Password);

            DBConnect connection = new DBConnect();
            connection.Insert(query);
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
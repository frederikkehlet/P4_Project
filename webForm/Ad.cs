using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webForm
{
    public class Ad
    {
        // properties
        public string Title { get; set; }
        public int Year { get; set; }
        public string Date { get; set; }
        public string Category { get; set; }
        public float Price { get; set; }
        public string Description { get; set; }
        public byte[] Image { get; set; }
        public int User_id { get; }

        public Ad() { }

        // constructor
        public Ad(string title, int year, string category, float price, string description, byte[] image, int user_id)
        {
            Title = title;
            Year = year;
            Date = DateTime.Now.ToString("yyyyMMddHHmmss"); // inserted automatically
            Category = category;
            Price = price;
            Description = description;
            Image = image;
            User_id = user_id;
        }

        // methods
        public void CreateAd()
        { 
            DBConnect connection = new DBConnect();
            connection.InsertAd(Title, Year, Category, Price, Description, Date, Image, User_id);
        }      

        // AdEdited
        public void AdEdited()
        {
            DBConnect connection = new DBConnect();
            //connection.UpdateAd()
        }

        // AdDeleted
        public void AdDeleted(int ad_id)
        {
            DBConnect connection = new DBConnect();
            connection.DeleteAd(ad_id);
        }
    }
}
       
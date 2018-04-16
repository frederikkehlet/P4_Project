using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webForm
{
    public enum category {fiction, nonFicion};

    public class Ad
    {
        // properties

        public string Title { get; set; }
        public int Year { get; set; }
        public DateTime Date { get; set; }
        public category Category { get; set; }
        public float Price { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        
        // add Student type

         /* Vi skal checke hvilken student der er ejer af denne ad.
         * Student 
         */

        // constructors
        public Ad(string title, int year, category category, float price, string description, string image)
        {
        
            
        }

        // methods
        public void CreateAd()
        {

        }
    }
}
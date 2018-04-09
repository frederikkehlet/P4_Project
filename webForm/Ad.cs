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
        public string Category { get; set; }
        public float Price { get; set; }
        public string Description { get; set; }
        public string ImageLocation { get; set; }
         /* Ved ikke lige hvordan dette skal laves til en property
         * Picture 
         */
         /* Er det student.cs oder was?
         * Student 
         */

        // constructors
        public Ad(string title, int year, string category, float price, string description, string imageLocation)
        {

        }

        // methods
        public void CreateAd()
        {

        }
    }
}
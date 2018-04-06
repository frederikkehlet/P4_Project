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
        public string Image { get; set; }

         /* Vi skal checke hvilken student der er ejer af denne ad.
         * Student 
         */

        // constructors

        // methods
        public void CreateAd()
        {

        }
    }
}
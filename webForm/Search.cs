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

        public Search(string input)
        {
            Input = input;
        }
        private string[] Split(string input)
        {
            // Split Input (string) into substrings. Split occurs each time a space is found.

            char[] space = { ' ' };
            string[] Words = input.Split(space);
            return Words;
        }

        
        public SortedDictionary<float,Ad> Percentage(string input)
        {
            int wordsSimilar = 0;
            float percentage;

            string[] inputWords = Split(input);

            DBConnect connection = new DBConnect();

            string query = "SELECT * FROM ad WHERE user_id != " + Student.ID + ";";
            List<Ad> ads = connection.SelectAd(query);
            List<float> percentageList = new List<float>();
            SortedDictionary<float, Ad> sortedAd = new SortedDictionary<float, Ad>();

            foreach (var ad in ads)
            {
                string title = ad.Title;
                string[] dbwords = Split(title);

                // count how many words are similar
                for (int i = 0; i < inputWords.Length; i++)
                {
                    for (int j = 0; j < dbwords.Length; j++)
                    {
                        if (inputWords[i] == dbwords[j])
                        {
                            wordsSimilar++;
                        }
                    }
                }

                // udregn procent
                percentage = (wordsSimilar / dbwords.Length) * 100;

                sortedAd.Add(percentage, ad);
            }
            return sortedAd;
        } 
    }
}
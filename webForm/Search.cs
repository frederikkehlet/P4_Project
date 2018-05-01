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
       
        public List<KeyValuePair<int, Ad>> Percentage()
        {
            int wordsSimilar = 0;

            string[] inputWords = Split(Input);

            DBConnect connection = new DBConnect();

            string query = "SELECT * FROM ad;";
            List<Ad> ads = connection.SelectAd(query);
            // Lookup<float, Ad> sortedAd = new Lookup<float, Ad>();
            List<KeyValuePair<int, Ad>> sortedAd = new List<KeyValuePair<int, Ad>>();

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
                KeyValuePair<int, Ad> item = new KeyValuePair<int, Ad>(wordsSimilar, ad);
                if (wordsSimilar != 0) sortedAd.Add(item);              
            }
            return sortedAd;
        } 
    }
}
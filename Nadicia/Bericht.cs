using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nadicia
{
    public class Bericht
    {
        public string Naam { get; set; }

        public string Text { get; set; }

        public Bericht(string naam, string text)
        {
            this.Naam = naam;
            this.Text = text;
        }

        public Bericht()
        {

        }
    }
}
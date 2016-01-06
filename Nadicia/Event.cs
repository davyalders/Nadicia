using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nadicia
{
    public class Event
    {
        public string Naam { get; set; }

        public string Beschrijving { get; set; }

        public DateTime Datum { get; set; }

        public Event(string naam, string beschrijving, DateTime datum)
        {
            this.Naam = naam;
            this.Beschrijving = beschrijving;
            this.Datum = datum;
        }

        public Event()
        {

        }
    }
}
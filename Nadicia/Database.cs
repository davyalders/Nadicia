using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace Nadicia
{
    public static class Database
    {
        /// <summary>
        ///     Gets a new <see cref="OracleConnection" /> instance
        /// </summary>
        /// <returns>
        ///     A new <see cref="OracleConnection" /> with a correct <see cref="OracleConnection.ConnectionString" />
        /// </returns>
        private static OracleConnection GetConnection()
        {
            const string str = "User Id=dbi261357;Password=gUZeUPkxC7;Data Source=fhictora01.fhict.local/fhictora";
            return new OracleConnection(str);

        }


        public static DataTable GetEvents()
        {
            DataTable dt = new DataTable();
            OracleConnection con = GetConnection();
            
            OracleCommand cmd = new OracleCommand("SELECT * FROM Event", con);

            try
            {
                con.Open();
                OracleDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    dt.Load(reader);
                }

                return dt;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}
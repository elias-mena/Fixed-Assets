using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace FixedAssets.Auth
{
    public class Crypt
    {
        public string Encrypt(string password)
        {
            return Convert.ToBase64String(new UnicodeEncoding().GetBytes(password));
        }
        public string Unencrypt(string password)
        {
            return new UnicodeEncoding().GetString(Convert.FromBase64String(password));
        }
    }
}
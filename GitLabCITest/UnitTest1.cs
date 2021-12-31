using Dapper;
using System;
using System.Data.SqlClient;
using Xunit;

namespace GitLabCITest
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            var serverName = Environment.GetEnvironmentVariable("SERVER_NAME");
            var saPassword = Environment.GetEnvironmentVariable("SA_PASSWORD");
            using var db = new SqlConnection($"Server={serverName};Initial Catalog=TestDB;User ID=sa;Password={saPassword}");
            
            var result = db.Execute("INSERT INTO TestTable (id, value) VALUES (0, 'test')");
            Assert.True(result > 0);

            var result2 = db.Execute("INSERT INTO TestTable2 (id, value) VALUES (0, 'test2')");
            Assert.True(result2 > 0);
        }
    }
}
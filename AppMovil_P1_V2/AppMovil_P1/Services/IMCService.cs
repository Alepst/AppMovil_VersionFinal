using SQLite;
using AppMovil_P1.Models;

namespace AppMovil_P1.Services
{
    public class IMCService
    {
        private readonly SQLiteAsyncConnection _db;

        public IMCService(string dbPath)
        {
            _db = new SQLiteAsyncConnection(dbPath);
            _db.CreateTableAsync<IMCRegistro>().Wait();
        }

        public Task<int> GuardarRegistroAsync(IMCRegistro registro)
        {
            return _db.InsertAsync(registro);
        }

        public Task<List<IMCRegistro>> ObtenerRegistrosAsync()
        {
            return _db.Table<IMCRegistro>().OrderByDescending(r => r.Fecha).ToListAsync();
        }
    }
}

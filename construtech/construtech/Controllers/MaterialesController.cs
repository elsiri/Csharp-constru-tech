using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using construtech.Models;

namespace construtech.Controllers
{
    public class MaterialesController : Controller
    {
        private readonly ConstruTechContext _context;

        public MaterialesController(ConstruTechContext context)
        {
            _context = context;
        }

        // GET: Materiales
        public async Task<IActionResult> Index()
        {
            var construTechContext = _context.Materiales.Include(m => m.IdCatNavigation).Include(m => m.IdProveedorNavigation);
            return View(await construTechContext.ToListAsync());
        }

        // GET: Materiales/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Materiales == null)
            {
                return NotFound();
            }

            var materiale = await _context.Materiales
                .Include(m => m.IdCatNavigation)
                .Include(m => m.IdProveedorNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (materiale == null)
            {
                return NotFound();
            }

            return View(materiale);
        }

        // GET: Materiales/Create
        public IActionResult Create()
        {
            ViewData["IdCat"] = new SelectList(_context.Categorias, "Id", "Id");
            ViewData["IdProveedor"] = new SelectList(_context.Proveedores, "Id", "Id");
            return View();
        }

        // POST: Materiales/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Nombre,Estado,Precio,Cantidad,IdProveedor,IdCat")] Materiale materiale)
        {
            if (ModelState.IsValid)
            {
                _context.Add(materiale);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCat"] = new SelectList(_context.Categorias, "Id", "Id", materiale.IdCat);
            ViewData["IdProveedor"] = new SelectList(_context.Proveedores, "Id", "Id", materiale.IdProveedor);
            return View(materiale);
        }

        // GET: Materiales/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Materiales == null)
            {
                return NotFound();
            }

            var materiale = await _context.Materiales.FindAsync(id);
            if (materiale == null)
            {
                return NotFound();
            }
            ViewData["IdCat"] = new SelectList(_context.Categorias, "Id", "Id", materiale.IdCat);
            ViewData["IdProveedor"] = new SelectList(_context.Proveedores, "Id", "Id", materiale.IdProveedor);
            return View(materiale);
        }

        // POST: Materiales/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Nombre,Estado,Precio,Cantidad,IdProveedor,IdCat")] Materiale materiale)
        {
            if (id != materiale.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(materiale);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MaterialeExists(materiale.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCat"] = new SelectList(_context.Categorias, "Id", "Id", materiale.IdCat);
            ViewData["IdProveedor"] = new SelectList(_context.Proveedores, "Id", "Id", materiale.IdProveedor);
            return View(materiale);
        }

        // GET: Materiales/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Materiales == null)
            {
                return NotFound();
            }

            var materiale = await _context.Materiales
                .Include(m => m.IdCatNavigation)
                .Include(m => m.IdProveedorNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (materiale == null)
            {
                return NotFound();
            }

            return View(materiale);
        }

        // POST: Materiales/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Materiales == null)
            {
                return Problem("Entity set 'ConstruTechContext.Materiales'  is null.");
            }
            var materiale = await _context.Materiales.FindAsync(id);
            if (materiale != null)
            {
                _context.Materiales.Remove(materiale);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MaterialeExists(int id)
        {
          return (_context.Materiales?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}

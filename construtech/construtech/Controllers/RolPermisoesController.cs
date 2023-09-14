using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using construtech.Models;
using Microsoft.AspNetCore.Authorization;

namespace construtech.Controllers
{
    [Authorize]
    public class RolPermisoesController : Controller
    {
        private readonly ConstruTechContext _context;

        public RolPermisoesController(ConstruTechContext context)
        {
            _context = context;
        }

        // GET: RolPermisoes
        public async Task<IActionResult> Index()
        {
            var construTechContext = _context.RolPermisos.Include(r => r.IdPermisoNavigation).Include(r => r.IdRolNavigation);
            return View(await construTechContext.ToListAsync());
        }

        // GET: RolPermisoes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.RolPermisos == null)
            {
                return NotFound();
            }

            var rolPermiso = await _context.RolPermisos
                .Include(r => r.IdPermisoNavigation)
                .Include(r => r.IdRolNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (rolPermiso == null)
            {
                return NotFound();
            }

            return View(rolPermiso);
        }

        // GET: RolPermisoes/Create
        public IActionResult Create()
        {
            ViewData["IdPermiso"] = new SelectList(_context.Permisos, "Id", "Id");
            ViewData["IdRol"] = new SelectList(_context.Roles, "Id", "Id");
            return View();
        }

        // POST: RolPermisoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,IdRol,IdPermiso")] RolPermiso rolPermiso)
        {
            if (ModelState.IsValid)
            {
                _context.Add(rolPermiso);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdPermiso"] = new SelectList(_context.Permisos, "Id", "Id", rolPermiso.IdPermiso);
            ViewData["IdRol"] = new SelectList(_context.Roles, "Id", "Id", rolPermiso.IdRol);
            return View(rolPermiso);
        }

        // GET: RolPermisoes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.RolPermisos == null)
            {
                return NotFound();
            }

            var rolPermiso = await _context.RolPermisos.FindAsync(id);
            if (rolPermiso == null)
            {
                return NotFound();
            }
            ViewData["IdPermiso"] = new SelectList(_context.Permisos, "Id", "Id", rolPermiso.IdPermiso);
            ViewData["IdRol"] = new SelectList(_context.Roles, "Id", "Id", rolPermiso.IdRol);
            return View(rolPermiso);
        }

        // POST: RolPermisoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,IdRol,IdPermiso")] RolPermiso rolPermiso)
        {
            if (id != rolPermiso.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(rolPermiso);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RolPermisoExists(rolPermiso.Id))
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
            ViewData["IdPermiso"] = new SelectList(_context.Permisos, "Id", "Id", rolPermiso.IdPermiso);
            ViewData["IdRol"] = new SelectList(_context.Roles, "Id", "Id", rolPermiso.IdRol);
            return View(rolPermiso);
        }

        // GET: RolPermisoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.RolPermisos == null)
            {
                return NotFound();
            }

            var rolPermiso = await _context.RolPermisos
                .Include(r => r.IdPermisoNavigation)
                .Include(r => r.IdRolNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (rolPermiso == null)
            {
                return NotFound();
            }

            return View(rolPermiso);
        }

        // POST: RolPermisoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.RolPermisos == null)
            {
                return Problem("Entity set 'ConstruTechContext.RolPermisos'  is null.");
            }
            var rolPermiso = await _context.RolPermisos.FindAsync(id);
            if (rolPermiso != null)
            {
                _context.RolPermisos.Remove(rolPermiso);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool RolPermisoExists(int id)
        {
          return (_context.RolPermisos?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}

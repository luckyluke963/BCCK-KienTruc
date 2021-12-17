using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ShopGame.Models;

namespace ShopGame.Controllers
{
    public class ProductsManagementController : Controller
    {
        private GameShopEntities db = new GameShopEntities();

        // GET: ProductsManagement
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Category).Include(p => p.Genre).Include(p => p.Model).Include(p => p.Storage).Include(p => p.User);
            return View(products.ToList());
        }

        // GET: ProductsManagement/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: ProductsManagement/Create
        public ActionResult Create()
        {
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name");
            ViewBag.GenresId = new SelectList(db.Genres, "GenresId", "Genres");
            ViewBag.ModelId = new SelectList(db.Models, "ModelId", "Model1");
            ViewBag.StorageId = new SelectList(db.Storages, "StorageId", "Storage1");
            ViewBag.UserId = new SelectList(db.Users, "UserId", "Username");
            return View();
        }

        // POST: ProductsManagement/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductId,ProductName,Image,Price,UserId,CategoryId,GenresId,ModelId,StorageId,SellStartDate,SellEndDate,IsNew")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name", product.CategoryId);
            ViewBag.GenresId = new SelectList(db.Genres, "GenresId", "Genres", product.GenresId);
            ViewBag.ModelId = new SelectList(db.Models, "ModelId", "Model1", product.ModelId);
            ViewBag.StorageId = new SelectList(db.Storages, "StorageId", "Storage1", product.StorageId);
            ViewBag.UserId = new SelectList(db.Users, "UserId", "Username", product.UserId);
            return View(product);
        }

        // GET: ProductsManagement/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name", product.CategoryId);
            ViewBag.GenresId = new SelectList(db.Genres, "GenresId", "Genres", product.GenresId);
            ViewBag.ModelId = new SelectList(db.Models, "ModelId", "Model1", product.ModelId);
            ViewBag.StorageId = new SelectList(db.Storages, "StorageId", "Storage1", product.StorageId);
            ViewBag.UserId = new SelectList(db.Users, "UserId", "Username", product.UserId);
            return View(product);
        }

        // POST: ProductsManagement/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductId,ProductName,Image,Price,UserId,CategoryId,GenresId,ModelId,StorageId,SellStartDate,SellEndDate,IsNew")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name", product.CategoryId);
            ViewBag.GenresId = new SelectList(db.Genres, "GenresId", "Genres", product.GenresId);
            ViewBag.ModelId = new SelectList(db.Models, "ModelId", "Model1", product.ModelId);
            ViewBag.StorageId = new SelectList(db.Storages, "StorageId", "Storage1", product.StorageId);
            ViewBag.UserId = new SelectList(db.Users, "UserId", "Username", product.UserId);
            return View(product);
        }

        // GET: ProductsManagement/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: ProductsManagement/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

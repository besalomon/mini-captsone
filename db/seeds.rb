Image.create!([
  {url: "https://psmedia.playstation.com/is/image/psmedia/20th-anniversary-console-two-column-01-ps4-eu-22dec14?$2ColExpand_Image$", product_id: 1},
  {url: "http://www.avadirect.com/ava-assets/img/subcategories/budget-pc-main-img.png", product_id: 19},
  {url: "http://www.samsung.com/ph/curveduhd/images/mount_stand_tv.png", product_id: 20},
  {url: "http://compass.xbox.com/assets/23/0d/230dc52a-8f0e-40bf-bbd1-c51fdb8371e3.png?n=Homepage-360-UA_Upgrade-big_1056x594.png", product_id: 2},
  {url: "http://vignette1.wikia.nocookie.net/criminal-case-grimsborough/images/b/bd/PS4.png/revision/latest?cb=20141224124624", product_id: 1},
  {url: "http://assets.sbnation.com/assets/2663289/Xbox_Console_alpha_980px.png", product_id: 2}
])
Product.create!([
  {name: "LG Gaming PC", price: "500000.0", description: "Desktop, Screen and Call of Duty Disk", in_stock: nil, supplier_id: nil},
  {name: "Xbox One", price: "400000.0", description: "Xbox One Console, Display and Power cable, Battlefield Game physical disc", in_stock: nil, supplier_id: nil},
  {name: "Samsung TV (Curved)", price: "800000.0", description: "Curved Samsung TV", in_stock: nil, supplier_id: nil},
  {name: "Playstation 4", price: "400000.0", description: "White PS4", in_stock: true, supplier_id: 1}
])
Supplier.create!([
  {name: "Murokore", email: "murokore@gmail.com", phone: "078345869"},
  {name: "Kazungu", email: "kazungu@gmail.com", phone: "0725687980"},
  {name: "Mutoni", email: "mutoni@gmail.com", phone: "0727899000"}
])
User.create!([
  {name: "Salomon Beza", email: "salomon@kepler.org", password_digest: "$2a$10$uJ1CgAt8LcgCj.OSgzXh6eLYF8Hdivc.IVkEDLLUsC.WhEGraUb8e"},
  {name: "Salomon Beza", email: "salomon@kepler.org", password_digest: "$2a$10$Kc7kdA6riLXYjoQ180WhpOsHKoYh9ODUWxEUiXTCE.24bnT17cAGS"},
  {name: "Karoli Kolokonyi", email: "karoli@kepler.org", password_digest: "$2a$10$lni51gRFAMsaKhMerlFHo.A3GGVMdAXDrlrvqakk9zm8VZypARvKu"}
])

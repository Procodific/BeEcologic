//
//  AppDelegate.swift
//  Be_Ecologic
//
//  Created by Eric García on 21/01/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy var coreDataStack = CoreDataStack()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let firstLaunch = NSUserDefaults.standardUserDefaults().boolForKey("FirstLaunch")
        
        if firstLaunch  {
        }
        else {
            
            var envases: [Envase] = []
            var materiales: [Material] = []
            var presentaciones: [Presentacion] = []
            var productos: [Producto] = []
            
            let context = coreDataStack.context
            if context as NSManagedObjectContext? != nil {
                var array_envases = [
                    (1, "Aerosol"),
                    (2, "Artículos hostelería/restauración"),
                    (3, "Bandeja, base, barqueta"),
                    (4, "Bidón, garrafa"),
                    (5, "Blister"),
                    (6, "Bolsa entregada en comercios"),
                    (7, "Bolsa, bolsón, saco"),
                    (8, "Bote, lata, tarro, frasco, vaso, tarrina"),
                    (9, "Botella"),
                    (10, "Caja, cajón, cajetilla"),
                    (11, "Cartón para bebidas/líquidos"),
                    (12, "Elementos de fijación y agrupación"),
                    (13, "Envoltorio aluminio y papel aluminio"),
                    (14, "Estuche, funda"),
                    (15, "Lámina, envoltura, etiqueta"),
                    (16, "Rodillo, mandril, bobina, carrete"),
                    (17, "Sobre, Skin pack"),
                    (18, "Tapones, tapas"),
                    (19, "Tubos, cubos, cornetes"),
                    (20, "Objetos que no son envases")
                ]
                
                var array_material = [
                    (1, "Metal"),
                    (2, "Plástico"),
                    (3, "Papel/Cartón"),
                    (4, "Vidrio"),
                    (5, "Cerámica"),
                    (6, "Madera"),
                    (7, "Cartón Bebidas"),
                    (8, "Cartón"),
                    (9, "Otros")
                ]
                
                var array_productos = [
                    (1, "Desodorante", "a1_desodorante.jpg"),
                    (2, "Insecticida", "a2_insecticida.jpg"),
                    (3, "Bolsa bocadillos y comida rapida", "a3_bolsa_bocadillos.jpg"),
                    (4, "Bandeja", "a4_bandeja.jpg"),
                    (5, "Caja de tartas", "a5_caja_tartas.jpg"),
                    (6, "Bandeja pasteles", "a6_bandeja_pasteles.jpg"),
                    (7, "Envases sandwiches", "a7_envase_sandwiches.jpg"),
                    (6, "Bandeja verduras", "a8_bandeja_verduras.jpg"),
                    (8, "Bandeja frutas", "a9_bandeja_frutas.jpg"),
                    (9, "Bandeja embutidos", "a10_embutidos.jpg"),
                    (10, "Bandeja carnes", "a11_carnes.jpg"),
                    (11, "Bandeja pescados", "a12_pescado.jpg"),
                    (12, "Bandeja quesos", "a13_queso.jpg"),
                    (13, "Bidón cerveza 5 L.", "a14_bidon_cerveza.jpg"),
                    (14, "Bidón aceite", "a15_bidon_aceite.jpg"),
                    (15, "Garrafa Agua", "a16_garrafa_agua.jpg"),
                    (16, "Vino", "a17_vino.jpg"),
                    (17, "Garrafa aceite", "a18_garrafa_aceite.jpg"),
                    (18, "Blister pilas", "a19_24_blister_pilas.jpg"),
                    (19, "Blister herramientas", "a20_blister_herramientas.jpg"),
                    (20, "Blister bolígrafos", "a21_blister_boligrafos.jpg"),
                    (21, "Blister lapiceras", "a22_blister_lapiceros.jpg"),
                    (22, "Blister productos ferretería", "a23_blister_ferreteria.jpg"),
                    (23, "Blister bombillas", "a25_blister_bombillas.jpg"),
                    (24, "Blister pilas", "a19_24_blister_pilas.jpg"),
                    (24, "Bolsa papel de comercio", "a26_bolsa_papel.jpg"),
                    (25, "Bolsa plástico de comercio", "a27_bolsa_plastico.jpg"),
                    (26, "Bolsa azúcar", "a28_bolsa_azucar.jpg"),
                    (27, "Bolsa arroz", "a29_bolsa_arroz.jpg"),
                    (28, "Patatas fritas", "a30_bolsa_papas.jpg"),
                    (29, "Bollería industrial", "a31_bolsa_bolleria.jpg"),
                    (30, "Panadería", "a32_bolsa_panaderia.jpg"),
                    (31, "Postres preparados", "a_not_found.png"),
                    (32, "Cuajada", "a_not_found.png"),
                    (33, "Lata refrescos", "a33_lata_refresco.jpg"),
                    (34, "Lata de atún", "a34_lata_atun.jpg"),
                    (35, "Lata de cerveza", "a35_lata_cerveza.jpg"),
                    (36, "Lata de aceitunas", "a36_lata_aceituna.jpg"),
                    (37, "Lata de charcutería", "a_not_found.png"),
                    (38, "Helado", "a37_bote_helado.jpg"),
                    (38, "Nata montada", "a_not_found.png"),
                    (38, "Yogurt", "a38_bote_yogurt.jpg"),
                    (38, "Mantequilla", "a39_bote_mantequilla.jpg"),
                    (38, "Queso fresco", "a_not_found.png"),
                    (38, "Queso de untar", "a40_queso_untable.jpg"),
                    (38, "Helado", "a37_bote_helado.jpg"),
                    (38, "Nata montada", "a_not_found.png"),
                    (38, "Verduras", "a42_bote_verduras.jpg"),
                    (38, "Mermeladas", "a43_bote_mermelada.jpg"),
                    (38, "Colonias", "a44_bote_colonia.jpg"),
                    (38, "Perfumes", "a45_perfume.jpg"),
                    (38, "Agua", "a46_bote_agua.jpg"),
                    (38, "Refresco", "a47_refresco.jpg"),
                    (38, "Agua", "a48_bote_vidrio_agua.jpg"),
                    (38, "Refresco", "a49_bote_vidrio_refresco.jpg"),
                    (38, "Cerveza", "a50_bote_vidrio_cerveza.jpg"),
                    (38, "Vino", "a51_bote_vidrio_vino.jpg"),
                    (38, "Cava", "a52_bote_vidrio_cava.jpg"),
                    (38, "Fruta", "a53_caja_fruta.jpg"),
                    (38, "Televisión", "a54_caja_tv.jpg"),
                    (38, "Electrodomésticos", "a55_caja_electrodomesticos.jpg"),
                    (38, "Caja de zapatos", "a56_caja_zapato.jpg"),
                    (38, "Cereales", "a57_caja_cereal.jpg"),
                    (38, "Caja de galletas", "a58_caja_galletas.jpg"),
                    (38, "Brik leche", "a59_brik_leche.jpg"),
                    (38, "Brik zumos", "a_not_found.png"),
                    (38, "Brik sopa", "a60_brik_sopa.jpg"),
                    (38, "Brik vino", "a61_brik_vino.jpg"),
                    (38, "Brik azúcar", "a_not_found.png"),
                    (38, "Latas bebidas", "a62_lata_bebidas.jpg"),
                    (38, "Pack yogures", "a63_pack_yogurt.jpg"),
                    (38, "Pack patés", "a_not_found.png"),
                    (38, "Film agrupación botellas litro refresco", "a_not_found.png"),
                    (38, "Film agrupación botellas litro agua", "a_not_found.png"),
                    (38, "Film agrupación botellas litro cerveza", "a_not_found.png"),
                    (38, "Esquineras de corcho blanco", "a_not_found.png"),
                    (38, "Pack móvil", "a_not_found.png"),
                    (38, "Envoltorio de papel aluminio", "a64_envoltura_aluminio.jpg"),
                    (38, "Queso", "a65_envoltura_queso.jpg"),
                    (38, "Queso", "a66_envoltura_queso.jpg"),
                    (38, "Charcutería", "a_not_found.png"),
                    (38, "Membrillo", "a_not_found.png"),
                    (38, "Pastas", "a67_caja_pastas.jpg"),
                    (38, "Bombones", "a68_caja_bombones.jpg"),
                    (38, "Rosquillas", "a69_caja_rosquillas.jpg"),
                    (38, "Queso", "a70_caja_queso.jpg"),
                    (38, "Salmón ahumado", "a71_salmon_ahumado.jpg"),
                    (38, "Etiquetas de ropa y textiles", "a_not_found.png"),
                    (38, "Papel higiénico", "a72_papel_higienico.jpg"),
                    (38, "Rollos cocina", "a73_papel_cocina.jpg"),
                    (38, "Carreta de hilo", "a74_carrete_hilo.jpg"),
                    (38, "Bobina de cuerda o cinta", "a_not_found.png"),
                    (38, "Sopas", "a75_sobre_sopa.jpg"),
                    (38, "Puré de patata", "a76_sobre_patata.jpg"),
                    (38, "Mermelada", "a77_tapa_mermelada.jpg"),
                    (38, "Cerveza", "a78_79_tapa_metal.jpg"),
                    (38, "Refresco", "a78_79_tapa_metal.jpg"),
                    (38, "Pasta de dientes", "a80_tapa_pasta.jpg"),
                    (38, "Leche condensada", "a81_82_83_tapa_plastico.jpg"),
                    (38, "Agua", "a81_82_83_tapa_plastico.jpg"),
                    (38, "Refresco", "a81_82_83_tapa_plastico.jpg"),
                    (38, "Pasta de Dientes", "a84_tubo_pasta.jpg"),
                    (38, "Leche Condensada", "a85_tubo_leche_condensada.jpg"),
                    (38, "Cd, caja de Cd y cinta VHS", "a86_caja_cd.jpg"),
                    (38, "Juguete de plástico en buen estado", "a_not_found.png"),
                    (38, "Juguete de plástico en mal estado", "a_not_found.png"),
                    (38, "Cubo de plástico en mal estado", "a_not_found.png"),
                    (38, "Adornos de plástico en mal estado", "a_not_found.png")
                ]
                
                
                var e: NSError?
                
                // Insertando todas las entidades Envases
                for (envaseIdEnvase, envaseNombre) in array_envases {
                    
                    // Inserta nueva entidad Envase
                    let envase = NSEntityDescription.insertNewObjectForEntityForName("Envase", inManagedObjectContext: context) as Envase
                    
                    envase.idEnvase = envaseIdEnvase
                    envase.nombre = envaseNombre
                    
                    envases.append(envase)
                    
                    if context.save(&e) != true {
                        println("insert error: \(e!.localizedDescription)")
                    }
                }
                
                // Creando materiales
                for (materialIdMaterial, materialNombre) in array_material {
                    let material = NSEntityDescription.insertNewObjectForEntityForName("Material", inManagedObjectContext: context) as Material
                    
                    material.idMaterial = materialIdMaterial
                    material.nombre = materialNombre
                    
                    materiales.append(material)
                    
                    if context.save(&e) != true {
                        println("insert error: \(e!.localizedDescription)")
                    }
                }
                
                // Creando productos
                for (idProducto, productoNombre, productoImagen) in array_productos {
                    let producto = NSEntityDescription.insertNewObjectForEntityForName("Producto", inManagedObjectContext: context) as Producto
                    
                    let image = UIImage(named: productoImagen)
                    
                    producto.idProducto = idProducto
                    producto.nombre = productoNombre
                    producto.imagenData = UIImageJPEGRepresentation(image, 1.0)
                    
                    
                    productos.append(producto)
                    
                    if context.save(&e) != true {
                        println("insert error: \(e!.localizedDescription)")
                    }
                }
            }
            
            if context as NSManagedObjectContext? != nil {
                
                var array_presentacion = [
                    (1),
                    (2),
                    (3),
                    (4),
                    (5),
                    (6),
                    (7),
                    (8),
                    (9),
                    (10),
                    (11),
                    (12),
                    (13),
                    (14),
                    (15),
                    (16),
                    (17),
                    (18),
                    (19),
                    (20),
                    (21),
                    (22),
                    (23),
                    (24),
                    (25),
                    (26)
                ]
                
                for (idPresentacion) in array_presentacion {
                    let presentacion = NSEntityDescription.insertNewObjectForEntityForName("Presentacion", inManagedObjectContext: context) as Presentacion
                    
                    presentacion.idPresentacion = idPresentacion
                    
                    presentaciones.append(presentacion)
                    
                    var e: NSError? = nil
                    if context.save(&e) != true {
                        println("insert error: \(e!.localizedDescription)")
                    }

                }
                
                var presentaciones_envase: NSMutableSet
                var presentaciones_material: NSMutableSet
                var productos_presentacion: NSMutableSet
                
                
                // Presentacion 1
                presentaciones_envase = envases[0].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[0].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[0].productos.mutableCopy() as NSMutableSet
                
                
                presentaciones_envase.addObject(presentaciones[0])
                presentaciones_material.addObject(presentaciones[0])
                productos_presentacion.addObject(productos[0])
                productos_presentacion.addObject(productos[1])
                
                envases[0].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[0].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[0].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 2
                presentaciones_envase = envases[1].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[2].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[1].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[1])
                presentaciones_material.addObject(presentaciones[1])
                productos_presentacion.addObject(productos[2])
                productos_presentacion.addObject(productos[3])
                productos_presentacion.addObject(productos[4])
                
                envases[1].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[2].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[1].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 3
                presentaciones_envase = envases[2].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[2].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[2])
                presentaciones_material.addObject(presentaciones[2])
                productos_presentacion.addObject(productos[6])
                productos_presentacion.addObject(productos[7])
                productos_presentacion.addObject(productos[8])
                productos_presentacion.addObject(productos[9])
                productos_presentacion.addObject(productos[10])
                productos_presentacion.addObject(productos[11])
                productos_presentacion.addObject(productos[12])
                
                envases[2].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[2].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 4
                presentaciones_envase = envases[2].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[2].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[3].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[3])
                presentaciones_material.addObject(presentaciones[3])
                productos_presentacion.addObject(productos[5])
                
                envases[2].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[2].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[3].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 5
                presentaciones_envase = envases[3].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[0].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[4].productos.mutableCopy() as NSMutableSet

                presentaciones_envase.addObject(presentaciones[4])
                presentaciones_material.addObject(presentaciones[4])
                productos_presentacion.addObject(productos[13])
                productos_presentacion.addObject(productos[14])
                
                envases[3].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[0].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[4].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 6
                presentaciones_envase = envases[3].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[5].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[5])
                presentaciones_material.addObject(presentaciones[5])
                productos_presentacion.addObject(productos[15])
                productos_presentacion.addObject(productos[16])
                productos_presentacion.addObject(productos[17])
                
                envases[3].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[5].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 7
                presentaciones_envase = envases[4].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[6].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[6])
                presentaciones_material.addObject(presentaciones[6])
                productos_presentacion.addObject(productos[18])
                productos_presentacion.addObject(productos[19])
                productos_presentacion.addObject(productos[20])
                productos_presentacion.addObject(productos[21])
                productos_presentacion.addObject(productos[22])
                productos_presentacion.addObject(productos[23])
                
                envases[4].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[6].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 8
                presentaciones_envase = envases[4].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[2].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[7].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[7])
                presentaciones_material.addObject(presentaciones[7])
                productos_presentacion.addObject(productos[24])
                
                envases[4].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[2].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[7].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 9
                presentaciones_envase = envases[5].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[8].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[8])
                presentaciones_material.addObject(presentaciones[8])
                productos_presentacion.addObject(productos[26])
                
                envases[5].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[8].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 10
                presentaciones_envase = envases[5].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[2].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[9].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[9])
                presentaciones_material.addObject(presentaciones[9])
                productos_presentacion.addObject(productos[25])
                
                envases[5].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[2].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[9].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 11
                presentaciones_envase = envases[6].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[10].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[10])
                presentaciones_material.addObject(presentaciones[10])
                productos_presentacion.addObject(productos[29])
                productos_presentacion.addObject(productos[30])
                productos_presentacion.addObject(productos[31])
                
                envases[6].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[10].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 12
                presentaciones_envase = envases[6].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[2].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[11].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[11])
                presentaciones_material.addObject(presentaciones[11])
                productos_presentacion.addObject(productos[27])
                productos_presentacion.addObject(productos[28])
                
                envases[6].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[2].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[11].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 13 Bote + Metal
                presentaciones_envase = envases[7].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[0].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[12].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[12])
                presentaciones_material.addObject(presentaciones[12])
                productos_presentacion.addObject(productos[34])
                productos_presentacion.addObject(productos[35])
                productos_presentacion.addObject(productos[36])
                productos_presentacion.addObject(productos[37])
                productos_presentacion.addObject(productos[38])
                
                envases[7].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[0].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[12].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 14 Bote + Plastico
                presentaciones_envase = envases[7].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[13].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[13])
                presentaciones_material.addObject(presentaciones[13])
                productos_presentacion.addObject(productos[41])
                productos_presentacion.addObject(productos[42])
                productos_presentacion.addObject(productos[43])
                productos_presentacion.addObject(productos[44])
                productos_presentacion.addObject(productos[45])
                productos_presentacion.addObject(productos[46])
                
                envases[7].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[13].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 15 Bote + Papel
                presentaciones_envase = envases[7].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[2].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[14].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[14])
                presentaciones_material.addObject(presentaciones[14])
                productos_presentacion.addObject(productos[39])
                productos_presentacion.addObject(productos[40])
                
                envases[7].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[2].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[14].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 16 Bote + Vidrio
                presentaciones_envase = envases[7].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[3].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[15].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[15])
                presentaciones_material.addObject(presentaciones[15])
                productos_presentacion.addObject(productos[47])
                productos_presentacion.addObject(productos[48])
                productos_presentacion.addObject(productos[49])
                productos_presentacion.addObject(productos[50])
                
                envases[7].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[3].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[15].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 17 Bote + Ceramica
                presentaciones_envase = envases[7].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[4].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[16].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[16])
                presentaciones_material.addObject(presentaciones[16])
                productos_presentacion.addObject(productos[32])
                productos_presentacion.addObject(productos[33])
                
                envases[7].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[4].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[16].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 18 Botella + plásticos
                presentaciones_envase = envases[8].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[17].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[17])
                presentaciones_material.addObject(presentaciones[17])
                productos_presentacion.addObject(productos[51])
                productos_presentacion.addObject(productos[52])
                
                envases[8].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[17].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 19 Botella + vidrio
                presentaciones_envase = envases[8].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[3].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[18].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[18])
                presentaciones_material.addObject(presentaciones[18])
                productos_presentacion.addObject(productos[53])
                productos_presentacion.addObject(productos[54])
                productos_presentacion.addObject(productos[55])
                productos_presentacion.addObject(productos[56])
                productos_presentacion.addObject(productos[57])
                
                envases[8].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[3].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[18].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 20 Caja + Papel Cartón
                presentaciones_envase = envases[9].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[1].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[19].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[19])
                presentaciones_material.addObject(presentaciones[19])
                productos_presentacion.addObject(productos[59])
                productos_presentacion.addObject(productos[60])
                productos_presentacion.addObject(productos[61])
                productos_presentacion.addObject(productos[62])
                productos_presentacion.addObject(productos[63])
                
                envases[9].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[1].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[19].productos = productos_presentacion.copy() as NSSet
                
                // Presentacion 21 Caja + Madera
                presentaciones_envase = envases[9].presentaciones.mutableCopy() as NSMutableSet
                presentaciones_material = materiales[5].presentaciones.mutableCopy() as NSMutableSet
                productos_presentacion = presentaciones[20].productos.mutableCopy() as NSMutableSet
                
                presentaciones_envase.addObject(presentaciones[20])
                presentaciones_material.addObject(presentaciones[20])
                productos_presentacion.addObject(productos[58])
                
                envases[9].presentaciones = presentaciones_envase.copy() as NSSet
                materiales[5].presentaciones = presentaciones_material.copy() as NSSet
                presentaciones[20].productos = productos_presentacion.copy() as NSSet
                
                /*
                1, "Metal"
                2, "Plástico"
                3, "Papel/Cartón"
                4, "Vidrio"
                5, "Cerámica"
                6, "Madera"
                7, "Cartón Bebidas"
                8, "Cartón"
                9, "Otros
                */
                
                var e: NSError?
                
                if context.save(&e) != true {
                    println("insert error: \(e!.localizedDescription)")
                }
            
            }
            
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "FirstLaunch")
        }
        
        return true
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        coreDataStack.saveContext()
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        coreDataStack.saveContext()
    }

}


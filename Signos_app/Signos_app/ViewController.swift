//
//  ViewController.swift
//  Signos_app
//
//  Created by Jefferson Oliveira de Araujo on 23/10/21.
//

import UIKit

class ViewController: UITableViewController {
    
    private var signsList: [Signs] = []
    let constant: Constants = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSigns()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: constant.identifierCell, for: indexPath)
        cell.imageView?.image = signsList[indexPath.row].imageSign
        cell.textLabel?.text = signsList[indexPath.row].sign        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: signsList[indexPath.row].sign, message: signsList[indexPath.row].description, preferredStyle: .alert)
        
        let alertConfirm = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertConfirm)
        
        present(alertController, animated: true, completion: nil)
//        print(signsList[indexPath.row].description)
    }
    
    func dataSigns() {
        signsList = [
            Signs(sign: "Áries", description: "Os arianos são definidos por sua força, impulsividade e impetuosidade. Eles não refletem ou pensam antes de agir e isso fica muito claro em uma pequena discussão com os nativos desse signo. Os arianos “atiram primeiro, perguntam depois”.", imageSign: UIImage(named: "ic_aries")),
            Signs(sign: "Touro", description: "Os taurinos, em síntese, são fortes e muito teimosos e, mais do que isso, eles são muito ciumentos e protetores. E a fama de gulosos? Sim, os taurinos são apreciadores de boa comida e conforto. Todo mundo gosta, mas eles um pouco mais. Não por acaso são muito decididos e persistentes para conseguir o que almejam.", imageSign: UIImage(named: "ic_touro")),
            Signs(sign: "Gêmeos", description: "Um dos signos mais imprevisíveis do zodíaco, é o de Gêmeos. Com a fama de duas caras, esse signo tende a ser muito volúvel, mudando de opinião com muita felicidade. Então, na prática você nunca sabe o que pode esperar deles. Eles são um pouco pavio curto, porém, gostam de viver grandes aventuras e cultivam um bom humor nato.", imageSign: UIImage(named: "ic_gemeos")),
            Signs(sign: "Câncer", description: "Os mais dramáticos do zodíaco. Não por acaso os cancerianos são muito sensíveis e emotivos, por isso, dão muito valor a intimidade e ao carinho. São caseiros por natureza e tem como epicentro a família. Eles fazem amizade com muita facilidade, porém, eles são bastante instáveis. Além disso, os cancerianos tem uma personalidade muito materna, e estão sempre cuidando de todos ao seu redor.", imageSign: UIImage(named: "ic_cancer")),
            Signs(sign: "Leão", description: "Os leoninos gostam de chamar a atenção mesmo, pois eles vieram para tomar o lugar que é deles “por direito”. São pessoas fortes, que presam a liberdade e são extravagantes por natureza. Mas, apesar de serem muito comunicativos e abertos, eles possuem muita insegurança. Além disso, eles sabem ser amáveis e muito leais. Os leoninos prezam muito por serem exaltados, e a supervalorização de si mesmo é um ponto marcante desse signo.", imageSign: UIImage(named: "ic_leao")),
            Signs(sign: "Virgem", description: "Virgem é sinônimo de organização e padrões, o que é bom mas pode incomodar um pouco o restante do zodíaco. O virginiano é um signo que nasceu para o sucesso, e ele fará de tudo para conquistar tudo aquilo que deseja, custe o que custar. Eles costumam ser rígidos com eles mesmos e com quem está a sua volta, cobrando muito, até mesmo por serem extremamente perfeccionistas. Mas não se engane, eles são muito tímidos.", imageSign: UIImage(named: "ic_virgem")),
            Signs(sign: "Libra", description: "O libriano evita conflito o máximo que pode, buscando sempre a imparcialidade quando se mete em um debate. São diplomatas natos, tendo a capacidade de intervir entre dois pontos de vista opostos. Eles possuem uma dificuldade muito grande de conseguir fazer escolhas, carregando uma fama de indecisos por isso.", imageSign: UIImage(named: "ic_libra")),
            Signs(sign: "Escorpião", description: "O escorpião é o signo mais determinado do zodíaco, indo até as última consequências para alcançar aquilo que deseja. Com uma personalidade forte, os nativos desse signo tendem a ser pessoas bastante geniosas e meticulosas. Mas, principalmente teimosas. São do tipo que valorizam muito a sua própria opinião.", imageSign: UIImage(named: "ic_escorpiao")),
            Signs(sign: "Sagitário", description: "Os sagitarianos, em suma, são pessoas que estão sempre com um sorriso no rosto, buscando o que a de melhor na vida. Desse modo, são muito engraçados e tendem a arrancar um sorriso de todo mundo que encontrar.", imageSign: UIImage(named: "ic_sagitario")),
            Signs(sign: "Capricórnio", description: "O capricorniano, por outro lado, pode até parecer uma fechado e meio antipático. Mas ele só é tímido. Então, entre as principais características desse signo, podemos dizer que ele é muito trabalhador e determinado. Além disso, sua vida profissional é muito importante para ele.", imageSign: UIImage(named: "ic_capricornio")),
            Signs(sign: "Aquário", description: "O aquariano é um ser independente, que preza muito por sua liberdade. Aliás, a busca por liberdade é sua principal característica, juntamente com a rebeldia. São muito inteligentes e idealistas. Também apreciam arte e cultura, sendo pessoas muito criativas e desapegadas.", imageSign: UIImage(named: "ic_aquario")),
            Signs(sign: "Peixes", description: "Peixes é o signo mais adorável do zodíaco. Os piscianos são pessoas encantadoras, charmosas, sonhadoras e gentis. Contudo, um tanto quanto carente. São bondosos e gostam de ajudar, além de serem muito espiritualizados.", imageSign: UIImage(named: "ic_peixes")),
        ]
    }


}


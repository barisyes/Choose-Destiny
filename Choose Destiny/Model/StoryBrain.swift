//
//  StoryBrain.swift
//  Choose Destiny
//
//  Created by Barış Yeşilkaya on 3.07.2022.
//

import Foundation

struct StoryBrain{
    let story = [
        Story(text: "Baban devlet için çalışan bir ajandı. Görev esnasında öldü. Ne yapacaksın ?", choice1: "Olayı araştır.", choice1Destination: 1, choice2: "İntikam. Ajan olmak için başvur.", choice2Destination: 2),
        Story(text: "Polis memuru olayla ilgili detay verdi!", choice1: "Olay yerine git.", choice1Destination: 4, choice2: "İntikam! Polisliğe başvur.", choice2Destination: 3),
        Story(text: "Başarılı olmana rağmen elendin.", choice1: "Şüphelendin. Babanın olayını araştır.", choice1Destination: 1, choice2: "Vazgeçme. Polisliğe başvur.", choice2Destination: 3),
        Story(text: "Polis oldun. Babanın dosyasına baktın. Pek detay yok. Bir mafya ismi var.", choice1: "Olay yerini araştır.", choice1Destination: 4, choice2: "Mafya dosyasına bak.", choice2Destination: 5),
        Story(text: "Olayı gören bir esnaf: Otelin çatısından düştü. Boynunda kıpkırmızı bir vardı.", choice1: "Otel çalışanları ile konuş.", choice1Destination: 7, choice2: "Babanın iş arkadaşına git.", choice2Destination: 6),
        Story(text: "Şehrin en büyük uyuşturucu mafyası.", choice1: "Mafyayı araştır.", choice1Destination: 8, choice2: "Mafya elemanı bul.", choice2Destination: 9),
        Story(text: "Olayın karanlık taraflarının olduğunu söyledi. 5dk sonra şüpheli bir şekilde araba çarptı.", choice1: "ÖLDÜN!!!", choice1Destination: 0, choice2: "ÖLDÜN!!!", choice2Destination: 0),
        Story(text: "Kayıtlara devlet el koymuş.", choice1: "Şahit var mı?", choice1Destination: 11, choice2: "Devletten kayıtları iste.", choice2Destination: 10),
        Story(text: "Mafyada tanıdık birini buldun.", choice1: "Olayı anlat.", choice1Destination: 12, choice2: "Tehdit et.", choice2Destination: 13),
        Story(text: "Bir üye buldun. Takip ettin bir sokağa girdi.", choice1: "Takip et. Böcek yerleştir.", choice1Destination: 16, choice2: "Tehdit et. Mekan iste.", choice2Destination: 13),
        Story(text: "Şüpheli bir şekilde trafik kazası geçirdin.", choice1: "ÖLDÜN!!!", choice1Destination: 0, choice2: "ÖLDÜN!!!", choice2Destination: 0),
        Story(text: "Otel çalışanlarından kimse görmemiş ama olaydan sonra rapor alıp işe gelmeyen biri var.", choice1: "Babanın iş arkadaşına git.", choice1Destination: 6, choice2: "Çalışanın evine git.", choice2Destination: 14),
        Story(text: "Mafyanın ilgisi yok. O esnada büyük bir teslimat var.", choice1: "Olay yerini araştır.", choice1Destination: 4, choice2: "Böcek yerleştir.", choice2Destination: 16),
        Story(text: "Mafya üyesi yanlış yer verdi. Pusuya düşürüldün.", choice1: "ÖLDÜN!!!", choice1Destination: 0, choice2: "ÖLDÜN!!!", choice2Destination: 0),
        Story(text: "Otel çalışanı kapıyı açtı.", choice1: "Babanın ölümünü sor.", choice1Destination: 18, choice2: "Babanın ölümünü sor.", choice2Destination: 18),
        Story(text: "Öldürdün ve yakalandın.", choice1: "HAPİS!!!", choice1Destination: 0, choice2: "HAPİS!!!", choice2Destination: 0),
        Story(text: "Haklı çıktı.", choice1: "Tekrar konuş.", choice1Destination: 17, choice2: "Olay yerini araştır.", choice2Destination: 4),
        Story(text: "Yanındaki adam polis olduğunu anladı.", choice1: "ÖLDÜN!!!", choice1Destination: 0, choice2: "ÖLDÜN!!!", choice2Destination: 0),
        Story(text: "Telefondan videoyu gösterdi. Babanı iş arkadaşı öldürmüş.", choice1: "Öldür.", choice1Destination: 15, choice2: "Silahla tehdit et kayıda al.", choice2Destination: 19),
        Story(text: "Baban narkotik şube, istihbarat ve mafya ilişkisini açıklayacakken öldürüldü. Basına yaydın.", choice1: "SUÇLULAR HAPİSTE!!!", choice1Destination: 0, choice2: "SUÇLULAR HAPİSTE!!!", choice2Destination: 0)
    ]
    
    var storyNumber = 0
    
    func getTextTitle() -> String{
        return story[storyNumber].text
    }
    
    func getButton1Text() -> String{
        return story[storyNumber].choice1
    }
    
    func getButton2Text() -> String{
        return story[storyNumber].choice2
    }
    
    mutating func checkAnswer(_ userAnswer: String){
        if userAnswer == story[storyNumber].choice1{
            storyNumber = story[storyNumber].choice1Destination
        } else {
            storyNumber = story[storyNumber].choice2Destination
        }
    }
}

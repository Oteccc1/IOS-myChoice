//
//  CalcHealth.swift
//  My choice
//
//  Created by MacOS on 17.11.2022.
//

import Foundation


func calcHealth() -> Array<String>{
    var sp: Array<String> = []
    let countDayFromStart = UserDefaults.standard.integer(forKey: "DaysFromStart")
    if countDayFromStart == 0{
        sp = ["Нормализуется частота сердечных сокращений, начинает снижаться артериальное давление и улучшаться кровообращение.",
              "Организм избавляется от избытка монооксида углерода (угарного газа), нормализуется уровень углекислого газа в крови, улучшается снабжение тканей кислородом. Этот процесс был нарушен из-за постоянного поступления в легкие сигаретного дыма, содержащего токсичные газы.",
              "Ученые выявили, что за этот период уже снижается риск развития инфаркта. Это связано с нормализацией артериального давления и улучшением кислородного обмена. Человеку становится легче выполнять упражнения и переносить физическую нагрузку."]
    }
    else if countDayFromStart == 1{
        sp = ["Вы можете ощутить, что вкусы и запахи стали ярче, так как восстанавливаются поврежденные сигаретным дымом нервные окончания.",
              "Организм все еще избавляется от избытка монооксида углерода (угарного газа), нормализуется уровень углекислого газа в крови, улучшается снабжение тканей кислородом. Этот процесс был нарушен из-за постоянного поступления в легкие сигаретного дыма, содержащего токсичные газы.", "Нормализация артериального давления и улучшение кислородного обмена все еще происходит."]
    }
    else if countDayFromStart == 2{
        sp = ["Запасы никотина в организме истощаются, человек становится капризным, раздражительным, может возникать сильная головная боль, но это все — признаки восстановления организма, утверждают исследователи.", "Вы можете ощутить, что вкусы и запахи стали ярче, так как восстанавливаются поврежденные сигаретным дымом нервные окончания.",
              "Организм все еще избавляется от избытка монооксида углерода (угарного газа), нормализуется уровень углекислого газа в крови, улучшается снабжение тканей кислородом. Этот процесс был нарушен из-за постоянного поступления в легкие сигаретного дыма, содержащего токсичные газы."]
    }
    else if countDayFromStart > 2 && countDayFromStart < 30{
        sp = ["Доказано, что к этому времени восстанавливается нормальное функционирование легких, уменьшается выраженность кашля и одышки. Одновременно повышается физическая выносливость организма.", "Кровообращение в деснах и зубах приближается к уровню кровообращения человека, который никогда не курил.", "Кислородный обмен продолжает улучшаться.", "Хронический кашель постепенно пропадает."]
    }
    else if countDayFromStart > 30 && countDayFromStart < 90{
        sp = ["Ваше общее состояние значительно улучшилось. Дышать стало легче, хронический кашель, если таковой имелся, скорее всего исчез, иначе стоит обратиться к врачу", "Риск сердечного приступа значительно снизился. Одновременно повышается физическая выносливость организма.", "Кровообращение в деснах и зубах приблизилось к уровню кровообращения человека, который никогда не курил.", "Кислородный обмен пришел в норму."]
    }
    else if countDayFromStart > 90 && countDayFromStart < 360{
        sp = ["Усталость и отдышка уменьшились", "Легкие чисты от инфекции", "Общая энергия вашего тела увеличилась"]
    }
    
    return sp
}

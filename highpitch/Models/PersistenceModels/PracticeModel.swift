//
//  PracticeModel.swift
//  highpitch
//
//  Created by 이재혁 on 10/17/23.
//

import Foundation
import SwiftData

@Model
class PracticeModel {
    var practiceName: String
    var index: Int
    var isVisited: Bool
    var creatAt: String
    var audioPath: URL?
    @Relationship(deleteRule: .cascade) var utterances: [UtteranceModel]
    @Relationship(deleteRule: .cascade) var words: [WordModel]
    @Relationship(deleteRule: .cascade) var sentences: [SentenceModel]
    var summary: PracticeSummaryModel
    
    init(
        practiceName: String,
        index: Int,
        isVisited: Bool,
        creatAt: String,
        audioPath: URL? = nil,
        utterances: [UtteranceModel],
        words: [WordModel] = [],
        sentences: [SentenceModel] = [],
        summary: PracticeSummaryModel
    ) {
        self.practiceName = practiceName
        self.index = index
        self.isVisited = isVisited
        self.creatAt = creatAt
        self.audioPath = audioPath
        self.utterances = utterances
        self.words = words
        self.sentences = sentences
        self.summary = summary
    }
}

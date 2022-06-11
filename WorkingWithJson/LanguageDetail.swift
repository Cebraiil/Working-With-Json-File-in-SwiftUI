//
//  LanguageDetail.swift
//  WorkingWithJson
//
//  Created by Abdul Adl on 11.06.2022.
//

import SwiftUI

struct LanguageDetail: View {
    let language: Language
    var body: some View {
        Text(language.website)
            .font(.largeTitle)
    }
}

struct LanguageDetail_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDetail(language: Language(name: "", website: ""))
    }
}

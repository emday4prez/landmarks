//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Emerson Day on 3/27/25.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack{
                Spacer()
                EditButton()
            }
            ProfileSummary(profile: modelData.profile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}

//
//  ContentView.swift
//  Workshop
//
//  Created by Anum Mian on 18/10/2023.
//

import SwiftUI
import LoremSwiftum

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(1..<10) { num in
                    ZStack {
                        HStack(spacing: 20) {
                            Image("person\(num)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .foregroundColor(.gray)
                                .clipShape(.circle)

                            VStack(alignment: .leading) {
                                Text(Lorem.fullName)
                                    .fontWeight(.heavy)

                                Text("0780897677\(num)")
                            }

                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .listStyle(.plain)
            .padding(.horizontal, 10)
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

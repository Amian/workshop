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
            ScrollView {
                ForEach(1..<10) { num in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        NavigationLink() {
                            DetailView(personId: num)
                        } label: {
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
                                        .foregroundStyle(.black)

                                    Text("0780897677\(num)")
                                        .foregroundStyle(.gray)
                                }

                                Spacer()
                            }
                            .padding()
                            .frame(maxWidth: .infinity)

                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, 10)
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
            .scrollClipDisabled(true)
            .scrollIndicators(.hidden)
        }
    }
}

struct DetailView: View {
    var personId: Int
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .indigo, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 20) {

                Image("person\(personId)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(.circle)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                VStack(spacing: 30) {
                    Text(Lorem.fullName)
                        .font(.title)
                        .fontWeight(.bold)

                    Text("0780198897")

                    HStack() {

                        Button {

                        } label: {
                            Image(systemName: "message")
                        }
                        .foregroundColor(.black)
                        .padding(25)
                        .background(.ultraThickMaterial)
                        .clipShape(.circle)

                        Button {

                        } label: {
                            Image(systemName: "phone")
                        }
                        .foregroundColor(.black)
                        .padding(25)
                        .background(.ultraThickMaterial)
                        .clipShape(.circle)

                        Button {

                        } label: {
                            Image(systemName: "pencil")
                        }
                        .foregroundColor(.black)
                        .padding(25)
                        .background(.ultraThickMaterial)
                        .clipShape(.circle)
                    }

                    Text(Lorem.sentence)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal ,15)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background {

                    RoundedRectangle(cornerRadius: 50)
                        .foregroundStyle(.ultraThinMaterial)
                        .shadow(radius: 70)
                        .ignoresSafeArea(edges: .bottom)
                }
            }
        }
    }
}

#Preview {
    DetailView(personId: 1)
}

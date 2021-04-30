//
//  MovieInspectorApp.swift
//  SwiftUI-MoviesOMDB
//
//  Created by Rex Karnufex on 4/29/21.
//

import SwiftUI

@main
// App definition for the Movie Inspector App.
struct MovieInspectorApp: App {
    // Environmental root level View Model for the main view.
    @StateObject var filmListViewModel: FilmListViewModel

    // Constructs the app including the root View Model as a 'State' object.
    init() {
        let viewModel = FilmListViewModel()
        _filmListViewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some Scene {
        WindowGroup {
            FilmListView()
                .environmentObject(filmListViewModel)
        }
    }
}

//
//  WebViewCtxMenusApp.swift
//  WebViewCtxMenus
//

// Short example to demo basics of new WebView API in OS 26+

// TODO: - Add a mobileViewForRepresentation wrapped in UIViewRepresentable, a Controller, Delegate for interaction, etc

import SwiftUI

@main
struct WebViewCtxMenusApp: App {
	var body: some Scene {
		WindowGroup {
			if let exampleUrl = URL(string: "https://www.google.com/")
			{
#if os(ios)
				mobileView(exUrl: exampleUrl)
				//
#elseif os(macOS)
				macView(exUrl: exampleUrl)
#endif
			}
			else {
				ContentUnavailableView("URL Machine Broke...", systemImage: "")
			}
		}
	}
}

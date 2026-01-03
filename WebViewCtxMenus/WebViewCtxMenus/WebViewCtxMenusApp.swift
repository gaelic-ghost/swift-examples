//
//  WebViewCtxMenusApp.swift
//  WebViewCtxMenus
//

// Short example to demo ctx menu stuff for WebView API in OS 26+
// Might clean this up and expand to include the UIKit/WKWebView option for doing this on iOS until WebView functionality is even across platforms.

// TODO: - Add a mobileViewForRepresentation wrapped in UIViewRepresentable, a Controller, Delegate for interaction, etc if needed for follow-up

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

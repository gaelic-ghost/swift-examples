//
//  mobileView.swift
//  WebViewCtxMenus
//

import SwiftUI
import WebKit

// WILL NOT BUILD
// Example of functionality yet unavailable for iOS as of v26

struct mobileView: View {
	// This gets passed in from the parent view...
	let exUrl: URL
	// This is a bit of local state for just this view below
	@State private var isAlertShowing: Bool = false
	
	var body: some View {
		
		WebView(url: exUrl)
			.webViewContextMenu { elementLink in
				Menu("Ctx Menu") {
					Button("Show a thing!") {
						isAlertShowing = true
					}
					Button("Do the same thing!") {
						isAlertShowing = true
					}
				}
			}
	}
}

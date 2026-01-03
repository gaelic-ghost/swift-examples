//
//  macView.swift
//  WebViewCtxMenus
//

import SwiftUI
import WebKit

struct macView: View {
	// This URL gets passed in from the parent view, so this is a sort of placeholder for it...
	let exUrl: URL
	// This is a bit of local state for just this view. I've set it to false by default.
	@State private var isAlertShowing: Bool = false
	
	var body: some View {
		
		// This is just a rregular WebView, and I've given it that URL from before to load itself a webpage from.
		WebView(url: exUrl)
		// This "View Modifier" here is used to supply a ContextMenu to the WebView whenever the user long-presses or right-clicks something
			.webViewContextMenu { elementLink in
				// That "elementLink" above, that's the link for whatever the user long-pressed or right-clicked on to effectively "ask for" the context menu.
				// We can use that elementLink down here if we'd like, but I haven't for this example.
				
				// This is where we build the ContextMenu that will be given back to the WebView anytime said WebView calls and asks for it.
				// I built it here with a litle "inner menu" but you could just build it out of top-level Buttons, or any other items that work with a SwiftUI Menu...
				Menu("Ctx Menu") {
					// This String here that I pass into the Button is used to generate the Label for it.
					Button("Show a thing!") {
						// And this is where we write the code that "does something" if the user presses it. Herre I've just set it up to change a variable that could then cause an Alert to be shown.
						isAlertShowing = true
					}
					Button("Do the same thing!") {
						isAlertShowing = true
					}
				}
			}
		// This is where I could add a popover or whatever to display an alert based on the value of isAlertShowing, but I've not done that here.
	}
}

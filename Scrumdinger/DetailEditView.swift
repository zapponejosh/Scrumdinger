//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Josh Zappone on 1/24/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title", text: $data.title)
                HStack{
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                        Text("Length") // for voiceover
                    }
                    .accessibilityValue("\(Int(data.lengthInMinutes)) minutes")
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $data.Theme)
            }
                Section(header: Text("Attendees")) {
                    ForEach(data.attendees) { attendee in
                        Text(attendee.name)
                    }
                    .onDelete { indicies in
                        data.attendees.remove(atOffsets: indicies)
                    }
                    HStack {
                        TextField("New Attendee", text: $newAttendeeName)
                        Button(action: {
                            withAnimation {
                                let attendee = DailyScrum.Attendee(name: newAttendeeName)
                                data.attendees.append(attendee)
                                newAttendeeName = ""
                            }
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .accessibilityLabel("Add attendee")
                        }
                        .disabled(newAttendeeName.isEmpty)
                    }
                }
            
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
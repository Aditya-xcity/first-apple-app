// Question: SwiftUI Tap-Based Attendance Marker App UI
/*
Name - ADITYA BHARDWAJ
Section - D2
Roll No - 07
Course – B TECH
Branch – CSE
*/

import SwiftUI

struct AttendanceMarkerView: View {
    
    enum AttendanceStatus: String {
        case present = "Present"
        case absent = "Absent"
        case late = "Late"
    }
    
    @State private var selectedStatus: AttendanceStatus? = nil
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text("Attendance Marker")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Tap to mark your attendance")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            VStack(spacing: 20) {
                
                attendanceButton(
                    title: "Present",
                    color: .green,
                    status: .present
                )
                
                attendanceButton(
                    title: "Absent",
                    color: .red,
                    status: .absent
                )
                
                attendanceButton(
                    title: "Late",
                    color: .orange,
                    status: .late
                )
            }
            
            if let status = selectedStatus {
                Text("Marked as: \(status.rawValue)")
                    .font(.headline)
                    .padding()
            }
            
            Spacer()
        }
        .padding()
    }
    
    func attendanceButton(
        title: String,
        color: Color,
        status: AttendanceStatus
    ) -> some View {
        Button(action: {
            selectedStatus = status
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(color)
                .cornerRadius(12)
        }
    }
}

#Preview {
    AttendanceMarkerView()
}

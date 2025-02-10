import SwiftUI
import MapKit

struct MapView: View {
    @State private var hello = false
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.5497, longitude: 127.0368), // 성수역
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    
    struct Location: Identifiable {
        var id = UUID() // This makes it conform to Identifiable
        let name: String
        let coordinate: CLLocationCoordinate2D
    }
    
    let locations = [
        Location(name: "성수역", coordinate: CLLocationCoordinate2D(latitude: 37.5497, longitude: 127.0368)),
        Location(name: "뚝섬역", coordinate: CLLocationCoordinate2D(latitude: 37.5504, longitude: 127.0811)),
        Location(name: "왕십리역", coordinate: CLLocationCoordinate2D(latitude: 37.5632, longitude: 127.0395)),
        Location(name: "신답역", coordinate: CLLocationCoordinate2D(latitude: 37.5648, longitude: 127.0515)),
        Location(name: "건대입구역", coordinate: CLLocationCoordinate2D(latitude: 37.5406, longitude: 127.0726)),
        Location(name: "서울숲", coordinate: CLLocationCoordinate2D(latitude: 37.5475, longitude: 127.0386)),
        Location(name: "한양대학교", coordinate: CLLocationCoordinate2D(latitude: 37.5546, longitude: 127.0477)),
        Location(name: "뚝섬유원지", coordinate: CLLocationCoordinate2D(latitude: 37.5460, longitude: 127.0754)),
        Location(name: "서울과학기술대학교", coordinate: CLLocationCoordinate2D(latitude: 37.5645, longitude: 127.0875)),
        Location(name: "커먼그라운드", coordinate: CLLocationCoordinate2D(latitude: 37.5490, longitude: 127.0897))
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image(icon: .mainIcon)
                    .resizable()
                    .frame(width: 80, height: 32)
                    .padding()
                
                Text("힐링을 찾아 여행해보세요!")
                    .font(.system(size: 20, weight: .bold))
            }
            
            Map(coordinateRegion: $region, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Recommend()
                    } label: {
                        Image(.mapCon)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                }
            }
            .overlay {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Button {
                            hello = true
                        } label: {
                            ZStack {
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                            }
                        }
                    }
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationDestination(isPresented: $hello) {
            Spoon()
        }
    }
}

#Preview {
    MapView()
}

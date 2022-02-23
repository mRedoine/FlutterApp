class Projet {
  final String nom;
  final String prenom;
  final String courriel;
  final String financeur;
  final String nomProjet;
  final String date_deb;
  final String projetDescription;
  final String surface;
  final String ville;
  final String url_pic;
  final String profilepic;
  final double coord_lat;
  final double coord_long;
  final int tonnage;
  final int credit;
  final double zoom;
  Projet( {
    required this.nom,
    required this.prenom,
    required this.courriel,
    required this.financeur,
    required this.nomProjet,
    required this.projetDescription,
    required this.surface,
    required this.ville,
    required this.coord_lat,
    required this.coord_long,
    required this.tonnage,
    required this.credit,
    required this.zoom,
    required this.profilepic,
    required this.url_pic,
    required this.date_deb,
  });
}

List<Projet> dummyData = [
  Projet(
      nom: 'Funk', prenom: 'Casimir', courriel: "vitamines@canides.com",
      financeur: "Coco&co", nomProjet: "Noisetiers", projetDescription: "Plantation de noisetiers", surface: "7 hectares",
      ville: "Ivry-sur-seine", coord_lat: 48.81382406409138, coord_long: 2.3922031060879125,
      tonnage: 10000, credit: 164, zoom: 19,date_deb: "12/03/2021",
      profilepic: "https://cdn.pixabay.com/photo/2016/11/29/02/28/attractive-1866858__340.jpg",
      url_pic: 'https://thumbs.dreamstime.com/z/forest-path-circular-opening-as-viewed-roots-fallen-tree-62952466.jpg'),
  Projet(
    nom: 'Funk', prenom: 'Casimir', courriel: "vitamines@canides.com",
    financeur: "Coco&co", nomProjet: "Reforest", projetDescription: "Plantation de noisetiers", surface: "7 hectares",
    ville: "Ivry-sur-seine", coord_lat: 48.81456630246043, coord_long: 2.390996711371572,
    tonnage: 1000, credit: 11, zoom: 16.0,date_deb: "26/11/2021",
      profilepic: "https://yt3.ggpht.com/a/AATXAJwZGPuuePGI6Mr887w6f6ZxsnoDl-Xf10gKPKIOeg=s900-c-k-c0xffffffff-no-rj-mo",
  url_pic: "https://media.istockphoto.com/photos/the-office-town-of-sunlight-through-the-sun-picture-id871454158?s=612x612"),

  Projet(
      nom: 'Zheng', prenom: 'He', courriel: "sailorman@discovery.com",
      financeur: "Banque Populacière", nomProjet:"PunkG", projetDescription: "Transformation d'un parc de 15 hectares en jardin Punk", surface: "15 hectares",
      ville: "Bobigny", coord_lat: 48.908612, coord_long: 2.439712,
      tonnage: 300, credit: 32, zoom: 16.0, date_deb: "07/09/2021", profilepic: "https://images-na.ssl-images-amazon.com/images/I/711q+ma1FQL.png",
  url_pic: "https://media.istockphoto.com/photos/melbourne-suburb-in-the-sunrise-picture-id938467862?s=612x612"),

  Projet(
      nom: 'Bernstein', prenom: 'Richard K.', courriel: "bestphysicianever@human.org",
      financeur: "MediLogyk Labs", nomProjet:"Fontainebleau Restauration", projetDescription: "Suite à la tempête ......, plantation de 3700 arbres", surface: "35 hectares",
      ville: "Fontainebleau", coord_lat: 48.40129717543259, coord_long: 2.6046607673862074, date_deb: "21/05/2021",
      tonnage: 500, credit: 489, zoom:11.0, profilepic: "https://pbs.twimg.com/profile_images/1243950916362895361/Z__-CJxz_400x400.jpg",
  url_pic: "https://images.unsplash.com/photo-1566741062728-b937624da3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80"),

  Projet(
      nom: 'Arkhipov', prenom: 'Vassili', courriel: "realguy@human.org",
      financeur: "Peur&Stroika", nomProjet:"Fungi Kulture", projetDescription: "Favorisation de cultures d'especes mycorhiziennes", surface: "900 hectares",
      ville: "Douai", coord_lat: 50.367874, coord_long: 3.080602,date_deb: "30/08/2021",
      tonnage: 20000, credit: 759, zoom:11.0, profilepic: "https://cdn.pixabay.com/photo/2018/02/21/15/06/woman-3170568__340.jpg",
  url_pic: "https://images.unsplash.com/photo-1616330945669-3848624bfc9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),


];

class Certification {
  final String? name, source, text;

  Certification({this.name, this.source, this.text});
}

final List<Certification> demoCertification = [
  Certification(
    name: "MERN Stack Development",
    source: "DevTown",
    text:
     " Achieving this certification demonstrates my ability to develop full-featured web applications using the MERN stack—MongoDB, Express.js, React, and Node.js."
  ),
  Certification(
    name: "Java Programming",
    source: "Udemy",
    text:
       "By earning this certification, I have validated my proficiency in Java, covering both fundamental concepts and advanced programming techniques."
  ),
  Certification(
    name: "Java Collection Framework",
    source: "Scaler",
    text:
       "This certification reflects my advanced understanding of the Java Collection Framework, focusing on optimizing data structures and algorithms."
  ),
  Certification(
      name: "JavaScript Programming",
      source: "Guvi",
      text:
          "With this certification, I’ve proven my skills in JavaScript, including creating interactive and dynamic features for web applications."),
  Certification(
      name: "DevOps",
      source: "Guvi",
      text:
         "This certification showcases my expertise in DevOps, including practices for automating and enhancing the software development lifecycle."),
];

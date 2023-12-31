// ignore_for_file: public_member_api_docs, sort_constructors_first
class AudioFiledata {
final  String title;
final String path;
final  String discr;
final int lastposition;
final int duration;
final String? thumlpath; 
  AudioFiledata({
    required this.title,
    required this.path,
    required this.discr,
    required this.lastposition,
    required this.duration,
    this.thumlpath,
  });



 
  

  AudioFiledata copyWith({
    String? title,
    String? path,
    String? discr,
    int? lastposition,
    int? duration,
    String? thumlpath,
  }) {
    return AudioFiledata(
      title: title ?? this.title,
      path: path ?? this.path,
      discr: discr ?? this.discr,
      lastposition: lastposition ?? this.lastposition,
      duration: duration ?? this.duration,
      thumlpath: thumlpath ?? this.thumlpath,
    );
  }

  @override
  bool operator ==(covariant AudioFiledata other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.path == path &&
      other.discr == discr &&
      other.lastposition == lastposition &&
      other.duration == duration &&
      other.thumlpath == thumlpath;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      path.hashCode ^
      discr.hashCode ^
      lastposition.hashCode ^
      duration.hashCode ^
      thumlpath.hashCode;
  }
}

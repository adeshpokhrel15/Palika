// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class formModelAdapter extends TypeAdapter<formModel> {
  @override
  final int typeId = 0;

  @override
  formModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return formModel(
      firstname: fields[0] as String?,
      middlename: fields[111] as String?,
      lastname: fields[112] as String?,
      age: fields[1] as int?,
      gender: fields[2] as String?,
      dateofbirthpersonal: fields[3] as String?,
      handicappedidpersonal: fields[4] as String?,
      mobilenumber: fields[5] as int?,
      email: fields[6] as String?,
      pannumber: fields[7] as String?,
      bloodgroup: fields[8] as String?,
      tempProv: fields[9] as String?,
      tempdistrict: fields[10] as String?,
      tempMuni: fields[11] as String?,
      tempward: fields[12] as int?,
      tempstreettol: fields[13] as String?,
      tempblockno: fields[14] as int?,
      permProv: fields[15] as String?,
      permdistrict: fields[16] as String?,
      permMuni: fields[17] as String?,
      permpward: fields[18] as int?,
      permstreettol: fields[19] as String?,
      permblocknoaddress: fields[20] as int?,
      fatherFirstName: fields[21] as String?,
      fatherMiddlename: fields[113] as String?,
      fatherLastname: fields[114] as String?,
      motherFirstName: fields[22] as String?,
      motherMiddlename: fields[115] as String?,
      motherLastname: fields[116] as String?,
      spouseFirstName: fields[23] as String?,
      spouseMiddleName: fields[127] as String?,
      spouseLastName: fields[128] as String?,
      grandfatherFirstname: fields[24] as String?,
      grandfatherMiddlename: fields[117] as String?,
      grandfatherLastname: fields[118] as String?,
      grandmotherFirstname: fields[25] as String?,
      grandmotherMiddlename: fields[119] as String?,
      grandmotherLastname: fields[120] as String?,
      sonFirstname: fields[26] as String?,
      daughterFirstname: fields[27] as String?,
      sonMiddlename: fields[121] as String?,
      daughterMiddlename: fields[123] as String?,
      sonLastname: fields[122] as String?,
      daughterLastname: fields[124] as String?,
      totalson: fields[28] as int?,
      totaldaughter: fields[29] as int?,
      jobtype: fields[30] as String?,
      joborganization: fields[31] as String?,
      organizationaddress: fields[32] as String?,
      annualincome: fields[33] as double?,
      designation: fields[34] as String?,
      nationalismandreligion: fields[35] as String?,
      nationality: fields[36] as String?,
      religion: fields[37] as String?,
      ethnicgroup: fields[38] as String?,
      totalmonthlyincome: fields[39] as int?,
      incomesource: fields[40] as String?,
      incomesourceman: fields[41] as String?,
      expensecategory: fields[42] as String?,
      totalexpense: fields[43] as double?,
      isbalanceddiet: fields[44] as bool?,
      foodconsumptiontiming: fields[45] as String?,
      regularmealdescription: fields[46] as String?,
      isorganic: fields[47] as bool?,
      Houseaddress: fields[48] as String?,
      Blocknumber: fields[49] as int?,
      Streetname: fields[50] as String?,
      Housenumber: fields[51] as int?,
      toilettypeid: fields[52] as String?,
      citizenshipnumber: fields[53] as String?,
      issueddate: fields[54] as String?,
      issuedat: fields[55] as String?,
      verifiedby: fields[56] as String?,
      businessorg: fields[57] as String?,
      businesstypeid: fields[58] as String?,
      orgname: fields[59] as String?,
      totalinvestment: fields[60] as int?,
      annualincomeorg: fields[61] as int?,
      annualxpense: fields[62] as double?,
      totalnostaff: fields[63] as int?,
      businessarea: fields[64] as String?,
      businessproduct: fields[65] as String?,
      schoolname: fields[66] as String?,
      schooltypeid: fields[67] as String?,
      dresscode: fields[68] as String?,
      dresscondition: fields[69] as String?,
      childenschoolschemeid: fields[70] as String?,
      skincolor: fields[71] as String?,
      ishandicap: fields[72] as bool?,
      handicappedtypeid: fields[73] as String?,
      childrenFirstname: fields[74] as String?,
      childrenMiddlename: fields[125] as String?,
      childrenLastname: fields[126] as String?,
      childrengender: fields[75] as String?,
      familydetailid: fields[76] as String?,
      childrendob: fields[77] as String?,
      interestedfieldid: fields[78] as String?,
      istakingtraining: fields[79] as bool?,
      professionalstatus: fields[80] as String?,
      durationofactivities: fields[81] as String?,
      childrenbloodgroup: fields[82] as String?,
      childrenbirthplace: fields[83] as String?,
      chilrenbirthweight: fields[84] as int?,
      childrenbirthcondition: fields[85] as String?,
      childrenisBCGvaccinated: fields[86] as bool?,
      childrenisDPTHEPBvaccinated: fields[87] as bool?,
      childrenisOPVvaccinated: fields[88] as bool?,
      childrenisPCVvaccinated: fields[89] as bool?,
      childrenisIPVvaccinated: fields[90] as bool?,
      childrenisMRvaccinated: fields[91] as bool?,
      childrenisJEvaccinated: fields[92] as bool?,
      childrenisTDvaccinated: fields[93] as bool?,
      childrenisgeneticdiseaseissue: fields[94] as bool?,
      childrengeneticdiseasedescription: fields[95] as String?,
      childreniscovidvaccinated: fields[96] as bool?,
      childrenvaccinedetails: fields[97] as String?,
      childrenvacinedose: fields[98] as String?,
      healthbloodgroup: fields[99] as String?,
      birthplace: fields[100] as String?,
      birthweight: fields[101] as int?,
      birthcondition: fields[102] as String?,
      isbelowvaccinated: fields[103] as bool?,
      iscovidvaccinated: fields[104] as bool?,
      vaccinedetails: fields[105] as String?,
      vacinedose: fields[106] as String?,
      isgeneticdiseaseissue: fields[107] as bool?,
      geneticdiseasedescription: fields[108] as String?,
      latitude: fields[109] as double?,
      longitude: fields[110] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, formModel obj) {
    writer
      ..writeByte(129)
      ..writeByte(0)
      ..write(obj.firstname)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.dateofbirthpersonal)
      ..writeByte(4)
      ..write(obj.handicappedidpersonal)
      ..writeByte(5)
      ..write(obj.mobilenumber)
      ..writeByte(6)
      ..write(obj.email)
      ..writeByte(7)
      ..write(obj.pannumber)
      ..writeByte(8)
      ..write(obj.bloodgroup)
      ..writeByte(9)
      ..write(obj.tempProv)
      ..writeByte(10)
      ..write(obj.tempdistrict)
      ..writeByte(11)
      ..write(obj.tempMuni)
      ..writeByte(12)
      ..write(obj.tempward)
      ..writeByte(13)
      ..write(obj.tempstreettol)
      ..writeByte(14)
      ..write(obj.tempblockno)
      ..writeByte(15)
      ..write(obj.permProv)
      ..writeByte(16)
      ..write(obj.permdistrict)
      ..writeByte(17)
      ..write(obj.permMuni)
      ..writeByte(18)
      ..write(obj.permpward)
      ..writeByte(19)
      ..write(obj.permstreettol)
      ..writeByte(20)
      ..write(obj.permblocknoaddress)
      ..writeByte(21)
      ..write(obj.fatherFirstName)
      ..writeByte(22)
      ..write(obj.motherFirstName)
      ..writeByte(23)
      ..write(obj.spouseFirstName)
      ..writeByte(24)
      ..write(obj.grandfatherFirstname)
      ..writeByte(25)
      ..write(obj.grandmotherFirstname)
      ..writeByte(26)
      ..write(obj.sonFirstname)
      ..writeByte(27)
      ..write(obj.daughterFirstname)
      ..writeByte(28)
      ..write(obj.totalson)
      ..writeByte(29)
      ..write(obj.totaldaughter)
      ..writeByte(30)
      ..write(obj.jobtype)
      ..writeByte(31)
      ..write(obj.joborganization)
      ..writeByte(32)
      ..write(obj.organizationaddress)
      ..writeByte(33)
      ..write(obj.annualincome)
      ..writeByte(34)
      ..write(obj.designation)
      ..writeByte(35)
      ..write(obj.nationalismandreligion)
      ..writeByte(36)
      ..write(obj.nationality)
      ..writeByte(37)
      ..write(obj.religion)
      ..writeByte(38)
      ..write(obj.ethnicgroup)
      ..writeByte(39)
      ..write(obj.totalmonthlyincome)
      ..writeByte(40)
      ..write(obj.incomesource)
      ..writeByte(41)
      ..write(obj.incomesourceman)
      ..writeByte(42)
      ..write(obj.expensecategory)
      ..writeByte(43)
      ..write(obj.totalexpense)
      ..writeByte(44)
      ..write(obj.isbalanceddiet)
      ..writeByte(45)
      ..write(obj.foodconsumptiontiming)
      ..writeByte(46)
      ..write(obj.regularmealdescription)
      ..writeByte(47)
      ..write(obj.isorganic)
      ..writeByte(48)
      ..write(obj.Houseaddress)
      ..writeByte(49)
      ..write(obj.Blocknumber)
      ..writeByte(50)
      ..write(obj.Streetname)
      ..writeByte(51)
      ..write(obj.Housenumber)
      ..writeByte(52)
      ..write(obj.toilettypeid)
      ..writeByte(53)
      ..write(obj.citizenshipnumber)
      ..writeByte(54)
      ..write(obj.issueddate)
      ..writeByte(55)
      ..write(obj.issuedat)
      ..writeByte(56)
      ..write(obj.verifiedby)
      ..writeByte(57)
      ..write(obj.businessorg)
      ..writeByte(58)
      ..write(obj.businesstypeid)
      ..writeByte(59)
      ..write(obj.orgname)
      ..writeByte(60)
      ..write(obj.totalinvestment)
      ..writeByte(61)
      ..write(obj.annualincomeorg)
      ..writeByte(62)
      ..write(obj.annualxpense)
      ..writeByte(63)
      ..write(obj.totalnostaff)
      ..writeByte(64)
      ..write(obj.businessarea)
      ..writeByte(65)
      ..write(obj.businessproduct)
      ..writeByte(66)
      ..write(obj.schoolname)
      ..writeByte(67)
      ..write(obj.schooltypeid)
      ..writeByte(68)
      ..write(obj.dresscode)
      ..writeByte(69)
      ..write(obj.dresscondition)
      ..writeByte(70)
      ..write(obj.childenschoolschemeid)
      ..writeByte(71)
      ..write(obj.skincolor)
      ..writeByte(72)
      ..write(obj.ishandicap)
      ..writeByte(73)
      ..write(obj.handicappedtypeid)
      ..writeByte(74)
      ..write(obj.childrenFirstname)
      ..writeByte(75)
      ..write(obj.childrengender)
      ..writeByte(76)
      ..write(obj.familydetailid)
      ..writeByte(77)
      ..write(obj.childrendob)
      ..writeByte(78)
      ..write(obj.interestedfieldid)
      ..writeByte(79)
      ..write(obj.istakingtraining)
      ..writeByte(80)
      ..write(obj.professionalstatus)
      ..writeByte(81)
      ..write(obj.durationofactivities)
      ..writeByte(82)
      ..write(obj.childrenbloodgroup)
      ..writeByte(83)
      ..write(obj.childrenbirthplace)
      ..writeByte(84)
      ..write(obj.chilrenbirthweight)
      ..writeByte(85)
      ..write(obj.childrenbirthcondition)
      ..writeByte(86)
      ..write(obj.childrenisBCGvaccinated)
      ..writeByte(87)
      ..write(obj.childrenisDPTHEPBvaccinated)
      ..writeByte(88)
      ..write(obj.childrenisOPVvaccinated)
      ..writeByte(89)
      ..write(obj.childrenisPCVvaccinated)
      ..writeByte(90)
      ..write(obj.childrenisIPVvaccinated)
      ..writeByte(91)
      ..write(obj.childrenisMRvaccinated)
      ..writeByte(92)
      ..write(obj.childrenisJEvaccinated)
      ..writeByte(93)
      ..write(obj.childrenisTDvaccinated)
      ..writeByte(94)
      ..write(obj.childrenisgeneticdiseaseissue)
      ..writeByte(95)
      ..write(obj.childrengeneticdiseasedescription)
      ..writeByte(96)
      ..write(obj.childreniscovidvaccinated)
      ..writeByte(97)
      ..write(obj.childrenvaccinedetails)
      ..writeByte(98)
      ..write(obj.childrenvacinedose)
      ..writeByte(99)
      ..write(obj.healthbloodgroup)
      ..writeByte(100)
      ..write(obj.birthplace)
      ..writeByte(101)
      ..write(obj.birthweight)
      ..writeByte(102)
      ..write(obj.birthcondition)
      ..writeByte(103)
      ..write(obj.isbelowvaccinated)
      ..writeByte(104)
      ..write(obj.iscovidvaccinated)
      ..writeByte(105)
      ..write(obj.vaccinedetails)
      ..writeByte(106)
      ..write(obj.vacinedose)
      ..writeByte(107)
      ..write(obj.isgeneticdiseaseissue)
      ..writeByte(108)
      ..write(obj.geneticdiseasedescription)
      ..writeByte(109)
      ..write(obj.latitude)
      ..writeByte(110)
      ..write(obj.longitude)
      ..writeByte(111)
      ..write(obj.middlename)
      ..writeByte(112)
      ..write(obj.lastname)
      ..writeByte(113)
      ..write(obj.fatherMiddlename)
      ..writeByte(114)
      ..write(obj.fatherLastname)
      ..writeByte(115)
      ..write(obj.motherMiddlename)
      ..writeByte(116)
      ..write(obj.motherLastname)
      ..writeByte(117)
      ..write(obj.grandfatherMiddlename)
      ..writeByte(118)
      ..write(obj.grandfatherLastname)
      ..writeByte(119)
      ..write(obj.grandmotherMiddlename)
      ..writeByte(120)
      ..write(obj.grandmotherLastname)
      ..writeByte(121)
      ..write(obj.sonMiddlename)
      ..writeByte(122)
      ..write(obj.sonLastname)
      ..writeByte(123)
      ..write(obj.daughterMiddlename)
      ..writeByte(124)
      ..write(obj.daughterLastname)
      ..writeByte(125)
      ..write(obj.childrenMiddlename)
      ..writeByte(126)
      ..write(obj.childrenLastname)
      ..writeByte(127)
      ..write(obj.spouseMiddleName)
      ..writeByte(128)
      ..write(obj.spouseLastName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is formModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

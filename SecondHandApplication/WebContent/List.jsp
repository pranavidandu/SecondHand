<%@page import="java.util.*"%>
<%
	// Create ArrayList and add some items
	ArrayList<String> as = new ArrayList<String>();

    as.add("Adilabad");
	as.add("Agra");
	as.add("Ahmedabad");
	as.add("Ahmednagar");
	as.add("Aizawl");
	as.add("Ajitgarh (Mohali)");
	as.add("Ajmer");
	as.add("Akola");
	as.add("Alappuzha");
	as.add("Aligarh");
	as.add("Alirajpur");
	as.add("Allahabad");
	as.add("Almora");
	as.add("Alwar");
	as.add("Ambala");
	as.add("Ambedkar Nagar");
	as.add("Amravati");
	as.add("Amreli district");
	as.add("Amritsar");
	as.add("Anand");
	as.add("Anantapur");
	as.add("Anantnag");
	as.add("Angul");
	as.add("Anjaw");
	as.add("Anuppur");
	as.add("Araria");
	as.add("Ariyalur");
	as.add("Arwal");
	as.add("Ashok Nagar");
	as.add("Auraiya");
	as.add("Aurangabad");
	as.add("Aurangabad");
	as.add("Azamgarh");
	as.add("Badgam");
	as.add("Bagalkot");
	as.add("Bageshwar");
	as.add("Bagpat");
	as.add("Bahraich");
	as.add("Baksa");
	as.add("Balaghat");
	as.add("Balangir");
	as.add("Balasore");
	as.add("Ballia");
	as.add("Balrampur");
	as.add("Banaskantha");
	as.add("Banda");
	as.add("Bandipora");
	as.add("Bangalore Rural");
	as.add("Bangalore Urban");
	as.add("Banka");
	as.add("Bankura");
	as.add("Banswara");
	as.add("Barabanki");
	as.add("Baramull");
	as.add("Baran");
	as.add("Bardhaman");
	as.add("Bareilly");
	as.add("Bargarh (Baragarh)");
	as.add("Barmer");
	as.add("Barnala");
	as.add("Barpeta");
	as.add("Barwani");
	as.add("Bastar");
	as.add("Basti");
	as.add("Bathinda");
	as.add("Beed");
	as.add("Begusarai");
	as.add("Belgaum");
	as.add("Bellary");
	as.add("Betul");
	as.add("Bhadrak");
	as.add("Bhagalpur");
	as.add("Bhandara");
	as.add("Bharatpur");
	as.add("Bharuch");
	as.add("Bhavnagar");
	as.add("Bhilwara");
	as.add("Bhind");
	as.add("Bhiwani");
	as.add("Bhojpur");
	as.add("Bhopal");
	as.add("Bidar");
	as.add("Bijapur");
	as.add("Bijnor");
	as.add("Bikaner");
	as.add("Bilaspur");
	as.add("Bilaspur");
	as.add("Birbhum");
	as.add("Bishnupur");
	as.add("Bokaro");
	as.add("Bongaigaon");
	as.add("Boudh (Bauda)");
	as.add("Budaun");
	as.add("Bulandshahr");
	as.add("Buldhana");
	as.add("Bundi");
	as.add("Burhanpur");
	as.add("Buxar");
	as.add("Cachar");
	as.add("Central Delhi");
	as.add("Chamarajnagar");
	as.add("Chamba");
	as.add("Chamoli");
	as.add("Champawat");
	as.add("Champhai");
	as.add("Chandauli");
	as.add("Chandel");
	as.add("Chandigarh");
	as.add("Chandrapur");
	as.add("Changlang");
	as.add("Chatra");
	as.add("Chennai");
	as.add("Chhatarpur");
	as.add("Chhatrapati Shahuji Maharaj Nagar");
	as.add("Chhindwara");
	as.add("Chikkaballapur");
	as.add("Chikkamagaluru");
	as.add("Chirang");
	as.add("Chitradurga");
	as.add("Chitrakoot");
	as.add("Chittoor");
	as.add("Chittorgarh");
	as.add("Churachandpur");
	as.add("Churu");
	as.add("Coimbatore");
	as.add("Cooch Behar");
	as.add("Cuddalore");
	as.add("Cuttack");
	as.add("Dadra and Nagar Haveli");
	as.add("Dahod");
	as.add("Dakshin Dinajpur");
	as.add("Dakshina Kannada");
	as.add("Daman");
	as.add("Damoh");
	as.add("Dantewada");
	as.add("Darbhanga");
	as.add("Darjeeling");
	as.add("Darrang");
	as.add("Datia");
	as.add("Dausa");
	as.add("Davanagere");
	as.add("Debagarh (Deogarh)");
	as.add("Dehradun");
	as.add("Deoghar");
	as.add("Deoria");
	as.add("Dewas");
	as.add("Dhalai");
	as.add("Dhamtari");
	as.add("Dhanbad");
	as.add("Dhar");
	as.add("Dharmapuri");
	as.add("Dharwad");
	as.add("Dhemaji");
	as.add("Dhenkanal");
	as.add("Dholpur");
	as.add("Dhubri");
	as.add("Dhule");
	as.add("Dibang Valley");
	as.add("Dibrugarh");
	as.add("Dima Hasao");
	as.add("Dimapur");
	as.add("Dindigul");
	as.add("Dindori");
	as.add("Diu");
	as.add("Doda");
	as.add("Dumka");
	as.add("Dungapur");
	as.add("Durg");
	as.add("East Champaran");
    as.add("East Delhi");
    as.add("East Garo Hills");
    as.add("East Khasi Hills");
    as.add("East Siang");
    as.add("East Sikkim");
    as.add("East Singhbhum");
    as.add("Eluru");
    as.add("Ernakulam");
    as.add("Erode");
    as.add("Etah");
    as.add("Etawah");
    as.add("Faizabad");
    as.add("Faridabad");
    as.add("Faridkot");
    as.add("Farrukhabad");
    as.add("Fatehabad");
    as.add("Fatehgarh Sahib");
    as.add("Fatehpur");
    as.add("Fazilka");
    as.add("Firozabad");
    as.add("Firozpur");
    as.add("Gadag");
    as.add("Gadchiroli");
	as.add("Gajapati");
	as.add("Ganderbal");
	as.add("Gandhinagar");
	as.add("Ganganagar");
	as.add("Ganjam");
	as.add("Garhwa");
	as.add("Gautam Buddh Nagar");
	as.add("Gaya");
	as.add("Ghaziabad");
	as.add("Ghazipur");
	as.add("Giridih");
	as.add("Goalpara");
	as.add("Godda");
	as.add("Golaghat");
	as.add("Gonda");
	as.add("Gondia");
	as.add("Gopalganj");
	as.add("Gorakhpur");
	as.add("Gulbarga");
	as.add("Gumla");
	as.add("Guna");
	as.add("Guntur");
	as.add("Gurdaspur");
	as.add("Gurgaon");
	as.add("Gwalior");
	as.add("Hailakandi");
	as.add("Hamirpur");
	as.add("Hanumangarh");
	as.add("Harda");
	as.add("Hardoi");
	as.add("Haridwar");
	as.add("Hassan");
	as.add("Haveri district");
	as.add("Hazaribag");
	as.add("Hingoli");
	as.add("Hissar");
	as.add("Hooghly");
	as.add("Hoshangabad");
	as.add("Hoshiarpur");
	as.add("Howrah");
	as.add("Hyderabad");
	as.add("Idukki");
	as.add("Imphal East");
	as.add("Imphal West");
	as.add("Indore");
	as.add("Jabalpur");
	as.add("Jagatsinghpur");
	as.add("Jaintia Hills");
	as.add("Jaipur");
	as.add("Jaisalmer");
	as.add("Jajpur");
	as.add("Jalandhar");
	as.add("Jalaun");
	as.add("Jalgaon");
	as.add("Jalna");
	as.add("Jalore");
	as.add("Jalpaiguri");
	as.add("Jammu");
	as.add("Jamnagar");
	as.add("Jamtara");
	as.add("Jamui");
	as.add("Janjgir-Champa");
	as.add("Jashpur");
	as.add("Jaunpur district");
	as.add("Jehanabad");
	as.add("Jhabua");
	as.add("Jhajjar");
	as.add("Jhalawar");
	as.add("Jhansi");
	as.add("Jharsuguda");
	as.add("Jhunjhunu");
	as.add("Jind");
	as.add("Jodhpur");
	as.add("Jorhat");
	as.add("Junagadh");
	as.add("Jyotiba Phule Nagar");
	as.add("Kabirdham (formerly Kawardha)");
	as.add("Kadapa");
	as.add("Kaimur");
	as.add("Kaithal");
	as.add("Kakinada");
	as.add("Kalahandi");
	as.add("Kamrup");
	as.add("Kamrup Metropolitan");
	as.add("Kanchipuram");
	as.add("Kandhamal");
	as.add("Kangra");
	as.add("Kanker");
	as.add("Kannauj");
	as.add("Kannur");
	as.add("Kanpur");
	as.add("Kanshi Ram Nagar");
	as.add("Kanyakumari");
	as.add("Kapurthala");
	as.add("Karaikal");
	as.add("Karauli");
	as.add("Karbi Anglong");
	as.add("Kargil");
	as.add("Karimganj");
	as.add("Karimnagar");
	as.add("Karnal");
	as.add("Karur");
	as.add("Kasaragod");
	as.add("Kathua");
	as.add("Katihar");
	as.add("Katni");
	as.add("Kaushambi");
	as.add("Kendrapara");
	as.add("Kendujhar (Keonjhar)");
	as.add("Khagaria");
	as.add("Khammam");
	as.add("Khandwa (East Nimar)");
	as.add("Khargone (West Nimar)");
	as.add("Kheda");
	as.add("Khordha");
	as.add("Khowai");
	as.add("Khunti");
	as.add("Kinnaur");
	as.add("Kishanganj");
	as.add("Kishtwar");
	as.add("Kodagu");
	as.add("Koderma");
	as.add("Kohima");
	as.add("Kokrajhar");
	as.add("Kolar");
	as.add("Kolasib");
	as.add("Kolhapur");
	as.add("Kolkata");
	as.add("Kollam");
	as.add("Koppal");
	as.add("Koraput");
	as.add("Korba");
	as.add("Koriya");
	as.add("Kota");
	as.add("Kottayam");
	as.add("Kozhikode");
	as.add("Krishna");
	as.add("Kulgam");
	as.add("Kullu");
	as.add("Kupwara");
	as.add("Kurnool");
	as.add("Kurukshetra");
	as.add("Kurung Kumey");
	as.add("Kushinagar");
	as.add("Kutch");
	as.add("Lahaul and Spiti");
	as.add("Lakhimpur");
	as.add("Lakhimpur Kheri");
	as.add("Lakhisarai");
	as.add("Lalitpur");
	as.add("Latehar");
	as.add("Latur");
	as.add("Lawngtlai");
	as.add("Leh");
	as.add("Lohardaga");
	as.add("Lohit");
	as.add("Lower Dibang Valley");
	as.add("Lower Subansiri");
	as.add("Lucknow");
	as.add("Ludhiana");
	as.add("Lunglei");
	as.add("Madhepura");
	as.add("Madhubani");
	as.add("Madurai");
	as.add("Mahamaya Nagar");
	as.add("Maharajganj");
	as.add("Mahasamund");
	as.add("Mahbubnagar");
	as.add("Mahe");
	as.add("Mahendragarh");
	as.add("Mahoba");
	as.add("Mainpuri");
	as.add("Malappuram");
	as.add("Maldah");
	as.add("Malkangiri");
	as.add("Mamit");
	as.add("Mandi");
	as.add("Mandla");
	as.add("Mandsaur");
	as.add("Mandya");
	as.add("Mansa");
	as.add("Marigaon");
	as.add("Mathura");
	as.add("Mau");
	as.add("Mayurbhanj");
	as.add("Medak");
	as.add("Meerut");
	as.add("Mehsana");
	as.add("Mewat");
	as.add("Mirzapur");
	as.add("Moga");
	as.add("Mokokchung");
	as.add("Mon");
	as.add("Moradabad");
	as.add("Morena");
	as.add("Mumbai City");
	as.add("Mumbai suburban");
	as.add("Munger");
	as.add("Murshidabad");
	as.add("Muzaffarnagar");
	as.add("Muzaffarpur");
	as.add("Mysore");
	as.add("Nadia");
	as.add("Nagaon");
	as.add("Nagapattinam");
	as.add("Nagaur");
	as.add("Nagpur");
	as.add("Nainital");
	as.add("Nalanda");
	as.add("Nalbari");
	as.add("Nalgonda");
	as.add("Namakkal");
	as.add("Nanded");
	as.add("Nandurbar");
	as.add("Narayanpur");
	as.add("Narmada");
	as.add("Narsinghpur");
	as.add("Nashik");
	as.add("Navsari");
	as.add("Nawada");
	as.add("Nawanshahr");
	as.add("Nayagarh");
	as.add("Neemuch");
	as.add("Nellore");
	as.add("New Delhi");
	as.add("Nilgiris");
	as.add("Nizamabad");
	as.add("North 24 Parganas");
	as.add("North Delhi");
	as.add("North East Delhi");
	as.add("North Goa");
	as.add("North Sikkim");
	as.add("North Tripura");
	as.add("North West Delhi");
	as.add("Nuapada");
	as.add("Ongole");
	as.add("Osmanabad");
	as.add("Pakur");
	as.add("Palakkad");
	as.add("Palamu");
	as.add("Pali");
	as.add("Palwal");
	as.add("Panchkula");
	as.add("Panchmahal");
	as.add("Panchsheel Nagar district (Hapur)");
	as.add("Panipat");
	as.add("Panna");
	as.add("Papum Pare");
	as.add("Parbhani");
	as.add("Paschim Medinipur");
	as.add("Patan");
	as.add("Pathanamthitta");
	as.add("Pathankot");
	as.add("Patiala");
	as.add("Patna");
	as.add("Pauri Garhwal");
	as.add("Perambalur");
	as.add("Phek");
	as.add("Pilibhit");
	as.add("Pithoragarh");
	as.add("Pondicherry");
	as.add("Poonch");
	as.add("Porbandar");
	as.add("Pratapgarh");
	as.add("Pudukkottai");
	as.add("Pulwama");
	as.add("Pune");
	as.add("Purba Medinipur");
	as.add("Puri");
	as.add("Purnia");
	as.add("Purulia");
	as.add("Raebareli");
	as.add("Raichur");
	as.add("Raigad");
	as.add("Raigarh");
	as.add("Raipur");
	as.add("Raisen");
	as.add("Rajauri");
	as.add("Rajgarh");
	as.add("Rajkot");
	as.add("Rajnandgaon");
	as.add("Rajsamand");
	as.add("Ramabai Nagar (Kanpur Dehat)");
	as.add("Ramanagara");
	as.add("Ramanathapuram");
	as.add("Ramban");
	as.add("Ramgarh");
	as.add("Rampur");
	as.add("Ranchi");
	as.add("Ratlam");
	as.add("Ratnagiri");
	as.add("Rayagada");
	as.add("Reasi");
	as.add("Rewa");
	as.add("Rewari");
	as.add("Ri Bhoi");
	as.add("Rohtak");
	as.add("Rohtas");
	as.add("Rudraprayag");
	as.add("Rupnagar");
	as.add("Sabarkantha");
	as.add("Sagar");
	as.add("Saharanpur");
	as.add("Saharsa");
	as.add("Sahibganj");
	as.add("Saiha");
	as.add("Salem");
	as.add("Samastipur");
	as.add("Samba");
	as.add("Sambalpur");
	as.add("Sangli");
	as.add("Sangrur");
	as.add("Sant Kabir Nagar");
	as.add("Sant Ravidas Nagar");
	as.add("Saran");
	as.add("Satara");
	as.add("Satna");
	as.add("Sawai Madhopur");
	as.add("Sehore");
	as.add("Senapati");
	as.add("Seoni");
	as.add("Seraikela Kharsawan");
	as.add("Serchhip");
	as.add("Shahdol");
	as.add("Shahjahanpur");
	as.add("Shajapur");
	as.add("Shamli");
	as.add("Sheikhpura");
	as.add("Sheohar");
	as.add("Sheopur");
	as.add("Shimla");
	as.add("Shimoga");
	as.add("Shivpuri");
	as.add("Shopian");
	as.add("Shravasti");
	as.add("Sibsagar");
	as.add("Siddharthnagar");
	as.add("Sidhi");
	as.add("Sikar");
	as.add("Simdega");
	as.add("Sindhudurg");
	as.add("Singrauli");
	as.add("Sirmaur");
	as.add("Sirohi");
	as.add("Sirsa");
	as.add("Sitamarhi");
	as.add("Sitapur");
	as.add("Sivaganga");
	as.add("Siwan");
	as.add("Solan");
	as.add("Solapur");
	as.add("Sonbhadra");
	as.add("Sonipat");
	as.add("Sonitpur");
	as.add("South 24 Parganas");
	as.add("South Delhi");
	as.add("South Garo Hills");
	as.add("South Goa");
	as.add("South Sikkim");
	as.add("South Tripura");
	as.add("South West Delhi");
	as.add("Sri Muktsar Sahib");
	as.add("Srikakulam");
	as.add("Srinagar");
	as.add("Subarnapur (Sonepur)");
	as.add("Sultanpur");
	as.add("Sundergarh");
	as.add("Supaul");
	as.add("Surat");
	as.add("Surendranagar");
	as.add("Surguja");
	as.add("Tamenglong");
	as.add("Tarn Taran");
	as.add("Tawang");
	as.add("Tehri Garhwal");
	as.add("Thane");
	as.add("Thanjavur");
	as.add("The Dangs");
	as.add("Theni");
	as.add("Thiruvananthapuram");
	as.add("Thoothukudi");
	as.add("Thoubal");
	as.add("Thrissur");
	as.add("Tikamgarh");
	as.add("Tinsukia");
	as.add("Tirap");
	as.add("Tiruchirappalli");
	as.add("Tirunelveli");
	as.add("Tirupur");
	as.add("Tiruvallur");
	as.add("Tiruvannamalai");
	as.add("Tiruvarur");
	as.add("Tonk");
	as.add("Tuensang");
	as.add("Tumkur");
	as.add("Udaipur");
	as.add("Udalguri");
	as.add("Udham Singh Nagar");
	as.add("Udhampur");
	as.add("Udupi");
	as.add("Ujjain");
	as.add("Ukhrul");
	as.add("Umaria");
	as.add("Una");
	as.add("Unnao");
	as.add("Upper Siang");
	as.add("Upper Subansiri");
	as.add("Uttar Dinajpur");
	as.add("Uttara Kannada");
	as.add("Uttarkashi");
	as.add("Vadodara");
	as.add("Vaishali");
	as.add("Valsad");
	as.add("Varanasi");
	as.add("Vellore");
	as.add("Vidisha");
	as.add("Viluppuram");
	as.add("Virudhunagar");
	as.add("Visakhapatnam");
	as.add("Vizianagaram");
	as.add("Vyara");
	as.add("Warangal");
	as.add("Wardha");
	as.add("Washim");
	as.add("Wayanad");
	as.add("West Champaran");
	as.add("West Delhi");
	as.add("West Garo Hills");
	as.add("West Kameng");
	as.add("West Khasi Hills");
	as.add("West Siang");
	as.add("West Sikkim");
	as.add("West Singhbhum");
	as.add("West Tripura");
	as.add("Wokha");
	as.add("Yadgir");
	as.add("Yamuna Nagar");
	as.add("Yanam");
	as.add("Yavatmal");
	as.add("Zunheboto");


	String s = request.getParameter("citi");

	for (String st : as) {
		if (st.toLowerCase().startsWith(s.toLowerCase())) {
	out.println(st);
		}
	}
%>

<%@page import="java.util.*"%>
<%
    // Create ArrayList and add some items
    ArrayList<String> as=new ArrayList<String>();
    as.add("Mobiles");
    as.add("Ear Phones");
    as.add("Case Covers");
    as.add("Computers");
    as.add("Cds");
    as.add("Camera");
    as.add("Video Games");
    as.add("TV");
    as.add("Other Electronics");
    as.add("Cars");
    as.add("Motercycle");
    as.add("Scooters");
    as.add("Bicycles");
    as.add("Commercial Vehicles");
    as.add("Other Vehicles");
    as.add("Furniture");
    as.add("Decor");
    as.add("Fridge and AC");
    as.add("Kitchen Appliances");
    as.add("Paintings and Handicrafts");
    as.add("Dogs");
    as.add("Aquarium and Fishes");
    as.add("Birds");
    as.add("Cats");
    as.add("Animal Food");
    as.add("Other Animals");
    as.add("Books");
    as.add("Musical Instruments");
    as.add("Sports");
    as.add("Fitness");
    as.add("Coins and Collectibles");
    as.add("Clothes");
    as.add("Shoes");
    as.add("Jewellary");
    as.add("Bags");
    as.add("Watches");
    as.add("Health And Beauty");
    as.add("Strollers");
    as.add("Kid Furnitures");
    as.add("Car Seat");
    as.add("Nutrition");
    as.add("Kid Clothing");
    as.add("Toys And Games");
    
    
        String s=request.getParameter("com");
        
            for(String st:as)
            {
                if(st.toLowerCase().startsWith(s.toLowerCase()))
                {
                    out.println(st);
                }
            }
%>

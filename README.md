# biodiversity_ML
Predicting Biodiversity in National Parks

Biodiversity is an important aspect of an environment’s overall health and its adaptability to or defense against climate change. It is defined as “the variety of life on Earth at all its levels, from genes to ecosystems'' (1). The diversity of an ecosystem’s living organisms can be determined by how many different organisms in an environment are present from each classification group. For example, an organism belongs to a scientific family and a scientific order.

For humans, we value biodiversity in getting to experience the beauty of the outside world. One such way that humans often explore outdoor lands is through National Parks. The data I will be using comes from the National Park Service. These data points were collected at 56 different National Parks across the country and share information regarding location of the species and species classification such as order and family.

The initial goal of my project was to explore the relationship between the location and acreage of a National Park and its overall extent of biodiversity. I hoped to discover, based on the data, whether or not there is a correlation between the longitude/latitude of a national park, and its degree of biodiversity or if it’s more influenced by size of National Park or a combination of both. Therefore, my research question was: which factor influences biodiversity more greatly: location, acreage, or a combination of both? My hypothesis was that a combination of both would be most important at influencing biodiversity in a National Park.

I hold a Bachelor's degree in Sustainability and am extremely passionate about community-led climate conservation. Though there are social issues within the National Park system, National Parks bring more people outside to connect with nature and it is much easier to encourage someone to care about an issue if they have an appreciation for it. Using data from the National Park System rather than a remote rainforest is helpful because there are more than 800,000 visits to National Parks each day (2). Thus, many people interact with National Park ecosystems.

I was interested in building a model that was able to determine the biodiversity of a National park based on location or size, or both. This is useful in determining areas to give more energy toward conserving or protecting in order to protect critical ecosystems.

Through a long process of projecting, I realized that this was a limiting view of predicting biodiversity (only using location and acreage). I soon saw some issues, spoke with Dr. Longo and my mentor, and realized that it would be much better use of the data to start with more features and find out from my model what are the best features to predict biodiversity in National Parks. This was also more reproducible to other data and not just to this data set. I will be walking you through my process here. First, let me explain species richness which is my biodiversity measure.

There are several ways to measure biodiversity, as shown in the visual aid below. For this project, I focused on species richness, which is “the total number of species within the area” (3).

Citations

https://www.amnh.org/research/center-for-biodiversity-conservation/what-is-biodiversity
https://www.nps.gov/aboutus/visitation-numbers.htm
https://www.britannica.com/science/biodiversity

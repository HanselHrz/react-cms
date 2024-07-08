import axios from 'axios';

const API_URL = 'http://localhost:1337/api/blogs';

export const getBlogs = async () => {
  try {
    const response = await axios.get(`${API_URL}/?populate=*`);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching pages:', error);
    throw error;
  }
};

export const getBlogPostById = async (id) => {
  try {
    const response = await axios.get(`${API_URL}/${id}/?populate=*`);
    console.log(response.data.data);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching page:', error);
    throw error;
  }
};

export const createBlog = async (postData) => {
  try {
    const response = await axios.post(`${API_URL}`, postData);
    return response.data;
  } catch (error) {
    console.error('Error creating blog post:', error);
    throw error;
  }
};

export const updateBlogPost = async (id, postData) => {
  try {
    const response = await axios.put(`${API_URL}/${id}`, postData);
    return response.data;
  } catch (error) {
    console.error('Error updating blog post:', error);
    throw error;
  }
};

export const deleteBlogPostById = async (id) => {
  const response = await axios.delete(`${API_URL}/${id}`);
  return response.data;
};

export const getEnterpriseData = async () => {
  try {
    const response = await axios.get('http://localhost:1337/api/enterprise?populate[PageContent][populate][video][fields][0]=url&populate[PageContent][populate][video][fields][1]=alternativeText&populate[PageContent][populate][primerBoton][populate]=true&populate[PageContent][populate][segundoBoton][populate]=true&populate[PageContent][populate][imagen][fields][0]=url&populate[PageContent][populate][imagen][fields][1]=alternativeText&populate[PageContent][populate][iconos][fields][0]=url&populate[PageContent][populate][iconos][fields][1]=alternativeText&populate[PageContent][populate][card][populate][imagen][fields][0]=url&populate[PageContent][populate][card][populate][imagen][fields][1]=alternativeText&populate[PageContent][populate][navegadores][populate][icono][fields][0]=url&populate[PageContent][populate][navegadores][populate][icono][fields][1]=alternativeText&populate[PageContent][populate][resena][populate][avatar][fields][0]=url&populate[PageContent][populate][resena][populate][avatar][fields][1]=alternativeText');
    const flattenedData = flattenAttributes(response.data);
    return flattenedData;
  } catch (error) {
    console.error('Error fetching enterprise data:', error);
    throw error;
  }
}

export const getWebBasicData = async () => {
  try{
    const response = await axios.get('http://localhost:1337/api/web-basic?populate[PageContent][populate][primerBoton][populate]=true&populate[PageContent][populate][segundoBoton][populate]=true&populate[PageContent][populate][imagen][fields][0]=url&populate[PageContent][populate][imagen][fields][1]=alternativeText&populate[PageContent][populate][card][populate][icono][fields][0]=url&populate[PageContent][populate][card][populate][icono][fields][1]=alternativeText&populate[PageContent][populate][iconos][fields][0]=url&populate[PageContent][populate][iconos][fields][1]=alternativeText&populate[PageContent][populate][icono][fields][0]=url&populate[PageContent][populate][icono][fields][1]=alternativeText&populate[PageContent][populate][caracteristicas][populate][icono][fields][0]=url&populate[PageContent][populate][caracteristicas][populate][icono][fields][1]=alternativeText&populate[PageContent][populate][resena][populate][avatar][fields][0]=url&populate[PageContent][populate][resena][populate][avatar][fields][1]=alternativeText&populate[PageContent][populate][planes][populate][caracteristicas][populate]=true&populate[PageContent][populate][preguntas][populate]=true');
    const flattenedData = flattenAttributes(response.data);
    return flattenedData;
  } catch (error) {
    console.error('Error fetching web basic data:', error);
    throw error;
  }
}

export const getCustomersData = async () => {
  try {
    const response = await axios.get('http://localhost:1337/api/customer-storie?populate[PageContent][populate][iconos][fields][0]=url&populate[PageContent][populate][iconos][fields][1]=alternativeText&populate[PageContent][populate][CTO][pupulate]=true&populate[PageContent][populate][icono][fields][0]=url&populate[PageContent][populate][icono][fields][1]=alternativeText&populate[PageContent][populate][empresas][populate][imagen][fields][0]=url&populate[PageContent][populate][empresas][populate][imagen][fields][1]=alternativeText&populate[PageContent][populate][empresas][populate][logo][fields][0]=url&populate[PageContent][populate][empresas][populate][logo][fields][1]=alternativeText');
    const flattenedData = flattenAttributes(response.data);
    return flattenedData;
  } catch (error) {
    console.error('Error fetching customers data:', error);
    throw error;
  }

}

export const getAboutStartupData = async () => {
  try {
    const response = await axios.get('http://localhost:1337/api/about-startup?populate[PageContent][populate][iconos][fields][0]=url&populate[PageContent][populate][iconos][fields][1]=alternativeText&populate[PageContent][populate][galeria][fields][0]=url&populate[PageContent][populate][galeria][fields][1]=alternativeText&populate[PageContent][populate][numeros][populate]=true&populate[PageContent][populate][card][populate][avatar][fields][0]=url&populate[PageContent][populate][card][populate][avatar][fields][1]=alternativeText');
    const flattenedData = flattenAttributes(response.data);
    return flattenedData;
  } catch (error) {
    console.error('Error fetching customers data:', error);
    throw error;
  }
}
const flattenAttributes = (data) => {
  if (
    typeof data !== 'object' ||
    data === null ||
    data instanceof Date ||
    typeof data === 'function'
  ){
    return data;
  }

  if (Array.isArray(data)) {
    return data.map((item) => flattenAttributes(item));
  }

  // Initialize an object with an index signature for the flattened structure
  const flattenedData = {};
  // Iterate over each key in the object
  for (const key in data) {
    if(!data.hasOwnProperty(key)) {
      continue;
    } 
    if ((key === "attributes" || key === "data") && typeof data[key] === "object") {
      Object.assign(flattenedData, flattenAttributes(data[key]));
    } else {
      flattenedData[key] = flattenAttributes(data[key]);
    }
  }

  return flattenedData;
}
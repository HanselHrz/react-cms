import axios from 'axios';

const API_URL = 'http://localhost:1337/api/';

export const getBlogs = async () => {
  try {
    const response = await axios.get(`${API_URL}/blogs?populate=*`);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching pages:', error);
    throw error;
  }
};

export const getBlogPostById = async (id) => {
  try {
    const response = await axios.get(`${API_URL}/blogs/${id}/?populate=*`);
    console.log(response.data.data);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching page:', error);
    throw error;
  }
};

export const createBlog = async (postData) => {
  try {
    const response = await axios.post(`${API_URL}/blogs`, postData);
    return response.data;
  } catch (error) {
    console.error('Error creating blog post:', error);
    throw error;
  }
};

export const updateBlogPost = async (id, postData) => {
  try {
    const response = await axios.put(`${API_URL}/blogs/${id}`, postData);
    return response.data;
  } catch (error) {
    console.error('Error updating blog post:', error);
    throw error;
  }
};

export const deleteBlogPostById = async (id) => {
  const response = await axios.delete(`${API_URL}/blogs/${id}`);
  return response.data;
};

export const getTerms = async () => {
  try {
    const response = await axios.get(`${API_URL}term?populate=*`);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching terms:', error);
    throw error;
  }
};

export const getLogisticData = async () => {
  try {
    const response = await axios.get(`${API_URL}logistic?populate[sections][populate][items][populate]=images&populate[sections][populate][comments][populate]=avatar&populate[sections][populate][alert]=*`);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching logistic data:', error);
    throw error;
  }
};

export const getAboutData = async () => {
  try {
    const response = await axios.get(`${API_URL}about?populate[section][populate]=image1,items.images,video`);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching about data:', error);
    throw error;
  }
};

export const getHelpCenterData = async () => {
  try {
    const response = await axios.get(`${API_URL}helpcenter?populate[FAQpage][populate]=button,items.button,accordion.button.icon`);
    return response.data.data;
  } catch (error) {
    console.error('Error fetching Help Center data:', error);
    throw error;
  }
};
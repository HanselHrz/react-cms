import type { Schema, Attribute } from '@strapi/strapi';

export interface CommentsComments extends Schema.Component {
  collectionName: 'components_comments_comments';
  info: {
    displayName: 'comments';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    description: Attribute.Text;
    avatar: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    state: Attribute.String;
    userName: Attribute.String;
  };
}

export interface GenericsAccordion extends Schema.Component {
  collectionName: 'components_generics_accordions';
  info: {
    displayName: 'Accordion';
    icon: 'filter';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.String;
    description: Attribute.Text;
    button: Attribute.Component<'generics.button', true>;
  };
}

export interface GenericsButton extends Schema.Component {
  collectionName: 'components_generics_buttons';
  info: {
    displayName: 'Button';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface ItemsNumItems extends Schema.Component {
  collectionName: 'components_items_num_items';
  info: {
    displayName: 'items';
  };
  attributes: {
    title: Attribute.String;
    description: Attribute.Text;
    images: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
    subtitle: Attribute.String;
    button: Attribute.Component<'generics.button', true>;
  };
}

export interface PopsContacUsPop extends Schema.Component {
  collectionName: 'components_pops_contac_us_pops';
  info: {
    displayName: 'contacUsPop';
  };
  attributes: {
    question: Attribute.String;
    email: Attribute.String;
    paragraph: Attribute.String;
    address: Attribute.String;
  };
}

export interface PopsPopAlert extends Schema.Component {
  collectionName: 'components_pops_pop_alerts';
  info: {
    displayName: 'PopAlert';
  };
  attributes: {
    title: Attribute.String;
    description: Attribute.Text;
  };
}

export interface SectionsSections extends Schema.Component {
  collectionName: 'components_sections_sections';
  info: {
    displayName: 'sections';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.String;
    description: Attribute.Text;
    image1: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    video: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
    items: Attribute.Component<'items-num.items', true>;
    section_name: Attribute.String;
    accordion: Attribute.Component<'generics.accordion', true>;
    button: Attribute.Component<'generics.button', true>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'comments.comments': CommentsComments;
      'generics.accordion': GenericsAccordion;
      'generics.button': GenericsButton;
      'items-num.items': ItemsNumItems;
      'pops.contac-us-pop': PopsContacUsPop;
      'pops.pop-alert': PopsPopAlert;
      'sections.sections': SectionsSections;
    }
  }
}

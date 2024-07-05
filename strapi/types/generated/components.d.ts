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

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'comments.comments': CommentsComments;
      'items-num.items': ItemsNumItems;
      'pops.contac-us-pop': PopsContacUsPop;
      'pops.pop-alert': PopsPopAlert;
    }
  }
}

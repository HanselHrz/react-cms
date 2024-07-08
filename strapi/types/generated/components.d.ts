import type { Schema, Attribute } from '@strapi/strapi';

export interface AboutSideCardEquipo extends Schema.Component {
  collectionName: 'components_about_side_card_equipos';
  info: {
    displayName: 'cardEquipo';
    description: '';
  };
  attributes: {
    avatar: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    nombre: Attribute.String;
    titulo: Attribute.String;
    descripcion: Attribute.String;
    facebook: Attribute.String;
    x: Attribute.String;
    github: Attribute.String;
  };
}

export interface AboutSideEquipo extends Schema.Component {
  collectionName: 'components_about_side_equipos';
  info: {
    displayName: 'Equipo';
    description: '';
  };
  attributes: {
    card: Attribute.Component<'about-side.card-equipo', true>;
  };
}

export interface AboutSideEstadistica extends Schema.Component {
  collectionName: 'components_about_side_estadisticas';
  info: {
    displayName: 'estadistica';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.String;
  };
}

export interface AboutSideGallery extends Schema.Component {
  collectionName: 'components_about_side_galleries';
  info: {
    displayName: 'Galeria';
    icon: 'picture';
    description: '';
  };
  attributes: {
    galeria: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
  };
}

export interface AboutSideHeader extends Schema.Component {
  collectionName: 'components_about_side_header_s';
  info: {
    displayName: 'Encabezado';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.Text;
  };
}

export interface AboutSideNumeros extends Schema.Component {
  collectionName: 'components_about_side_numeros';
  info: {
    displayName: 'numeros';
    icon: 'bold';
    description: '';
  };
  attributes: {
    numeros: Attribute.Component<'about-side.estadistica', true>;
  };
}

export interface AboutSideStory extends Schema.Component {
  collectionName: 'components_about_side_stories';
  info: {
    displayName: 'Historia';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    descripcion: Attribute.Text;
    iconos: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
  };
}

export interface CustomersCardRelatos extends Schema.Component {
  collectionName: 'components_customers_card_relatos';
  info: {
    displayName: 'cardRelatos';
    description: '';
  };
  attributes: {
    imagen: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    logo: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    descripcion: Attribute.String;
  };
}

export interface CustomersContacto extends Schema.Component {
  collectionName: 'components_customers_contactos';
  info: {
    displayName: 'Contacto';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.Text;
    CTO: Attribute.Component<'enterprise.button'>;
  };
}

export interface CustomersRelatos extends Schema.Component {
  collectionName: 'components_customers_relatos';
  info: {
    displayName: 'Relatos';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    empresas: Attribute.Component<'customers.card-relatos', true>;
  };
}

export interface CustomersTitular extends Schema.Component {
  collectionName: 'components_customers_titulars';
  info: {
    displayName: 'Titular';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.String;
  };
}

export interface EnterpriseButton extends Schema.Component {
  collectionName: 'components_enterprise_buttons';
  info: {
    displayName: 'Button';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    link: Attribute.String;
  };
}

export interface EnterpriseCards extends Schema.Component {
  collectionName: 'components_enterprise_cards';
  info: {
    displayName: 'cardSoluciones';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    descripcion: Attribute.String;
    imagen: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface EnterpriseCompatibilityCard extends Schema.Component {
  collectionName: 'components_enterprise_compatibility_cards';
  info: {
    displayName: 'cardCompatibilidad';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    descripcion: Attribute.Text;
    icono: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface EnterpriseCompatibility extends Schema.Component {
  collectionName: 'components_enterprise_compatibilities';
  info: {
    displayName: 'Compatibilidad';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    navegadores: Attribute.Component<'enterprise.compatibility-card', true>;
  };
}

export interface EnterpriseHeader extends Schema.Component {
  collectionName: 'components_enterprise_header_s';
  info: {
    displayName: 'Encabezado';
    icon: 'bold';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.Text;
    primerBoton: Attribute.Component<'enterprise.button'>;
    segundoBoton: Attribute.Component<'enterprise.button'>;
  };
}

export interface EnterprisePartners extends Schema.Component {
  collectionName: 'components_enterprise_partners';
  info: {
    displayName: 'Socios';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.Text;
    iconos: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
  };
}

export interface EnterpriseResenas extends Schema.Component {
  collectionName: 'components_enterprise_resenas';
  info: {
    displayName: 'Rese\u00F1as';
    description: '';
  };
  attributes: {
    resena: Attribute.Component<'enterprise.reviews', true>;
  };
}

export interface EnterpriseReviews extends Schema.Component {
  collectionName: 'components_enterprise_reviews';
  info: {
    displayName: 'CardRese\u00F1a';
    icon: 'envelop';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    comentario: Attribute.Text;
    nombre: Attribute.String;
    avatar: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface EnterpriseSolutions extends Schema.Component {
  collectionName: 'components_enterprise_solutions';
  info: {
    displayName: 'Soluciones';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    descripcion: Attribute.Text;
    card: Attribute.Component<'enterprise.cards', true>;
  };
}

export interface EnterpriseVideoSection extends Schema.Component {
  collectionName: 'components_enterprise_video_sections';
  info: {
    displayName: 'Video';
    description: '';
  };
  attributes: {
    video: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
  };
}

export interface WebBasicAcerca extends Schema.Component {
  collectionName: 'components_web_basic_acercas';
  info: {
    displayName: 'Acerca';
    description: '';
  };
  attributes: {
    tituloResaltado: Attribute.String;
    titulo: Attribute.String;
    caracteristicas: Attribute.Component<'web-basic.card-servicios', true>;
    descripcion: Attribute.Text;
  };
}

export interface WebBasicCaracteristicas extends Schema.Component {
  collectionName: 'components_web_basic_caracteristicas';
  info: {
    displayName: 'Caracteristicas';
  };
  attributes: {
    titulo: Attribute.String;
    descripcion: Attribute.Text;
    caracteristicas: Attribute.Component<'web-basic.card-caracteristica', true>;
    imagen: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface WebBasicCardCaracteristica extends Schema.Component {
  collectionName: 'components_web_basic_card_caracteristicas';
  info: {
    displayName: 'cardCaracteristica';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.String;
    sufijo: Attribute.String;
  };
}

export interface WebBasicCardPlanes extends Schema.Component {
  collectionName: 'components_web_basic_card_planes';
  info: {
    displayName: 'cardPlanes';
  };
  attributes: {
    titulo: Attribute.String;
    precio: Attribute.String;
    caracteristicas: Attribute.Component<'web-basic.lista', true>;
    resaltar: Attribute.Boolean;
  };
}

export interface WebBasicCardPregunta extends Schema.Component {
  collectionName: 'components_web_basic_card_preguntas';
  info: {
    displayName: 'cardPregunta';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.String;
  };
}

export interface WebBasicCardServicios extends Schema.Component {
  collectionName: 'components_web_basic_card_servicios';
  info: {
    displayName: 'cardServicios';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.Text;
    icono: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface WebBasicContacto extends Schema.Component {
  collectionName: 'components_web_basic_contactos';
  info: {
    displayName: 'Contacto';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    tituloResaltado: Attribute.String;
    caracteristicas: Attribute.Component<'web-basic.lista', true>;
    descripcion: Attribute.Text;
  };
}

export interface WebBasicEncabezado extends Schema.Component {
  collectionName: 'components_web_basic_encabezados';
  info: {
    displayName: 'Encabezado';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    tituloResaltado: Attribute.String;
    descripcion: Attribute.Text;
    primerBoton: Attribute.Component<'enterprise.button'>;
    segundoBoton: Attribute.Component<'enterprise.button'>;
    imagen: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface WebBasicFaq extends Schema.Component {
  collectionName: 'components_web_basic_faqs';
  info: {
    displayName: 'FAQ';
  };
  attributes: {
    preguntas: Attribute.Component<'web-basic.card-pregunta', true>;
  };
}

export interface WebBasicIcono extends Schema.Component {
  collectionName: 'components_web_basic_iconos';
  info: {
    displayName: 'icono';
    description: '';
  };
  attributes: {
    icono: Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
  };
}

export interface WebBasicLista extends Schema.Component {
  collectionName: 'components_web_basic_listas';
  info: {
    displayName: 'Lista';
  };
  attributes: {
    caracteristica: Attribute.String;
  };
}

export interface WebBasicPrecios extends Schema.Component {
  collectionName: 'components_web_basic_precios';
  info: {
    displayName: 'Precios';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.String;
    planes: Attribute.Component<'web-basic.card-planes', true>;
  };
}

export interface WebBasicServicios extends Schema.Component {
  collectionName: 'components_web_basic_servicios';
  info: {
    displayName: 'Servicios';
  };
  attributes: {
    card: Attribute.Component<'web-basic.card-servicios', true>;
  };
}

export interface WebBasicSociosIconos extends Schema.Component {
  collectionName: 'components_web_basic_socios_iconos';
  info: {
    displayName: 'SociosIconos';
    description: '';
  };
  attributes: {
    iconos: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
  };
}

export interface WebBasicUsuarios extends Schema.Component {
  collectionName: 'components_web_basic_usuarios';
  info: {
    displayName: 'Usuarios';
    description: '';
  };
  attributes: {
    titulo: Attribute.String;
    subTitulo: Attribute.String;
    descripcion: Attribute.Text;
    primerBoton: Attribute.Component<'enterprise.button'>;
    segundoBoton: Attribute.Component<'enterprise.button'>;
    iconos: Attribute.Media<'images' | 'files' | 'videos' | 'audios', true>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'about-side.card-equipo': AboutSideCardEquipo;
      'about-side.equipo': AboutSideEquipo;
      'about-side.estadistica': AboutSideEstadistica;
      'about-side.gallery': AboutSideGallery;
      'about-side.header': AboutSideHeader;
      'about-side.numeros': AboutSideNumeros;
      'about-side.story': AboutSideStory;
      'customers.card-relatos': CustomersCardRelatos;
      'customers.contacto': CustomersContacto;
      'customers.relatos': CustomersRelatos;
      'customers.titular': CustomersTitular;
      'enterprise.button': EnterpriseButton;
      'enterprise.cards': EnterpriseCards;
      'enterprise.compatibility-card': EnterpriseCompatibilityCard;
      'enterprise.compatibility': EnterpriseCompatibility;
      'enterprise.header': EnterpriseHeader;
      'enterprise.partners': EnterprisePartners;
      'enterprise.resenas': EnterpriseResenas;
      'enterprise.reviews': EnterpriseReviews;
      'enterprise.solutions': EnterpriseSolutions;
      'enterprise.video-section': EnterpriseVideoSection;
      'web-basic.acerca': WebBasicAcerca;
      'web-basic.caracteristicas': WebBasicCaracteristicas;
      'web-basic.card-caracteristica': WebBasicCardCaracteristica;
      'web-basic.card-planes': WebBasicCardPlanes;
      'web-basic.card-pregunta': WebBasicCardPregunta;
      'web-basic.card-servicios': WebBasicCardServicios;
      'web-basic.contacto': WebBasicContacto;
      'web-basic.encabezado': WebBasicEncabezado;
      'web-basic.faq': WebBasicFaq;
      'web-basic.icono': WebBasicIcono;
      'web-basic.lista': WebBasicLista;
      'web-basic.precios': WebBasicPrecios;
      'web-basic.servicios': WebBasicServicios;
      'web-basic.socios-iconos': WebBasicSociosIconos;
      'web-basic.usuarios': WebBasicUsuarios;
    }
  }
}

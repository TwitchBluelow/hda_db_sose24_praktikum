/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     15.05.2024 17:58:40                          */
/*==============================================================*/


DROP SCHEMA IF EXISTS STREAMING CASCADE;
CREATE SCHEMA IF NOT EXISTS STREAMING;
SET SEARCH_PATH TO STREAMING;


/*==============================================================*/
/* Table: Ausstrahlung                                          */
/*==============================================================*/
create table Ausstrahlung (
   serienname           VARCHAR(254)         not null,
   nummer               INT4                 not null,
   staffel              INT4                 not null,
   name                 VARCHAR(254)         not null,
   ausstrahlungsnummer  INT4                 not null,
   startzeit            Timestamp            not null,
   endzeit              Timestamp            not null,
   constraint PK_AUSSTRAHLUNG primary key (serienname, nummer, staffel, name, ausstrahlungsnummer)
);

/*==============================================================*/
/* Index: AUSSTRAHLUNG_PK                                       */
/*==============================================================*/
create unique index AUSSTRAHLUNG_PK on Ausstrahlung (
serienname,
nummer,
staffel,
name,
ausstrahlungsnummer
);

/*==============================================================*/
/* Index: BESTEHT_AUS_FK                                        */
/*==============================================================*/
create  index BESTEHT_AUS_FK on Ausstrahlung (
serienname,
nummer,
staffel
);

/*==============================================================*/
/* Index: STRAHLT_AUS_FK                                        */
/*==============================================================*/
create  index STRAHLT_AUS_FK on Ausstrahlung (
name
);

/*==============================================================*/
/* Table: Episode                                               */
/*==============================================================*/
create table Episode (
   serienname           VARCHAR(254)         not null,
   nummer               INT4                 not null,
   staffel              INT4                 not null,
   titel                VARCHAR(254)         not null,
   imdbrating           NUMERIC              null,
   constraint PK_EPISODE primary key (serienname, nummer, staffel)
);

/*==============================================================*/
/* Index: EPISODE_PK                                            */
/*==============================================================*/
create unique index EPISODE_PK on Episode (
serienname,
nummer,
staffel
);

/*==============================================================*/
/* Index: BESTEHT_AUS_FK2                                       */
/*==============================================================*/
create  index BESTEHT_AUS_FK2 on Episode (
serienname
);

/*==============================================================*/
/* Table: Kunde                                                 */
/*==============================================================*/
create table Kunde (
   typ                  VARCHAR(254)         not null,
   email                VARCHAR(254)         not null,
   constraint PK_KUNDE primary key (email)
);

/*==============================================================*/
/* Index: KUNDE_PK                                              */
/*==============================================================*/
create unique index KUNDE_PK on Kunde (
email
);

/*==============================================================*/
/* Table: Kunstler                                              */
/*==============================================================*/
create table Kunstler (
   id                   INT4                 not null,
   vorname              VARCHAR(254)         not null,
   nachname             VARCHAR(254)         not null,
   constraint PK_KUNSTLER primary key (id)
);

/*==============================================================*/
/* Index: KUNSTLER_PK                                           */
/*==============================================================*/
create unique index KUNSTLER_PK on Kunstler (
id
);

/*==============================================================*/
/* Table: Sender                                                */
/*==============================================================*/
create table Sender (
   name                 VARCHAR(254)         not null,
   constraint PK_SENDER primary key (name)
);

/*==============================================================*/
/* Index: SENDER_PK                                             */
/*==============================================================*/
create unique index SENDER_PK on Sender (
name
);

/*==============================================================*/
/* Table: Serie                                                 */
/*==============================================================*/
create table Serie (
   serienname           VARCHAR(254)         not null,
   id                   INT4                 not null,
   constraint PK_SERIE primary key (serienname)
);

/*==============================================================*/
/* Index: SERIE_PK                                              */
/*==============================================================*/
create unique index SERIE_PK on Serie (
serienname
);

/*==============================================================*/
/* Index: HAT_STOFFENTWICKLER_FK                                */
/*==============================================================*/
create  index HAT_STOFFENTWICKLER_FK on Serie (
id
);

/*==============================================================*/
/* Table: Streamingdienst                                       */
/*==============================================================*/
create table Streamingdienst (
   name                 VARCHAR(254)         not null,
   constraint PK_STREAMINGDIENST primary key (name)
);

/*==============================================================*/
/* Index: STREAMINGDIENST_PK                                    */
/*==============================================================*/
create unique index STREAMINGDIENST_PK on Streamingdienst (
name
);

/*==============================================================*/
/* Table: Vertrag                                               */
/*==============================================================*/
create table Vertrag (
   name                 VARCHAR(254)         not null,
   email                VARCHAR(254)         not null,
   monatspreis          NUMERIC              not null,
   vertragslaufzeit     DATE                 not null,
   constraint PK_VERTRAG primary key (name, email)
);

/*==============================================================*/
/* Index: VERTRAG_PK                                            */
/*==============================================================*/
create unique index VERTRAG_PK on Vertrag (
name,
email
);

/*==============================================================*/
/* Index: MACHT_VERTRAG_FK                                      */
/*==============================================================*/
create  index MACHT_VERTRAG_FK on Vertrag (
name
);

/*==============================================================*/
/* Index: MACHT_VERTRAG_FK2                                     */
/*==============================================================*/
create  index MACHT_VERTRAG_FK2 on Vertrag (
email
);

/*==============================================================*/
/* Table: bietet_an                                             */
/*==============================================================*/
create table bietet_an (
   name                 VARCHAR(254)         not null,
   serienname           VARCHAR(254)         not null,
   nummer               INT4                 not null,
   staffel              INT4                 not null,
   constraint PK_BIETET_AN primary key (serienname, name, nummer, staffel)
);

/*==============================================================*/
/* Index: BIETET_AN_PK                                          */
/*==============================================================*/
create unique index BIETET_AN_PK on bietet_an (
serienname,
name,
nummer,
staffel
);

/*==============================================================*/
/* Index: BIETET_AN_FK                                          */
/*==============================================================*/
create  index BIETET_AN_FK on bietet_an (
name
);

/*==============================================================*/
/* Index: BIETET_AN_FK2                                         */
/*==============================================================*/
create  index BIETET_AN_FK2 on bietet_an (
serienname,
nummer,
staffel
);

/*==============================================================*/
/* Table: hat_Hauptschauspieler                                 */
/*==============================================================*/
create table hat_Hauptschauspieler (
   serienname           VARCHAR(254)         not null,
   id                   INT4                 not null,
   constraint PK_HAT_HAUPTSCHAUSPIELER primary key (serienname, id)
);

/*==============================================================*/
/* Index: HAT_HAUPTSCHAUSPIELER_PK                              */
/*==============================================================*/
create unique index HAT_HAUPTSCHAUSPIELER_PK on hat_Hauptschauspieler (
serienname,
id
);

/*==============================================================*/
/* Index: HAT_HAUPTSCHAUSPIELER_FK                              */
/*==============================================================*/
create  index HAT_HAUPTSCHAUSPIELER_FK on hat_Hauptschauspieler (
serienname
);

/*==============================================================*/
/* Index: HAT_HAUPTSCHAUSPIELER_FK2                             */
/*==============================================================*/
create  index HAT_HAUPTSCHAUSPIELER_FK2 on hat_Hauptschauspieler (
id
);

alter table Ausstrahlung
   add constraint FK_AUSSTRAH_BESTEHT_A_EPISODE foreign key (serienname, nummer, staffel)
      references Episode (serienname, nummer, staffel)
      on delete cascade on update restrict;

alter table Ausstrahlung
   add constraint FK_AUSSTRAH_STRAHLT_A_SENDER foreign key (name)
      references Sender (name)
      on delete restrict on update restrict;

alter table Episode
   add constraint FK_EPISODE_BESTEHT_A_SERIE foreign key (serienname)
      references Serie (serienname)
      on delete cascade on update restrict;

alter table Serie
   add constraint FK_SERIE_HAT_STOFF_KUNSTLER foreign key (id)
      references Kunstler (id)
      on delete restrict on update restrict;

alter table Vertrag
   add constraint FK_VERTRAG_MACHT_VER_KUNDE foreign key (email)
      references Kunde (email)
      on delete restrict on update restrict;

alter table Vertrag
   add constraint FK_VERTRAG_MACHT_VER_STREAMIN foreign key (name)
      references Streamingdienst (name)
      on delete restrict on update restrict;

alter table bietet_an
   add constraint FK_BIETET_A_BIETET_AN_EPISODE foreign key (serienname, nummer, staffel)
      references Episode (serienname, nummer, staffel)
      on delete cascade on update restrict;

alter table bietet_an
   add constraint FK_BIETET_A_BIETET_AN_STREAMIN foreign key (name)
      references Streamingdienst (name)
      on delete restrict on update restrict;

alter table hat_Hauptschauspieler
   add constraint FK_HAT_HAUP_HAT_HAUPT_KUNSTLER foreign key (id)
      references Kunstler (id)
      on delete restrict on update restrict;

alter table hat_Hauptschauspieler
   add constraint FK_HAT_HAUP_HAT_HAUPT_SERIE foreign key (serienname)
      references Serie (serienname)
      on delete cascade on update restrict;


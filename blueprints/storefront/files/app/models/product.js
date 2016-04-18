import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  // Attributes
  name:         DS.attr('string'),
  description:  DS.attr('string'),
  price:        DS.attr('number'),
  displayPrice: DS.attr('string'),
  slug:         DS.attr('string'),

  // Relationships
  images:                  DS.hasMany('image'),
  variantsIncludingMaster: DS.hasMany('variant'),
  productProperties:       DS.hasMany('productProperty'),

  //Computed
  variants: Ember.computed('variantsIncludingMaster', function() {
    return this.get('variantsIncludingMaster').rejectBy('isMaster');
  }),

  masterVariant: Ember.computed('variantsIncludingMaster', function() {
    return this.get('variantsIncludingMaster').findBy('isMaster');
  })
});
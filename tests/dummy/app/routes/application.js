import Ember from 'ember';
const {inject: {service}} = Ember;
const msg = "The purchase-seminar ticket feature is not available; this is just a preview site, after all.";
const msg2 = "Email me at foxnewsnetwork@gmail.com if you folks like what you see!";
const Application = Ember.Route.extend({
  notify: service("notify"),
  actions: {
    endOfPreview () {
      this.get("notify").warning(msg);
      this.get("notify").info(msg2);
    }
  }
});

export default Application;
const fastify = require('fastify')
const fp = require('fastify-plugin');

const app = fastify();

function plugin(app) {
  app.register(require('fastify-cookie')); // $ Alert
  app.register(require('fastify-csrf'));
}
app.register(fp(plugin));

app.route({
  method: 'GET',
  path: '/getter',
  handler: async (req, reply) => {
    return 'hello';
  }
})

// unprotected route
app.route({
  method: 'POST',
  path: '/',
  handler: async (req, reply) => { // lacks CSRF protection
    req.session.blah;
    return req.body
  } // $ RelatedLocation
})


app.route({
  method: 'POST',
  path: '/',
  onRequest: app.csrfProtection,
  handler: async (req, reply) => { // OK - has CSRF protection
    return req.body
  }
})

//= require bootstrap_sb_admin_base_v2
//= require notifyjs
// require bootbox

//= require sweetalert2
//= require sweet-alert2-rails


// $.rails.allowAction = function(element) {
//   var message = element.attr('data-confirm');
//   console.log("LEGAL: "+ message);
//   if (!message) { return true; }

//   var opts = {
//     title: "Confirmação",
//     message: message,
//     buttons: {
//         confirm: {
//             label: 'Sim',
//             className: 'btn-success'
//         },
//         cancel: {
//             label: 'Não',
//             className: 'btn-danger'
//         }
//     },
//     callback: function(result) {
//       if (result) {
//         element.removeAttr('data-confirm');
//         element.trigger('click.rails')
//       }
//     }
//   };

//   bootbox.confirm(opts);

//   return false;
// }

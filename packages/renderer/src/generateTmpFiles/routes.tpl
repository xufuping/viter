{{ #dynamic }}
import { dynamic } from '@viter/renderer';
{{ /dynamic }}
{{ #imports }}
import React from 'react';
{{{ imports }}}
{{ /imports }}
{{ #modules }}
import {{ name }} from '{{{ path }}}';
{{ /modules }}

{{ #loadingComponent }}
import LoadingComponent from '{{{ loadingComponent }}}';
{{ /loadingComponent }}
import { useRoutes } from 'react-router-dom';
const config = {{#config}}{{{ config }}}{{/config}};
const Routes: React.FC = () => {
  return useRoutes(config);
};
export default Routes;

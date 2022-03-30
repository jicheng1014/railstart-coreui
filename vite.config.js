import { defineConfig } from 'vite'
import { resolve } from 'path'
import StimulusHMR from 'vite-plugin-stimulus-hmr'
import EnvironmentPlugin from 'vite-plugin-environment'
import FullReload from 'vite-plugin-full-reload'
import ViteRuby from 'vite-plugin-ruby'

export default defineConfig({
  plugins: [    
    StimulusHMR(),
    ViteRuby(),
    // FullReload(['config/routes.rb', 'app/views/**/*'], { delay: 500 })
    // EnvironmentPlugin(['API_KEY', 'DEBUG'])
  ],

  resolve: {
    alias: {
      '@src': resolve(__dirname, 'app/javascript'),
    },
  },
})

// https://vite-ruby.netlify.app/guide/plugins.html

// EnvironmentPlugin https://github.com/ElMassimo/vite-plugin-environment
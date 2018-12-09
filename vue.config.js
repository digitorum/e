module.exports = {
  configureWebpack: {
    entry: './src/main.coffee',
    module: {
      rules: [
        {
          test: /.coffee$/,
          loader: 'coffee-loader',
          options: {
            transpile: {
              presets: ['@babel/env']
            }
          }
        }
      ]
    }
  }
}
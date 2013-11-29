#global module:false
module.exports = (grunt) ->
  
  # Project configuration.
  grunt.initConfig
    
    # Metadata.
    pkg: grunt.file.readJSON("package.json")
    banner: "/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - " + "<%= grunt.template.today(\"yyyy-mm-dd\") %>\n" + "<%= pkg.homepage ? \"* \" + pkg.homepage + \"\\n\" : \"\" %>" + "* Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author.name %>;" + " Licensed <%= _.pluck(pkg.licenses, \"type\").join(\", \") %> */\n"
    
    # Task configuration.

    webfont:
      icons:
        src: 'src/*.svg'
        dest: 'fonts'
        destCss: 'stylesheets/fonts'
        options:
          stylesheet: 'scss'
          relativeFontPath: ''
          templateOptions:
            baseClass: 'af',
            classPrefix: 'af-',
            mixinPrefix: 'af-'
  # These plugins provide necessary tasks.
  grunt.loadNpmTasks "grunt-webfont"
  # Default task.
  grunt.registerTask "default", ["webfont"]
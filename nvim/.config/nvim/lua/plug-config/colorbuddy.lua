local Color, colors, Group, groups, styles = require('colorbuddy').setup()

Group.new('Function', colors.purple:, nil, styles.bold)
Group.new('Error', colors.red:light(), nil, styles.bold)

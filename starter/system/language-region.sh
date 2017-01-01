#!/usr/bin/env bash

###############################################################################
# Language & Region                                                           #
###############################################################################

# Prefered languages (in order of preference)
defaults write NSGlobalDomain AppleLanguages -array "en-US"

# Change first day of week (1 = Sunday, 2 = Monday)
defaults write NSGlobalDomain AppleFirstWeekday -dict "gregorian" "2"

# date string formats, 5 Aug 2012 and the like
defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "1" "y-MM-dd"
defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "2" "y-MM-dd"
defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "3" "d MMMM yyyy"
defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "4" "EEEE, d MMMM yyyy"

# 24-hour time is the only way to roll
defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "1" "hh:mm"
defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "2" "hh:mm:ss"
defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "3" "hh:mm:ss  z"
defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "4" "hh:mm:ss  ZZZZZ"

# Currency
# United States : `en_US@currency=USD`
# Great Britian : `en_GB@currency=EUR`
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"

# Measure Units
# `Inches` or `Centimeters`
defaults write NSGlobalDomain AppleMeasurementUnits -string "Inches"

# Force 12/24 hour time
#defaults write NSGlobalDomain AppleICUForce12HourTime -bool true
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true

# Set Metric Units
defaults write NSGlobalDomain AppleMetricUnits -bool true

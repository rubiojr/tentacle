# tentacle

Description goes here.

# Installation

* Fedora/RHEL

    yum install ruby-devel make gcc gcc-c++ rubygems libxml2-devel libxslt-devel git
    gem install tentacle

# Usage

**Print help**

    tentacle --help

**List available repos***
 
   tentacle available-repos

**Basic search**

    tentacle search ruby

Searches for package names matching ruby. Regexp may be used.

**Regexp search**

    tentacle search ^ruby-1.8.7

Searches for package names matching ^ruby-1.8.7

 
**Distro class search**
    
    tentacle search --distro-class rhel-5 ruby

Search for ruby packages in RHEL5 compatible repositories

**Repo search**
    
    tentacle search --repo-id rbel5-x86_64 ruby

Search for ruby packages in RBEL 5 repository. The list of available repo-ids is displayed with 'tentacle available-repos'

  
# Copyright

Copyright (c) 2011 Sergio Rubio. See LICENSE.txt for
further details.


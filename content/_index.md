---
# Leave the homepage title empty to use the site title
title: ''
date: 2025-9-17
type: landing

sections:
  - block: about.biography
    id: about
    content:
      title: Biography
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
  - block: skills
    content:
      title: Skills
      text: ''
      # Choose a user to display skills from (a folder name within `content/authors/`)
      username: admin
    design:
      columns: '1'
  - block: experience
    id: experience
    content:
      title: Experience
      # Date format for experience
      #   Refer to https://docs.hugoblox.com/customization/#date-format
      date_format: Jan 2006
      # Experiences.
      #   Add/remove as many `experience` items below as you like.
      #   Required fields are `title`, `company`, and `date_start`.
      #   Leave `date_end` empty if it's your current employer.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - title: Research Intern
          company: RAIDS(Research Group of AI for Industrial Digital Servitization)
          company_url: 'https://www.raids.group/'
          company_logo: org-ra
          location: The Hong Kong Polytechnic University,Hong Kong SAR
          date_start: '2025-09-17'
          date_end: ''
          description: |2-
        - title: Product Manager Intern
          company: MECH MIND
          company_url: 'https://www.mech-mind.com/'
          company_logo: org-mm
          location: Haidian,Beijing
          date_start: '2025-03-01'
          date_end: '2025-08-25'
          description: |2-
        - title: Development Engineer
          company: State Key Laboratory of Information Photonics and Optical Communications
          company_url: 'https://ipoc.bupt.edu.cn/index.htm'
          company_logo: org-by
          location: Beijing University of Posts and Telecommunications,Beijing
          date_start: '2024-07-01'
          date_end: '2025-01-30'
          description: |2-
        - title: Algorithm Engineer
          company: WU TONG BIG DATA
          company_url: 'https://bigdata.10086.cn/honghu/hhweb/#/home'
          company_logo: org-x
          location: China Mobile Communications Corporation,Beijing
          date_start: '2023-06-01'
          date_end: '2023-12-31'
          description:
    design:
      columns: '2'

  #- block: collection
  #  content:
  #    title: Recent Publications
  #    text: |-
  #      {{% callout note %}}
  #      Quickly discover relevant content by [filtering publications](./publication/).
  #      {{% /callout %}}
  #    filters:
  #      folders:
  #        - publication
  #      exclude_featured: true
  #  design:
   #   columns: '2'
   #   view: citation
#  - block: collection
#    id: Musik
#    content:
#      title: Musik
#      filters:
#        folders:
#          - event
#    design:
#      columns: '2'
#      view: compact
  - block: markdown
    id: gallery
    content:
      title: Gallery
      subtitle: ''
      text: |-
        {{< gallery album="demo" >}}
    design:
      columns: '1'
---

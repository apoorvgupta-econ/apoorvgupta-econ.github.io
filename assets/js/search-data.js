// get the ninja-keys element
const ninja = document.querySelector('ninja-keys');

// add the home and posts menu items
ninja.data = [{
    id: "nav-about",
    title: "about",
    section: "Navigation",
    handler: () => {
      window.location.href = "/";
    },
  },{id: "nav-research",
          title: "research",
          description: "Working papers and publications. Click &quot;Abs&quot; to expand abstracts.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/research/";
          },
        },{id: "nav-cv",
          title: "cv",
          description: "",
          section: "Navigation",
          handler: () => {
            window.location.href = "/cv/";
          },
        },{id: "news-pre-doc-opportunity-jon-zinman-and-i-are-hiring-a-pre-doctoral-research-fellow-to-work-with-us-on-projects-in-finance-financial-contracting-for-smes-consumer-credit-and-behavioral-economics-preferred-start-date-july-1-2027-applications-are-reviewed-on-a-rolling-basis-apply-here",
          title: 'Pre-Doc Opportunity: Jon Zinman and I are hiring a pre-doctoral research fellow to...',
          description: "",
          section: "News",},{id: "news-i-am-co-organizing-the-2026-edition-of-the-dartmouth-macro-mini-conference-with-nathan-zorzi-on-november-19-20-2026",
          title: 'I am co-organizing the 2026 edition of the Dartmouth Macro Mini-Conference with Nathan...',
          description: "",
          section: "News",},{
        id: 'social-email',
        title: 'email',
        section: 'Socials',
        handler: () => {
          window.open("mailto:%61%70%6F%6F%72%76.%67%75%70%74%61@%64%61%72%74%6D%6F%75%74%68.%65%64%75", "_blank");
        },
      },{
        id: 'social-scholar',
        title: 'Google Scholar',
        section: 'Socials',
        handler: () => {
          window.open("https://scholar.google.com/citations?user=9RIgHYwAAAAJ", "_blank");
        },
      },{
        id: 'social-linkedin',
        title: 'LinkedIn',
        section: 'Socials',
        handler: () => {
          window.open("https://www.linkedin.com/in/apoorv-gupta-82237113", "_blank");
        },
      },{
        id: 'social-work',
        title: 'Work',
        section: 'Socials',
        handler: () => {
          window.open("https://economics.dartmouth.edu/people/apoorv-gupta", "_blank");
        },
      },{
        id: 'social-github',
        title: 'GitHub',
        section: 'Socials',
        handler: () => {
          window.open("https://github.com/apoorvgupta-econ", "_blank");
        },
      },{
      id: 'light-theme',
      title: 'Change theme to light',
      description: 'Change the theme of the site to Light',
      section: 'Theme',
      handler: () => {
        setThemeSetting("light");
      },
    },
    {
      id: 'dark-theme',
      title: 'Change theme to dark',
      description: 'Change the theme of the site to Dark',
      section: 'Theme',
      handler: () => {
        setThemeSetting("dark");
      },
    },
    {
      id: 'system-theme',
      title: 'Use system default theme',
      description: 'Change the theme of the site to System Default',
      section: 'Theme',
      handler: () => {
        setThemeSetting("system");
      },
    },];

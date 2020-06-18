module.exports = {
  defaultBrowser: "Firefox Developer Edition",      
  handlers: [
    {
      match: finicky.matchDomains("open.spotify.com"),
      browser: "Spotify"
    },
    {
      match: /zoom.us\/j\//,
      browser: "us.zoom.xos"
    }
  ],
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: ({ url }) => ({
        ...url,
        protocol: "https"
      })
    },
    {    
      match: finicky.matchDomains(["trello.com"]),
      url: ({ url }) => ({
        ...url,
        protocol: "trello"
      })
    },
    {
      match: ({ url }) => (url.search.includes("utm_")),
      url({ url }) {
        const search = url.search.split('&').filter(part => !part.startsWith("utm_"));
        return {
          ...url,
          search: search.join('&')
        }
      }
    }
  ]
}

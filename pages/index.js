import fs from "fs";
import matter from "gray-matter";
import Head from "next/head";
import hljs from "highlight.js";
const md = require("markdown-it")({
  html: true,

  highlight: function (str, lang) {
    if (lang && hljs.getLanguage(lang)) {
      try {
        return (
          '<pre class="hljs"><code>' +
          hljs.highlight(str, { language: lang, ignoreIllegals: true }).value +
          "</code></pre>"
        );
      } catch (__) {}
    }

    return (
      '<pre class="hljs"><code>' + md.utils.escapeHtml(str) + "</code></pre>"
    );
  },
}).use(require("markdown-it-footnote"));

export async function getStaticProps() {
  const fileName = fs.readFileSync(`./pages-md/index.md`, "utf-8");
  const { data: frontmatter, content } = matter(fileName);
  return {
    props: {
      frontmatter,
      content,
    },
  };
}

export default function Homepage({ frontmatter, content }) {
  return (
    <>
      <Head>
        <meta property="og:title" content={frontmatter.meta_description} />
        <meta property="og:image" content={frontmatter.meta.image} />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content={frontmatter.meta_description} />
        <title>{frontmatter.title}</title>
      </Head>
      <div>
        <div dangerouslySetInnerHTML={{ __html: md.render(content) }} />
      </div>
    </>
  );
}

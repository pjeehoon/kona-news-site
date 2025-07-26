#!/bin/bash

echo "🧹 Cleaning kona-news-site repository..."
echo ""
echo "This will remove:"
echo "- All articles (articles/, smart_articles/)"
echo "- All images (images/)"
echo "- Analysis data (multi_article_analysis/)"
echo "- Admin data (admin/)"
echo "- Trend reports (trends/)"
echo "- Index files (index.html, topic_index.json)"
echo "- Output files (output/)"
echo ""
echo "This will keep:"
echo "- Static files (static/)"
echo "- Git repository (.git/)"
echo ""
read -p "Are you sure you want to clean the repository? (y/N) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Remove directories
    rm -rf articles/
    rm -rf smart_articles/
    rm -rf images/
    rm -rf multi_article_analysis/
    rm -rf admin/
    rm -rf trends/
    rm -rf output/
    
    # Remove files
    rm -f index.html
    rm -f topic_index.json
    
    # Create a minimal README
    cat > README.md << 'EOF'
# KONA News Site

This is the deployment repository for KONA (Korean News by AI).

Generated content will be automatically deployed here by GitHub Actions.

## Structure

- `static/` - Static assets (CSS, favicon)
- Articles and other content will be generated automatically

---

Powered by [KONA](https://github.com/pjeehoon/news-gen-private)
EOF

    echo ""
    echo "✅ Repository cleaned successfully!"
    echo ""
    echo "Only these files remain:"
    ls -la
    echo ""
    echo "Next steps:"
    echo "1. git add -A"
    echo "2. git commit -m 'Clean repository for fresh start'"
    echo "3. git push origin main"
else
    echo "❌ Cleaning cancelled."
fi